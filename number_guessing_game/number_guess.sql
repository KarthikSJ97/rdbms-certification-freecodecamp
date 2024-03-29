--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: user_information; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_information (
    user_id integer NOT NULL,
    username character varying(60) NOT NULL,
    games_played integer NOT NULL,
    best_game integer NOT NULL
);


ALTER TABLE public.user_information OWNER TO freecodecamp;

--
-- Name: user_information_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_information_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_information_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_information_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_information_user_id_seq OWNED BY public.user_information.user_id;


--
-- Name: user_information user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_information ALTER COLUMN user_id SET DEFAULT nextval('public.user_information_user_id_seq'::regclass);


--
-- Data for Name: user_information; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: user_information_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_information_user_id_seq', 4, true);


--
-- Name: user_information user_information_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_information
    ADD CONSTRAINT user_information_pkey PRIMARY KEY (user_id);


--
-- Name: user_information user_information_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_information
    ADD CONSTRAINT user_information_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--