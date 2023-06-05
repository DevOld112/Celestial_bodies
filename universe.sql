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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(50)
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    class text,
    distance_from_milky_way_lightyear integer NOT NULL,
    active boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    galaxy_id integer,
    diameter_in_km integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    diameter_in_km numeric NOT NULL,
    galaxy_id integer,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    description text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Ceres', 'mas grande del cinturon con 940 km de dm');
INSERT INTO public.asteroids VALUES (2, 'Vesta', 'Segundo mas grande con 525km dm');
INSERT INTO public.asteroids VALUES (3, 'Pallas', 'Tercero  mas grande con 512km dm');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The Milky Way', 'Espiral', 0, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda I', 'Espiral', 23, true);
INSERT INTO public.galaxy VALUES (3, 'Gran Nube Magallanes', 'Espiral-Satelite', 11, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxia del Sombrero', 'Lenticular', 28, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Remolino', 'Espirtal', 26, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxia Del Triangulo', 'Triangular', 3, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Es conocido como el quinto satelite natural de la tierra', 1, 1, 3476);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Primer Satelite natural de Marte', 2, 1, 11267);
INSERT INTO public.moon VALUES (3, 'Deibos', 'Segundo Satelite natural de Marte', 2, 1, 5600);
INSERT INTO public.moon VALUES (4, 'IO', 'Una de las 79 lunas de Jupiter', 4, 1, 4100);
INSERT INTO public.moon VALUES (5, 'Europa', 'Una de las 79 lunas de Jupiter', 4, 1, 6100);
INSERT INTO public.moon VALUES (6, 'Euerkaa', 'Una de las 79 lunas de Jupiter', 4, 1, 7200);
INSERT INTO public.moon VALUES (7, 'Goku', 'Una de las 79 lunas de Jupiter', 4, 1, 85000);
INSERT INTO public.moon VALUES (8, 'NAMEK', 'Una de las 79 lunas de Jupiter', 4, 1, 25000);
INSERT INTO public.moon VALUES (9, 'Vangel', 'Una de las 79 lunas de Jupiter', 4, 1, 2500);
INSERT INTO public.moon VALUES (10, 'UB50', 'Una de las 79 lunas de Jupiter', 4, 1, 58600);
INSERT INTO public.moon VALUES (11, 'UB0201', 'Una de las 79 lunas de Jupiter', 4, 1, 8600);
INSERT INTO public.moon VALUES (12, 'Simon Bolivar', 'Una de las 79 lunas de Jupiter', 4, 1, 45800);
INSERT INTO public.moon VALUES (13, 'Miranda', 'Una de las 79 lunas de Jupiter', 4, 1, 44700);
INSERT INTO public.moon VALUES (14, 'Shield', 'Luna Escudo', 4, 1, 41700);
INSERT INTO public.moon VALUES (15, 'Titan', 'Luna principal de Saturno', 5, 1, 15806);
INSERT INTO public.moon VALUES (16, 'Rea', 'Luna de Saturno, es una de las 82 que posee', 5, 1, 14582);
INSERT INTO public.moon VALUES (17, 'Ra', 'Luna de Saturno, En honor a Ra', 5, 1, 11582);
INSERT INTO public.moon VALUES (18, 'Canus', 'Luna de Saturno', 5, 1, 1582);
INSERT INTO public.moon VALUES (19, 'Seiber', 'Luna de Saturno con extraña forma de sable', 5, 1, 1472);
INSERT INTO public.moon VALUES (20, 'Blank', 'Luna de Saturno con color blanco', 5, 1, 14782);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Hermoso Planeta con vida almacenada en su interior', 12742, 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 'Conocido como el planeta Rojo, con potencial para almacenar vida', 6779, 1, false);
INSERT INTO public.planet VALUES (3, 'Venus', 'Planeta pequeño y rocoso con atmosfera densa', 12104, 1, false);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'El planeta mas grande de la Via Lactea, es el escudo de la tierra', 139820, 1, false);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Un planeta gaseoso, cuenta con 7 anillos de asteroides girando a su alrededor', 116460, 1, false);
INSERT INTO public.planet VALUES (6, 'Messier', 'Planeta desconocido de la galaxia de Andromeda', 15854, 2, false);
INSERT INTO public.planet VALUES (7, 'PA-99-N2', 'Planeta extremadamente gigante de la galaxia de Andromeda0', 650087, 2, false);
INSERT INTO public.planet VALUES (8, 'Urano', 'El tercer planeta mas grande de la via Lactea', 50840, 1, false);
INSERT INTO public.planet VALUES (9, 'Neptuno', 'El planeta azul, su belleza es comparado con su mortalidad', 48500, 1, false);
INSERT INTO public.planet VALUES (10, 'Pluton', 'El planeta enano del sistema solar', 2370, 1, false);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Otro planeta enano del sistema solar', 946, 1, false);
INSERT INTO public.planet VALUES (12, 'Haumea', 'Otro planeta enano que gira en la orbita de Jupiter', 1646, 1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius', 250, 1, 'Una de las estrellas mas importantes y brillantes de la via lactea, se puede ver desde la tierra');
INSERT INTO public.star VALUES (2, 'arturo', 1600, 1, 'Perteneciente a la constelacion de Bootes, es una de las mas importantes que tenemos en la via Lactea');
INSERT INTO public.star VALUES (3, 'Vvictoria', 5000, 2, 'Mejor conocida como NOVA 1885 es una estrella que desaparecio en 1885');
INSERT INTO public.star VALUES (4, 'Rigel', 9, 3, 'Una supergigante azul perteneciente a la galaxia satelita de la gran nube magallanes, dicha estrella es joven y poderosa');
INSERT INTO public.star VALUES (5, 'Canopus', 10, 1, 'Es una estrella masiva a que posee 71 veces la masa del sol');
INSERT INTO public.star VALUES (6, 'Betelgeose', 10, 1, 'Perteneciente a la constelacion de Orion es una estrella gigante');


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: asteroids asteroids_asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_distance_from_milky_way_lightyear_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_milky_way_lightyear_key UNIQUE (distance_from_milky_way_lightyear);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_fk2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk2 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete