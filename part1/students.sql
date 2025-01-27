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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
    gpa_val character varying(10),
    gpa numeric(2,1),
    tsid integer NOT NULL
);


ALTER TABLE public.temp_students OWNER TO freecodecamp;

--
-- Name: temp_students_tsid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.temp_students_tsid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temp_students_tsid_seq OWNER TO freecodecamp;

--
-- Name: temp_students_tsid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.temp_students_tsid_seq OWNED BY public.temp_students.tsid;


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
-- Name: temp_students tsid; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp_students ALTER COLUMN tsid SET DEFAULT nextval('public.temp_students_tsid_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (23, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (24, 'Web Programming');
INSERT INTO public.courses VALUES (25, 'Database Systems');
INSERT INTO public.courses VALUES (26, 'Computer Networks');
INSERT INTO public.courses VALUES (27, 'SQL');
INSERT INTO public.courses VALUES (28, 'Machine Learning');
INSERT INTO public.courses VALUES (29, 'Computer Systems');
INSERT INTO public.courses VALUES (30, 'Web Applications');
INSERT INTO public.courses VALUES (31, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (32, 'Python');
INSERT INTO public.courses VALUES (33, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (34, 'Calculus');
INSERT INTO public.courses VALUES (35, 'Game Architecture');
INSERT INTO public.courses VALUES (36, 'Algorithms');
INSERT INTO public.courses VALUES (37, 'UNIX');
INSERT INTO public.courses VALUES (38, 'Server Administration');
INSERT INTO public.courses VALUES (39, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (37, 'Database Administration');
INSERT INTO public.majors VALUES (38, 'Web Development');
INSERT INTO public.majors VALUES (39, 'Data Science');
INSERT INTO public.majors VALUES (40, 'Network Engineering');
INSERT INTO public.majors VALUES (41, 'Computer Programming');
INSERT INTO public.majors VALUES (42, 'Game Design');
INSERT INTO public.majors VALUES (43, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (37, 23);
INSERT INTO public.majors_courses VALUES (38, 24);
INSERT INTO public.majors_courses VALUES (37, 25);
INSERT INTO public.majors_courses VALUES (39, 23);
INSERT INTO public.majors_courses VALUES (40, 26);
INSERT INTO public.majors_courses VALUES (37, 27);
INSERT INTO public.majors_courses VALUES (39, 28);
INSERT INTO public.majors_courses VALUES (40, 29);
INSERT INTO public.majors_courses VALUES (41, 26);
INSERT INTO public.majors_courses VALUES (37, 30);
INSERT INTO public.majors_courses VALUES (42, 31);
INSERT INTO public.majors_courses VALUES (39, 32);
INSERT INTO public.majors_courses VALUES (41, 33);
INSERT INTO public.majors_courses VALUES (43, 29);
INSERT INTO public.majors_courses VALUES (42, 34);
INSERT INTO public.majors_courses VALUES (38, 23);
INSERT INTO public.majors_courses VALUES (39, 34);
INSERT INTO public.majors_courses VALUES (38, 33);
INSERT INTO public.majors_courses VALUES (42, 35);
INSERT INTO public.majors_courses VALUES (43, 26);
INSERT INTO public.majors_courses VALUES (42, 36);
INSERT INTO public.majors_courses VALUES (43, 37);
INSERT INTO public.majors_courses VALUES (43, 38);
INSERT INTO public.majors_courses VALUES (41, 29);
INSERT INTO public.majors_courses VALUES (41, 32);
INSERT INTO public.majors_courses VALUES (40, 39);
INSERT INTO public.majors_courses VALUES (38, 30);
INSERT INTO public.majors_courses VALUES (40, 36);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (7, 'Rhea', 'Kellems', 37, 2.5);
INSERT INTO public.students VALUES (8, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (9, 'Kimberly', 'Whitley', 38, 3.8);
INSERT INTO public.students VALUES (10, 'Jimmy', 'Felipe', 37, 3.7);
INSERT INTO public.students VALUES (11, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (12, 'Casares', 'Hijo', 42, 4.0);
INSERT INTO public.students VALUES (13, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (14, 'Sterling', 'Boss', 42, 3.9);
INSERT INTO public.students VALUES (15, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (16, 'Kaija', 'Uronen', 42, 3.7);
INSERT INTO public.students VALUES (17, 'Faye', 'Conn', 42, 2.1);
INSERT INTO public.students VALUES (18, 'Efren', 'Reilly', 38, 3.9);
INSERT INTO public.students VALUES (19, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (20, 'Maxine', 'Hagenes', 37, 2.9);
INSERT INTO public.students VALUES (21, 'Larry', 'Saunders', 39, 2.2);
INSERT INTO public.students VALUES (22, 'Karl', 'Kuhar', 38, NULL);
INSERT INTO public.students VALUES (23, 'Lieke', 'Hazenveld', 42, 3.5);
INSERT INTO public.students VALUES (24, 'Obie', 'Hilpert', 38, NULL);
INSERT INTO public.students VALUES (25, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (26, 'Nathan', 'Turner', 37, 3.3);
INSERT INTO public.students VALUES (27, 'Gerald', 'Osiki', 39, 2.2);
INSERT INTO public.students VALUES (28, 'Vanya', 'Hassanah', 42, 4.0);
INSERT INTO public.students VALUES (29, 'Roxelana', 'Florescu', 37, 3.2);
INSERT INTO public.students VALUES (30, 'Helene', 'Parker', 39, 3.4);
INSERT INTO public.students VALUES (31, 'Mariana', 'Russel', 38, 1.8);
INSERT INTO public.students VALUES (32, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (33, 'Mehdi', 'Vandenberghe', 37, 1.9);
INSERT INTO public.students VALUES (34, 'Dejon', 'Howell', 38, 4.0);
INSERT INTO public.students VALUES (35, 'Aliya', 'Gulgowski', 43, 2.6);
INSERT INTO public.students VALUES (36, 'Ana', 'Tupajic', 39, 3.1);
INSERT INTO public.students VALUES (37, 'Hugo', 'Duran', NULL, 3.8);


--
-- Data for Name: temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp VALUES ('Database Administration', 'Data Structures and Algorithms', 1);
INSERT INTO public.temp VALUES ('Web Development', 'Web Programming', 2);
INSERT INTO public.temp VALUES ('Database Administration', 'Database Systems', 3);
INSERT INTO public.temp VALUES ('Data Science', 'Data Structures and Algorithms', 4);
INSERT INTO public.temp VALUES ('Network Engineering', 'Computer Networks', 5);
INSERT INTO public.temp VALUES ('Database Administration', 'SQL', 6);
INSERT INTO public.temp VALUES ('Data Science', 'Machine Learning', 7);
INSERT INTO public.temp VALUES ('Network Engineering', 'Computer Systems', 8);
INSERT INTO public.temp VALUES ('Computer Programming', 'Computer Networks', 9);
INSERT INTO public.temp VALUES ('Database Administration', 'Web Applications', 10);
INSERT INTO public.temp VALUES ('Game Design', 'Artificial Intelligence', 11);
INSERT INTO public.temp VALUES ('Data Science', 'Python', 12);
INSERT INTO public.temp VALUES ('Computer Programming', 'Object-Oriented Programming', 13);
INSERT INTO public.temp VALUES ('System Administration', 'Computer Systems', 14);
INSERT INTO public.temp VALUES ('Game Design', 'Calculus', 15);
INSERT INTO public.temp VALUES ('Web Development', 'Data Structures and Algorithms', 16);
INSERT INTO public.temp VALUES ('Data Science', 'Calculus', 17);
INSERT INTO public.temp VALUES ('Web Development', 'Object-Oriented Programming', 18);
INSERT INTO public.temp VALUES ('Game Design', 'Game Architecture', 19);
INSERT INTO public.temp VALUES ('System Administration', 'Computer Networks', 20);
INSERT INTO public.temp VALUES ('Game Design', 'Algorithms', 21);
INSERT INTO public.temp VALUES ('System Administration', 'UNIX', 22);
INSERT INTO public.temp VALUES ('System Administration', 'Server Administration', 23);
INSERT INTO public.temp VALUES ('Computer Programming', 'Computer Systems', 24);
INSERT INTO public.temp VALUES ('Computer Programming', 'Python', 25);
INSERT INTO public.temp VALUES ('Network Engineering', 'Network Security', 26);
INSERT INTO public.temp VALUES ('Web Development', 'Web Applications', 27);
INSERT INTO public.temp VALUES ('Network Engineering', 'Algorithms', 28);


--
-- Data for Name: temp_students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.temp_students VALUES ('Rhea', 'Kellems', 'Database Administration', '2.5', 2.5, 1);
INSERT INTO public.temp_students VALUES ('Emma', 'Gilbert', 'null', 'null', NULL, 2);
INSERT INTO public.temp_students VALUES ('Kimberly', 'Whitley', 'Web Development', '3.8', 3.8, 3);
INSERT INTO public.temp_students VALUES ('Jimmy', 'Felipe', 'Database Administration', '3.7', 3.7, 4);
INSERT INTO public.temp_students VALUES ('Kyle', 'Stimson', 'null', '2.8', 2.8, 5);
INSERT INTO public.temp_students VALUES ('Casares', 'Hijo', 'Game Design', '4.0', 4.0, 6);
INSERT INTO public.temp_students VALUES ('Noe', 'Savage', 'null', '3.6', 3.6, 7);
INSERT INTO public.temp_students VALUES ('Sterling', 'Boss', 'Game Design', '3.9', 3.9, 8);
INSERT INTO public.temp_students VALUES ('Brian', 'Davis', 'null', '2.3', 2.3, 9);
INSERT INTO public.temp_students VALUES ('Kaija', 'Uronen', 'Game Design', '3.7', 3.7, 10);
INSERT INTO public.temp_students VALUES ('Faye', 'Conn', 'Game Design', '2.1', 2.1, 11);
INSERT INTO public.temp_students VALUES ('Efren', 'Reilly', 'Web Development', '3.9', 3.9, 12);
INSERT INTO public.temp_students VALUES ('Danh', 'Nhung', 'null', '2.4', 2.4, 13);
INSERT INTO public.temp_students VALUES ('Maxine', 'Hagenes', 'Database Administration', '2.9', 2.9, 14);
INSERT INTO public.temp_students VALUES ('Larry', 'Saunders', 'Data Science', '2.2', 2.2, 15);
INSERT INTO public.temp_students VALUES ('Karl', 'Kuhar', 'Web Development', 'null', NULL, 16);
INSERT INTO public.temp_students VALUES ('Lieke', 'Hazenveld', 'Game Design', '3.5', 3.5, 17);
INSERT INTO public.temp_students VALUES ('Obie', 'Hilpert', 'Web Development', 'null', NULL, 18);
INSERT INTO public.temp_students VALUES ('Peter', 'Booysen', 'null', '2.9', 2.9, 19);
INSERT INTO public.temp_students VALUES ('Nathan', 'Turner', 'Database Administration', '3.3', 3.3, 20);
INSERT INTO public.temp_students VALUES ('Gerald', 'Osiki', 'Data Science', '2.2', 2.2, 21);
INSERT INTO public.temp_students VALUES ('Vanya', 'Hassanah', 'Game Design', '4.0', 4.0, 22);
INSERT INTO public.temp_students VALUES ('Roxelana', 'Florescu', 'Database Administration', '3.2', 3.2, 23);
INSERT INTO public.temp_students VALUES ('Helene', 'Parker', 'Data Science', '3.4', 3.4, 24);
INSERT INTO public.temp_students VALUES ('Mariana', 'Russel', 'Web Development', '1.8', 1.8, 25);
INSERT INTO public.temp_students VALUES ('Ajit', 'Dhungel', 'null', '3.0', 3.0, 26);
INSERT INTO public.temp_students VALUES ('Mehdi', 'Vandenberghe', 'Database Administration', '1.9', 1.9, 27);
INSERT INTO public.temp_students VALUES ('Dejon', 'Howell', 'Web Development', '4.0', 4.0, 28);
INSERT INTO public.temp_students VALUES ('Aliya', 'Gulgowski', 'System Administration', '2.6', 2.6, 29);
INSERT INTO public.temp_students VALUES ('Ana', 'Tupajic', 'Data Science', '3.1', 3.1, 30);
INSERT INTO public.temp_students VALUES ('Hugo', 'Duran', 'null', '3.8', 3.8, 31);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 39, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 43, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 37, true);


--
-- Name: temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_id_seq', 28, true);


--
-- Name: temp_students_tsid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.temp_students_tsid_seq', 31, true);


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
-- Name: temp_students temp_students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.temp_students
    ADD CONSTRAINT temp_students_pkey PRIMARY KEY (tsid);


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

