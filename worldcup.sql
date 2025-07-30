--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-29 20:49:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4911 (class 1262 OID 16388)
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE worldcup OWNER TO postgres;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 218 (class 1259 OID 16427)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16445)
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.games_game_id_seq OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 0)
-- Dependencies: 220
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- TOC entry 217 (class 1259 OID 16424)
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16430)
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teams_team_id_seq OWNER TO postgres;

--
-- TOC entry 4913 (class 0 OID 0)
-- Dependencies: 219
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- TOC entry 4748 (class 2604 OID 16446)
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- TOC entry 4747 (class 2604 OID 16431)
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- TOC entry 4903 (class 0 OID 16427)
-- Dependencies: 218
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 14, 7, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 16, 17, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 7, 17, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 14, 16, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 7, 19, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 17, 9, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 16, 20, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 14, 3, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 17, 2, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 9, 6, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 16, 22, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 20, 13, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 7, 15, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 19, 24, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 3, 1, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 14, 5, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 11, 5, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 23, 20, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 5, 23, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 11, 20, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 23, 8, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 5, 16, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 20, 2, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 11, 14, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 20, 18, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 3, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 14, 10, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 11, 21, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 23, 13, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 8, 12, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 5, 6, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 16, 4, 2, 1);


--
-- TOC entry 4902 (class 0 OID 16424)
-- Dependencies: 217
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teams VALUES (1, 'Portugal');
INSERT INTO public.teams VALUES (2, 'Colombia');
INSERT INTO public.teams VALUES (3, 'Uruguay');
INSERT INTO public.teams VALUES (4, 'United States');
INSERT INTO public.teams VALUES (5, 'Argentina');
INSERT INTO public.teams VALUES (6, 'Switzerland');
INSERT INTO public.teams VALUES (7, 'Croatia');
INSERT INTO public.teams VALUES (8, 'Costa Rica');
INSERT INTO public.teams VALUES (9, 'Sweden');
INSERT INTO public.teams VALUES (10, 'Nigeria');
INSERT INTO public.teams VALUES (11, 'Germany');
INSERT INTO public.teams VALUES (12, 'Greece');
INSERT INTO public.teams VALUES (13, 'Mexico');
INSERT INTO public.teams VALUES (14, 'France');
INSERT INTO public.teams VALUES (15, 'Denmark');
INSERT INTO public.teams VALUES (16, 'Belgium');
INSERT INTO public.teams VALUES (17, 'England');
INSERT INTO public.teams VALUES (18, 'Chile');
INSERT INTO public.teams VALUES (19, 'Russia');
INSERT INTO public.teams VALUES (20, 'Brazil');
INSERT INTO public.teams VALUES (21, 'Algeria');
INSERT INTO public.teams VALUES (22, 'Japan');
INSERT INTO public.teams VALUES (23, 'Netherlands');
INSERT INTO public.teams VALUES (24, 'Spain');


--
-- TOC entry 4914 (class 0 OID 0)
-- Dependencies: 220
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- TOC entry 4915 (class 0 OID 0)
-- Dependencies: 219
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- TOC entry 4754 (class 2606 OID 16448)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- TOC entry 4750 (class 2606 OID 16435)
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- TOC entry 4752 (class 2606 OID 16433)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- TOC entry 4755 (class 2606 OID 16462)
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- TOC entry 4756 (class 2606 OID 16457)
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


-- Completed on 2025-07-29 20:49:39

--
-- PostgreSQL database dump complete
--

