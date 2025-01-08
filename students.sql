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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp (
    major_name text,
    course_name text,
    id integer NOT NULL
);


ALTER TABLE public.temp OWNER TO freecodecamp;

--
-- Name: temp_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_id_seq OWNER TO freecodecamp;

--
-- Name: temp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_id_seq OWNED BY public.temp.id;


--
-- Name: temp_students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.temp_students (
    first text,
    last text,
    major_name text,
    gpa_val character varying(10)
);


ALTER TABLE public.temp_students OWNER TO freecodecamp;

--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Name: temp id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp ALTER COLUMN id SET DEFAULT nextval('public.temp_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.courses (course_id, course) FROM stdin;
1	Data Structures and Algorithms
\.


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.majors (major_id, major) FROM stdin;
1	Database Administration
\.


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.majors_courses (major_id, course_id) FROM stdin;
1	1
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.students (student_id, first_name, last_name, major_id, gpa) FROM stdin;
\.


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.temp (major_name, course_name, id) FROM stdin;
Database Administration	Data Structures and Algorithms	1
Web Development	Web Programming	2
Database Administration	Database Systems	3
Data Science	Data Structures and Algorithms	4
Network Engineering	Computer Networks	5
Database Administration	SQL	6
Data Science	Machine Learning	7
Network Engineering	Computer Systems	8
Computer Programming	Computer Networks	9
Database Administration	Web Applications	10
Game Design	Artificial Intelligence	11
Data Science	Python	12
Computer Programming	Object-Oriented Programming	13
System Administration	Computer Systems	14
Game Design	Calculus	15
Web Development	Data Structures and Algorithms	16
Data Science	Calculus	17
Web Development	Object-Oriented Programming	18
Game Design	Game Architecture	19
System Administration	Computer Networks	20
Game Design	Algorithms	21
System Administration	UNIX	22
System Administration	Server Administration	23
Computer Programming	Computer Systems	24
Computer Programming	Python	25
Network Engineering	Network Security	26
Web Development	Web Applications	27
Network Engineering	Algorithms	28
\.


--
-- Data for Name: temp_students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.temp_students (first, last, major_name, gpa_val) FROM stdin;
Rhea	Kellems	Database Administration	2.5
Emma	Gilbert	null	null
Kimberly	Whitley	Web Development	3.8
Jimmy	Felipe	Database Administration	3.7
Kyle	Stimson	null	2.8
Casares	Hijo	Game Design	4.0
Noe	Savage	null	3.6
Sterling	Boss	Game Design	3.9
Brian	Davis	null	2.3
Kaija	Uronen	Game Design	3.7
Faye	Conn	Game Design	2.1
Efren	Reilly	Web Development	3.9
Danh	Nhung	null	2.4
Maxine	Hagenes	Database Administration	2.9
Larry	Saunders	Data Science	2.2
Karl	Kuhar	Web Development	null
Lieke	Hazenveld	Game Design	3.5
Obie	Hilpert	Web Development	null
Peter	Booysen	null	2.9
Nathan	Turner	Database Administration	3.3
Gerald	Osiki	Data Science	2.2
Vanya	Hassanah	Game Design	4.0
Roxelana	Florescu	Database Administration	3.2
Helene	Parker	Data Science	3.4
Mariana	Russel	Web Development	1.8
Ajit	Dhungel	null	3.0
Mehdi	Vandenberghe	Database Administration	1.9
Dejon	Howell	Web Development	4.0
Aliya	Gulgowski	System Administration	2.6
Ana	Tupajic	Data Science	3.1
Hugo	Duran	null	3.8
\.


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 1, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 2, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);


--
-- Name: temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_id_seq', 28, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: temp temp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp
    ADD CONSTRAINT temp_pkey PRIMARY KEY (id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

