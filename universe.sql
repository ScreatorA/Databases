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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(60) NOT NULL,
    type character varying(20) NOT NULL,
    description text NOT NULL,
    mass_in_solar_masses numeric NOT NULL,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    type character varying(20) NOT NULL
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
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    type character varying(20) NOT NULL,
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
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    type character varying(20) NOT NULL,
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
    name character varying(60) NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    age_in_million_years integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    type character varying(20) NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 'Supermassive', 'At the center of the Milky Way.', 4000000, 26000, 1);
INSERT INTO public.black_hole VALUES (2, 'M87 Black Hole', 'Supermassive', 'First black hole ever imaged.', 6500000000, 53000000, 4);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 'Stellar-mass', 'First strong black hole candidate.', 21, 6000, 1);
INSERT INTO public.black_hole VALUES (4, 'TON 618', 'Supermassive', 'One of the most massive black holes.', 66000000000, 10400000000, 2);
INSERT INTO public.black_hole VALUES (5, 'V404 Cygni', 'Stellar-mass', 'X-ray binary black hole.', 9, 7800, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'Our home galaxy.', 13600, 0, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 'Nearest major galaxy.', 10000, 2500000, 'spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 'Third largest in Local Group.', 8000, 3000000, 'spiral');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', false, 'Supermassive black hole at center.', 13000, 53000000, 'elliptical');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', false, 'Famous interacting galaxy.', 5000, 23000000, 'spiral');
INSERT INTO public.galaxy VALUES (6, 'Sombrero', false, 'Unique bright central bulge.', 9000, 29000000, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', false, 'Earth’s only natural satellite.', 4500, 384400, 'Natural Satellite', 3);
INSERT INTO public.moon VALUES (22, 'Phobos', false, 'Smallest moon of Mars.', 4600, 9377, 'Natural Satellite', 4);
INSERT INTO public.moon VALUES (23, 'Deimos', false, 'Second moon of Mars.', 4600, 23460, 'Natural Satellite', 4);
INSERT INTO public.moon VALUES (24, 'Io', false, 'Most volcanically active moon.', 4600, 421700, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (25, 'Europa', false, 'Has a subsurface ocean.', 4600, 670900, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (26, 'Ganymede', false, 'Largest moon in the Solar System.', 4600, 1070400, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (27, 'Callisto', false, 'One of the most cratered moons.', 4600, 1882700, 'Natural Satellite', 5);
INSERT INTO public.moon VALUES (28, 'Titan', false, 'Thick atmosphere and liquid lakes.', 4600, 1221870, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (29, 'Enceladus', false, 'Has geysers of water ice.', 4600, 238000, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (30, 'Mimas', false, 'Has a giant impact crater.', 4600, 185539, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (31, 'Triton', false, 'Orbits Neptune in retrograde motion.', 4500, 354800, 'Natural Satellite', 8);
INSERT INTO public.moon VALUES (32, 'Charon', false, 'Largest moon of Pluto.', 4500, 19571, 'Natural Satellite', 7);
INSERT INTO public.moon VALUES (33, 'Oberon', false, 'Outer moon of Uranus.', 4500, 582600, 'Natural Satellite', 7);
INSERT INTO public.moon VALUES (34, 'Ariel', false, 'Brightest of Uranus’ major moons.', 4500, 191000, 'Natural Satellite', 7);
INSERT INTO public.moon VALUES (35, 'Miranda', false, 'Has extreme surface features.', 4500, 129390, 'Natural Satellite', 7);
INSERT INTO public.moon VALUES (36, 'Dione', false, 'Icy moon with canyons.', 4600, 377400, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (37, 'Rhea', false, 'Second largest moon of Saturn.', 4600, 527100, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (38, 'Iapetus', false, 'Half is bright, half is dark.', 4600, 3561300, 'Natural Satellite', 6);
INSERT INTO public.moon VALUES (39, 'Kepler Moon', false, 'Exomoon candidate.', 4000, 600000000, 'Exomoon', 10);
INSERT INTO public.moon VALUES (40, 'Gliese Moon', false, 'Potentially habitable exomoon.', 5000, 20000000, 'Exomoon', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', false, 'Smallest planet in the Solar System.', 4500, 57910000, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, 'Hottest planet with thick atmosphere.', 4500, 108200000, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Earth', true, 'Our home planet.', 4500, 0, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Mars', false, 'The Red Planet.', 4600, 225000000, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 'Largest planet in the Solar System.', 4600, 778500000, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Saturn', false, 'Famous for its rings.', 4600, 1433000000, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 'An ice giant with a tilted axis.', 4500, 2871000000, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (9, 'Neptune', false, 'Farthest planet from the Sun.', 4500, 4495000000, 'Ice Giant', 1);
INSERT INTO public.planet VALUES (10, 'Proxima b', false, 'Exoplanet orbiting Proxima Centauri.', 5000, 42400000, 'Exoplanet', 6);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', false, 'Exoplanet in the habitable zone.', 4000, 600000000, 'Exoplanet', 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', false, 'Potentially habitable exoplanet.', 5000, 20000000, 'Exoplanet', 4);
INSERT INTO public.planet VALUES (13, 'HD 209458b', false, 'First detected transiting exoplanet.', 4000, 150000000, 'Hot Jupiter', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 'Center of our solar system.', 4600, 0, 'main-sequence', 1);
INSERT INTO public.star VALUES (2, 'Sirius', false, 'Brightest star in the night sky.', 300, 8.6, 'main-sequence', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', false, 'A massive dying star.', 8, 642, 'red giant', 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', false, 'Closest star system.', 6000, 4.37, 'main-sequence', 1);
INSERT INTO public.star VALUES (5, 'Vega', false, 'Bright star in Lyra constellation.', 455, 25, 'main-sequence', 1);
INSERT INTO public.star VALUES (6, 'Rigel', false, 'Brightest star in Orion.', 8, 860, 'blue supergiant', 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

