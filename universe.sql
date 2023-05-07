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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: explore; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explore (
    explore_id integer NOT NULL,
    name character varying(30) NOT NULL,
    time_use_in_years integer
);


ALTER TABLE public.explore OWNER TO freecodecamp;

--
-- Name: explore_explore_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.explore_explore_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.explore_explore_id_seq OWNER TO freecodecamp;

--
-- Name: explore_explore_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.explore_explore_id_seq OWNED BY public.explore.explore_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(20),
    age_in_millions_of_years numeric,
    has_a_nearby_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_water boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    number_of_moons integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(15),
    number_of_planets integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: explore explore_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore ALTER COLUMN explore_id SET DEFAULT nextval('public.explore_explore_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: explore; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explore VALUES (1, 'Not explore yet', 10);
INSERT INTO public.explore VALUES (2, 'During explore', 5);
INSERT INTO public.explore VALUES (3, 'Explored', 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Blue_Eye', 'Spiral', 9999, false);
INSERT INTO public.galaxy VALUES (2, 'Black_Berries', 'Elliptical', 500, true);
INSERT INTO public.galaxy VALUES (3, 'Lonesome', 'Irregular', 32, false);
INSERT INTO public.galaxy VALUES (4, 'Lollipop', 'Spiral', 15, false);
INSERT INTO public.galaxy VALUES (5, 'Red_Nirvana', 'Elliptical', 300, true);
INSERT INTO public.galaxy VALUES (6, 'Maverick_Duck', 'Peculiar', 27, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mono', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Di', true, true, 1);
INSERT INTO public.moon VALUES (3, 'Tri', true, true, 1);
INSERT INTO public.moon VALUES (4, 'Tetra', true, true, 1);
INSERT INTO public.moon VALUES (5, 'Penta', true, true, 1);
INSERT INTO public.moon VALUES (6, 'Hexa', true, true, 1);
INSERT INTO public.moon VALUES (7, 'Hepta', true, true, 1);
INSERT INTO public.moon VALUES (8, 'Dustroid', false, false, 2);
INSERT INTO public.moon VALUES (9, 'Flamoid', false, false, 2);
INSERT INTO public.moon VALUES (10, 'Aquaroid', false, true, 2);
INSERT INTO public.moon VALUES (11, 'Breezoid', false, true, 2);
INSERT INTO public.moon VALUES (12, 'Shina', true, false, 3);
INSERT INTO public.moon VALUES (13, 'Darken', false, true, 3);
INSERT INTO public.moon VALUES (14, 'Blood', true, true, 6);
INSERT INTO public.moon VALUES (15, 'Adsorbius', true, true, 7);
INSERT INTO public.moon VALUES (17, 'Emittius', true, true, 7);
INSERT INTO public.moon VALUES (18, 'Magmamania', true, false, 8);
INSERT INTO public.moon VALUES (19, 'Myraid', true, true, 10);
INSERT INTO public.moon VALUES (20, 'Vibrant', true, false, 10);
INSERT INTO public.moon VALUES (21, 'Kurose', false, false, 18);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'Extremist', 'Full of magma and water', false, 0, 2);
INSERT INTO public.planet VALUES (5, 'Psyche', 'Plasma environment with mystertios life forms', true, 0, 2);
INSERT INTO public.planet VALUES (6, 'Carmine', 'Full of red sand but not hot', true, 1, 4);
INSERT INTO public.planet VALUES (7, 'Verdant', 'Full of tree with nice weather', true, 2, 4);
INSERT INTO public.planet VALUES (8, 'Indigo', 'Mostly covered with water and ice', true, 1, 4);
INSERT INTO public.planet VALUES (9, 'Chrome', 'Lots of metal can be found here', true, 0, 4);
INSERT INTO public.planet VALUES (10, 'Violeta', 'Balanced environment with mostly violet tree and flower', true, 2, 4);
INSERT INTO public.planet VALUES (11, 'H1', 'Full of fake valuable but harsh environment', true, 0, 5);
INSERT INTO public.planet VALUES (12, 'H2', 'Nothing much here, just near H1 and barely alive', true, 0, 5);
INSERT INTO public.planet VALUES (13, 'H3', 'Some legendary treasures are belived to be hidden in here', true, 0, 5);
INSERT INTO public.planet VALUES (14, 'H4', 'Full of horrible creatures', true, 0, 5);
INSERT INTO public.planet VALUES (15, 'H5', 'Weather changes every 5 minutes', true, 0, 5);
INSERT INTO public.planet VALUES (16, 'H6', 'Higher life form with mysterious culture is hidden here', true, 0, 5);
INSERT INTO public.planet VALUES (17, 'H7', 'We can contact people there but everybody declined to come back when reach there', true, 0, 5);
INSERT INTO public.planet VALUES (18, 'Infigal', 'Almost impossible to arrive, only one living thing live here', true, 1, 6);
INSERT INTO public.planet VALUES (1, 'Alpha', 'The biggest planet', true, 7, 1);
INSERT INTO public.planet VALUES (2, 'Beta', 'The 2nd biggest planet', true, 4, 1);
INSERT INTO public.planet VALUES (3, 'Gamma', 'The 3rd biggest planet', true, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sapphire', 'Blue', 3, 1);
INSERT INTO public.star VALUES (2, 'Onyx', 'Black', 2, 2);
INSERT INTO public.star VALUES (3, 'NEET', 'Gray', 0, 3);
INSERT INTO public.star VALUES (4, 'Y2K_Adolescence', 'Rainbow', 5, 4);
INSERT INTO public.star VALUES (5, 'Purgitarious', 'Crimson', 7, 5);
INSERT INTO public.star VALUES (6, 'Zero', 'Unidentified', 1, 6);


--
-- Name: explore_explore_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.explore_explore_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: explore explore_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore
    ADD CONSTRAINT explore_name_key UNIQUE (name);


--
-- Name: explore explore_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore
    ADD CONSTRAINT explore_pkey PRIMARY KEY (explore_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_ref; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_ref FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_start_ref; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_start_ref FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_ref; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_ref FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

