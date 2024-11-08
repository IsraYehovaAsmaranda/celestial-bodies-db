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
-- Name: action; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.action (
    action_id integer NOT NULL,
    name character varying(30),
    action_type character varying(30) NOT NULL
);


ALTER TABLE public.action OWNER TO freecodecamp;

--
-- Name: action_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.action_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_id_seq OWNER TO freecodecamp;

--
-- Name: action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.action_id_seq OWNED BY public.action.action_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    age_in_million_years integer,
    galaxy_type character varying(30),
    galaxy_unique integer NOT NULL
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
    name character varying(30),
    moon_type character varying(30),
    age_in_million_years integer,
    planet_id integer NOT NULL,
    moon_unique character varying(30)
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
    name character varying(30),
    age_in_million_years integer,
    distance_from_earth integer,
    weight numeric(10,1),
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30),
    galaxy_id integer NOT NULL,
    star_type character varying(30),
    age_in_million_years integer
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
-- Name: action action_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.action ALTER COLUMN action_id SET DEFAULT nextval('public.action_id_seq'::regclass);


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
-- Data for Name: action; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.action VALUES (9, 'Membuat Laporan', 'Pekerjaan');
INSERT INTO public.action VALUES (10, 'Menghadiri Rapat', 'Kegiatan');
INSERT INTO public.action VALUES (11, 'Mengirim Email', 'Komunikasi');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', 'a', 1, 'a', 1);
INSERT INTO public.galaxy VALUES (3, 'Galaxy A', 'A spiral galaxy in the Andromeda constellation', 100, 'Spiral', 13);
INSERT INTO public.galaxy VALUES (4, 'Galaxy B', 'An elliptical galaxy with minimal star formation', 1500, 'Elliptical', 2);
INSERT INTO public.galaxy VALUES (5, 'Galaxy C', 'A dwarf galaxy located near the Milky Way', 250, 'Dwarf', 3);
INSERT INTO public.galaxy VALUES (6, 'Galaxy D', 'An irregular galaxy without a defined shape', 800, 'Irregular', 4);
INSERT INTO public.galaxy VALUES (7, 'Galaxy E', 'A barred spiral galaxy with a prominent bar structure', 1100, 'Barred Spiral', 5);
INSERT INTO public.galaxy VALUES (8, 'Galaxy F', 'A galaxy rich in dark matter and gas', 900, 'Dark Matter Rich', 6);
INSERT INTO public.galaxy VALUES (9, 'Galaxy G', 'A protogalaxy in its early stages of formation', 5000, 'Proto', 7);
INSERT INTO public.galaxy VALUES (10, 'Galaxy H', 'A peculiar galaxy with unusual structure', 3200, 'Peculiar', 8);
INSERT INTO public.galaxy VALUES (11, 'Galaxy I', 'A ring galaxy with a ring-shaped structure', 280, 'Ring', 9);
INSERT INTO public.galaxy VALUES (12, 'Galaxy J', 'A galaxy experiencing rapid star formation', 200, 'Starburst', 10);
INSERT INTO public.galaxy VALUES (13, 'Galaxy K', 'A lenticular galaxy with a combination of spiral and elliptical features', 1400, 'Lenticular', 11);
INSERT INTO public.galaxy VALUES (14, 'Galaxy L', 'A galaxy located in a cluster, interacting with neighbors', 1600, 'Cluster', 12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 'Terrestrial', 5, 37, 'Earth I');
INSERT INTO public.moon VALUES (22, 'Phobos', 'Martian', 5, 38, 'Mars I');
INSERT INTO public.moon VALUES (23, 'Deimos', 'Martian', 5, 38, 'Mars II');
INSERT INTO public.moon VALUES (24, 'Ganymede', 'Galilean', 4, 39, 'Jupiter I');
INSERT INTO public.moon VALUES (25, 'Callisto', 'Galilean', 5, 39, 'Jupiter II');
INSERT INTO public.moon VALUES (26, 'Io', 'Galilean', 5, 39, 'Jupiter III');
INSERT INTO public.moon VALUES (27, 'Europa', 'Galilean', 4, 39, 'Jupiter IV');
INSERT INTO public.moon VALUES (28, 'Titan', 'Saturnian', 5, 40, 'Saturn VI');
INSERT INTO public.moon VALUES (29, 'Rhea', 'Saturnian', 4, 40, 'Saturn V');
INSERT INTO public.moon VALUES (30, 'Iapetus', 'Saturnian', 5, 40, 'Saturn III');
INSERT INTO public.moon VALUES (31, 'Dione', 'Saturnian', 4, 40, 'Saturn IV');
INSERT INTO public.moon VALUES (32, 'Mimas', 'Saturnian', 5, 40, 'Saturn I');
INSERT INTO public.moon VALUES (33, 'Enceladus', 'Saturnian', 1, 40, 'Saturn II');
INSERT INTO public.moon VALUES (34, 'Miranda', 'Uranian', 1, 41, 'Uranus V');
INSERT INTO public.moon VALUES (35, 'Oberon', 'Uranian', 5, 41, 'Uranus IV');
INSERT INTO public.moon VALUES (36, 'Titania', 'Uranian', 5, 41, 'Uranus III');
INSERT INTO public.moon VALUES (37, 'Umbriel', 'Uranian', 5, 41, 'Uranus II');
INSERT INTO public.moon VALUES (38, 'Ariel', 'Uranian', 5, 41, 'Uranus I');
INSERT INTO public.moon VALUES (39, 'Triton', 'Neptunian', 4, 42, 'Neptune I');
INSERT INTO public.moon VALUES (40, 'Charon', 'Plutonian', 5, 43, 'Pluto I');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'Planet A', 4500, 5000, 5.9, true, true, 15);
INSERT INTO public.planet VALUES (38, 'Planet B', 3000, 10000, 0.7, false, true, 16);
INSERT INTO public.planet VALUES (39, 'Planet C', 1200, 20000, 4.3, false, true, 17);
INSERT INTO public.planet VALUES (40, 'Planet D', 500, 15000, 2.5, true, false, 18);
INSERT INTO public.planet VALUES (41, 'Planet E', 7000, 25000, 8.1, false, true, 20);
INSERT INTO public.planet VALUES (42, 'Planet F', 2000, 18000, 3.9, true, false, 21);
INSERT INTO public.planet VALUES (43, 'Planet G', 3000, 3000, 1.1, false, true, 22);
INSERT INTO public.planet VALUES (44, 'Planet H', 1000, 12000, 5.4, true, true, 23);
INSERT INTO public.planet VALUES (45, 'Planet I', 4000, 22000, 9.8, false, true, 24);
INSERT INTO public.planet VALUES (46, 'Planet J', 3500, 9000, 7.6, true, true, 25);
INSERT INTO public.planet VALUES (47, 'Planet K', 2800, 50000, 6.3, false, true, 26);
INSERT INTO public.planet VALUES (48, 'Planet L', 600, 45000, 2.2, false, true, 28);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (15, 'Star A', 1, 'Main Sequence', 4500);
INSERT INTO public.star VALUES (16, 'Star B', 3, 'Red Giant', 12000);
INSERT INTO public.star VALUES (17, 'Star C', 4, 'White Dwarf', 13000);
INSERT INTO public.star VALUES (18, 'Star D', 5, 'Neutron Star', 200);
INSERT INTO public.star VALUES (19, 'Star E', 6, 'Supergiant', 8000);
INSERT INTO public.star VALUES (20, 'Star F', 7, 'Brown Dwarf', 1000);
INSERT INTO public.star VALUES (21, 'Star G', 8, 'Protostar', 10);
INSERT INTO public.star VALUES (22, 'Star H', 9, 'Wolf-Rayet', 5000);
INSERT INTO public.star VALUES (23, 'Star I', 10, 'T Tauri', 100);
INSERT INTO public.star VALUES (24, 'Star J', 11, 'Hypergiant', 9000);
INSERT INTO public.star VALUES (25, 'Star K', 12, 'Subgiant', 6000);
INSERT INTO public.star VALUES (26, 'Star L', 13, 'Carbon Star', 7000);
INSERT INTO public.star VALUES (28, 'HALO', 14, 'none', 11000);


--
-- Name: action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.action_id_seq', 11, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 28, true);


--
-- Name: action action_action_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.action
    ADD CONSTRAINT action_action_type_key UNIQUE (action_type);


--
-- Name: action action_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.action
    ADD CONSTRAINT action_pkey PRIMARY KEY (action_id);


--
-- Name: galaxy galaxy_galaxy_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_unique_key UNIQUE (galaxy_unique);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_unique UNIQUE (moon_unique);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

