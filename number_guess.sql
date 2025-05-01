--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_to_guess integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 802, 803, 13);
INSERT INTO public.games VALUES (17, 217, 218, 14);
INSERT INTO public.games VALUES (18, 940, 943, 13);
INSERT INTO public.games VALUES (19, 284, 286, 13);
INSERT INTO public.games VALUES (20, 442, 443, 13);
INSERT INTO public.games VALUES (21, 423, 424, 16);
INSERT INTO public.games VALUES (22, 936, 937, 17);
INSERT INTO public.games VALUES (23, 29, 32, 16);
INSERT INTO public.games VALUES (24, 366, 368, 16);
INSERT INTO public.games VALUES (25, 508, 509, 16);
INSERT INTO public.games VALUES (26, 640, 641, 18);
INSERT INTO public.games VALUES (27, 435, 436, 19);
INSERT INTO public.games VALUES (28, 719, 722, 18);
INSERT INTO public.games VALUES (29, 631, 633, 18);
INSERT INTO public.games VALUES (30, 632, 633, 18);
INSERT INTO public.games VALUES (31, 1, 2, 20);
INSERT INTO public.games VALUES (32, 949, 950, 21);
INSERT INTO public.games VALUES (33, 989, 992, 20);
INSERT INTO public.games VALUES (34, 172, 174, 20);
INSERT INTO public.games VALUES (35, 613, 614, 20);
INSERT INTO public.games VALUES (36, 592, 593, 22);
INSERT INTO public.games VALUES (37, 178, 179, 23);
INSERT INTO public.games VALUES (38, 789, 792, 22);
INSERT INTO public.games VALUES (39, 797, 799, 22);
INSERT INTO public.games VALUES (40, 155, 156, 22);
INSERT INTO public.games VALUES (41, 690, 691, 24);
INSERT INTO public.games VALUES (42, 330, 331, 25);
INSERT INTO public.games VALUES (43, 535, 538, 24);
INSERT INTO public.games VALUES (44, 840, 842, 24);
INSERT INTO public.games VALUES (45, 986, 987, 24);
INSERT INTO public.games VALUES (46, 640, 4, 27);
INSERT INTO public.games VALUES (47, 762, 763, 28);
INSERT INTO public.games VALUES (48, 969, 970, 28);
INSERT INTO public.games VALUES (49, 500, 501, 29);
INSERT INTO public.games VALUES (50, 902, 903, 29);
INSERT INTO public.games VALUES (51, 878, 881, 28);
INSERT INTO public.games VALUES (52, 985, 987, 28);
INSERT INTO public.games VALUES (53, 315, 316, 28);
INSERT INTO public.games VALUES (54, 119, 120, 30);
INSERT INTO public.games VALUES (55, 246, 247, 31);
INSERT INTO public.games VALUES (56, 220, 223, 30);
INSERT INTO public.games VALUES (57, 978, 980, 30);
INSERT INTO public.games VALUES (58, 855, 856, 30);
INSERT INTO public.games VALUES (59, 961, 962, 32);
INSERT INTO public.games VALUES (60, 671, 672, 32);
INSERT INTO public.games VALUES (61, 371, 372, 33);
INSERT INTO public.games VALUES (62, 812, 813, 33);
INSERT INTO public.games VALUES (63, 539, 542, 32);
INSERT INTO public.games VALUES (64, 566, 568, 32);
INSERT INTO public.games VALUES (65, 402, 403, 32);
INSERT INTO public.games VALUES (66, 36, 37, 34);
INSERT INTO public.games VALUES (67, 111, 112, 34);
INSERT INTO public.games VALUES (68, 671, 672, 35);
INSERT INTO public.games VALUES (69, 350, 351, 35);
INSERT INTO public.games VALUES (70, 75, 78, 34);
INSERT INTO public.games VALUES (71, 774, 776, 34);
INSERT INTO public.games VALUES (72, 243, 244, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (13, 'user_1746133535858');
INSERT INTO public.users VALUES (14, 'user_1746133535857');
INSERT INTO public.users VALUES (15, 'mini');
INSERT INTO public.users VALUES (16, 'user_1746133779425');
INSERT INTO public.users VALUES (17, 'user_1746133779424');
INSERT INTO public.users VALUES (18, 'user_1746134110149');
INSERT INTO public.users VALUES (19, 'user_1746134110148');
INSERT INTO public.users VALUES (20, 'user_1746134121696');
INSERT INTO public.users VALUES (21, 'user_1746134121695');
INSERT INTO public.users VALUES (22, 'user_1746134218415');
INSERT INTO public.users VALUES (23, 'user_1746134218414');
INSERT INTO public.users VALUES (24, 'user_1746134717931');
INSERT INTO public.users VALUES (25, 'user_1746134717930');
INSERT INTO public.users VALUES (26, 'hi');
INSERT INTO public.users VALUES (27, 'yo');
INSERT INTO public.users VALUES (28, 'user_1746135062842');
INSERT INTO public.users VALUES (29, 'user_1746135062841');
INSERT INTO public.users VALUES (30, 'user_1746135122668');
INSERT INTO public.users VALUES (31, 'user_1746135122667');
INSERT INTO public.users VALUES (32, 'user_1746135154624');
INSERT INTO public.users VALUES (33, 'user_1746135154623');
INSERT INTO public.users VALUES (34, 'user_1746135280995');
INSERT INTO public.users VALUES (35, 'user_1746135280994');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

