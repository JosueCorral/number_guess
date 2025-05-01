#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"
#generate number
NUMBER=$((RANDOM % 1000 + 1))

echo "Enter your username:"
read INPUT_NAME
USER=$($PSQL "select user_id from users WHERE name='$INPUT_NAME';")


if [[ -z $USER ]]
then
#Insert new user
INSERT_USER=$($PSQL "INSERT INTO users(name) VALUES ('$INPUT_NAME');")
echo "Welcome, $INPUT_NAME! It looks like this is your first time here."
USER=$($PSQL "select user_id from users WHERE name='$INPUT_NAME';")
else
#get data
WELCOME_BACK=$($PSQL "SELECT name, COUNT(game_id), MIN(number_of_guesses) FROM games INNER JOIN users ON games.user_id=users.user_id WHERE name='$INPUT_NAME' GROUP BY name;")
  
  echo "$WELCOME_BACK" | while read NAME BAR COUNT BAR N_GUESSES
  do

  echo "Welcome back, $NAME! You have played $COUNT games, and your best game took $N_GUESSES guesses."
   

 done

fi
echo "Guess the secret number between 1 and 1000:"
I=0
MAIN_MENU(){
  
read INPUT_NUMBER
((I++)) #add one
if [[ ! $INPUT_NUMBER =~ ^[0-9]+$ ]]
    then
    echo "That is not an integer, guess again:"
    MAIN_MENU
    else

      if [[ $INPUT_NUMBER != $NUMBER ]]
      then
        
        if [[ $INPUT_NUMBER -gt $NUMBER ]]
          then
          echo "It's lower than that, guess again:"      
           MAIN_MENU
        else
           echo "It's higher than that, guess again:"   
           MAIN_MENU
       fi

      else
        INSERT_RECORD=$($PSQL "INSERT INTO games(number_to_guess, number_of_guesses, user_id) VALUES ($NUMBER,$I,$USER);")

        echo "You guessed it in $I tries. The secret number was $NUMBER. Nice job!"

      fi

fi

}

MAIN_MENU
