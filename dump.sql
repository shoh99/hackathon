--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

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
-- Name: car_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car_models (
    car_model_id integer NOT NULL,
    manufacturer character varying(255),
    make character varying(255),
    fuel character varying(255),
    version character varying(255),
    co2_per_km double precision,
    electric_wh_km double precision
);


ALTER TABLE public.car_models OWNER TO postgres;

--
-- Name: car_models_car_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.car_models_car_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.car_models_car_model_id_seq OWNER TO postgres;

--
-- Name: car_models_car_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.car_models_car_model_id_seq OWNED BY public.car_models.car_model_id;


--
-- Name: grouped_car_models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grouped_car_models (
    manufacturer character varying(255),
    make character varying(255),
    fuel character varying(255),
    version character varying(255)
);


ALTER TABLE public.grouped_car_models OWNER TO postgres;

--
-- Name: transport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transport (
    transport_type character varying(255),
    emission_per_km double precision
);


ALTER TABLE public.transport OWNER TO postgres;

--
-- Name: car_models car_model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_models ALTER COLUMN car_model_id SET DEFAULT nextval('public.car_models_car_model_id_seq'::regclass);


--
-- Data for Name: car_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car_models (car_model_id, manufacturer, make, fuel, version, co2_per_km, electric_wh_km) FROM stdin;
1	Abarth	595	Petrol	595	162	0
2	Abarth	595	Petrol	595 Competizione	171	0
3	Abarth	595	Petrol	595 Competizione S-A	172	0
4	Abarth	595	Petrol	595 Esseesse	171	0
5	Abarth	595	Petrol	595 Monster Yamaha	167	0
6	Abarth	595	Petrol	595 Pista	153	0
7	Abarth	595	Petrol	595 Pista 70Th Anniversary	167	0
8	Abarth	595	Petrol	595 Pista 70Th Anniversary S-A	165	0
9	Abarth	595	Petrol	595 Scorpioneoro	167	0
10	Abarth	595	Petrol	595 Trofeo	167	0
11	Abarth	595	Petrol	595 Turismo	167	0
12	Abarth	595	Petrol	595 Turismo S-A	166	0
13	Abarth	595C	Petrol	595C	164	0
14	Abarth	595C	Petrol	595C Competizione	171	0
15	Abarth	595C	Petrol	595C Competizione S-A	172	0
16	Abarth	595C	Petrol	595C Pista 70Th Anniversary	169	0
17	Abarth	595C	Petrol	595C Pista 70Th Anniversary Sa	173.5	0
18	Abarth	595C	Petrol	595C Trofeo	169	0
19	Abarth	595C	Petrol	595C Turismo	169	0
20	Abarth	595C	Petrol	595C Turismo S-A	171	0
21	Abarth	695	Petrol	695 70Th Anniversary	171	0
22	Abarth	695	Petrol	695 Anniversary	156	0
23	Alfa Romeo	Giulia	Diesel	Giulia Lusso Ti Td Auto	143	0
24	Alfa Romeo	Giulia	Petrol	Giulia Nero Edizione Tb Auto	178	0
25	Alfa Romeo	Giulia	Diesel	Giulia Speciale Td Auto	143	0
26	Alfa Romeo	Giulia	Petrol	Giulia Sprint Tb Auto	176	0
27	Alfa Romeo	Giulia	Diesel	Giulia Sprint Td Auto	141	0
28	Alfa Romeo	Giulia	Petrol	Giulia Super Tb Auto	177	0
29	Alfa Romeo	Giulia	Diesel	Giulia Super Td Auto	136	0
30	Alfa Romeo	Giulia	Petrol	Giulia V6 Bit Q-Rfoglio Arr A	237	0
31	Alfa Romeo	Giulia	Petrol	Giulia V6 Biturbo Q-Rifoglio A	236	0
32	Alfa Romeo	Giulia	Petrol	Giulia Veloce Tb Auto	190	0
33	Alfa Romeo	Giulia	Petrol	Giulia Veloce Ti Tb Auto	190	0
34	Alfa Romeo	Giulietta	Diesel	Giulietta Speciale Jtdm-2	148	0
35	Alfa Romeo	Giulietta	Petrol	Giulietta Speciale Tb	172	0
36	Alfa Romeo	Giulietta	Diesel	Giulietta Sport Jtdm-2	148	0
37	Alfa Romeo	Giulietta	Petrol	Giulietta Sport Tb	184	0
38	Alfa Romeo	Giulietta	Diesel	Giulietta Sprint Jtdm-2	144	0
39	Alfa Romeo	Giulietta	Diesel	Giulietta Sprint Jtdm-2 S-A	144	0
40	Alfa Romeo	Giulietta	Petrol	Giulietta Sprint Tb	168	0
41	Alfa Romeo	Giulietta	Diesel	Giulietta Super Jtdm-2	147	0
42	Alfa Romeo	Giulietta	Diesel	Giulietta Super Jtdm-2 S-A	149.5	0
43	Alfa Romeo	Giulietta	Petrol	Giulietta Super Tb	172	0
44	Alfa Romeo	Giulietta	Petrol	Giulietta Tb	174	0
45	Alfa Romeo	Giulietta	Diesel	Giulietta Veloce Jtdm-2 S-A	145	0
46	Alfa Romeo	Giulia	Petrol	Giullia Luso Ti Tb Auto	184	0
47	Alfa Romeo	Giulia	Petrol	Giullia Veloce Tb Auto	195	0
48	Alfa Romeo	Stelvio	Petrol	Stelvio Lusso Ti Tb Awd Auto	209.5	0
49	Alfa Romeo	Stelvio	Diesel	Stelvio Lusso Ti Td Awd Auto	170	0
50	Alfa Romeo	Stelvio	Petrol	Stelvio Milano Ed Tb Awd Auto	212.5	0
51	Alfa Romeo	Stelvio	Diesel	Stelvio Milano Ed Td Awd Auto	173	0
52	Alfa Romeo	Stelvio	Petrol	Stelvio Nero Edizione Tb Awd A	211	0
53	Alfa Romeo	Stelvio	Diesel	Stelvio Nero Edizione Td Awd A	167	0
54	Alfa Romeo	Stelvio	Petrol	Stelvio Speciale Tb Awd Auto	211	0
55	Alfa Romeo	Stelvio	Diesel	Stelvio Speciale Td Awd Auto	168	0
56	Alfa Romeo	Stelvio	Petrol	Stelvio Sprint Tb Awd Auto	209	0
57	Alfa Romeo	Stelvio	Diesel	Stelvio Sprint Td Awd Auto	169	0
58	Alfa Romeo	Stelvio	Diesel	Stelvio Super Tb Awd Auto	215.5	0
59	Alfa Romeo	Stelvio	Diesel	Stelvio Super Td Awd Auto	169.5	0
60	Alfa Romeo	Stelvio	Petrol	Stelvio Ti Tb Awd Auto	212	0
61	Alfa Romeo	Stelvio	Diesel	Stelvio Ti Td Awd Auto	169	0
62	Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Q-Rifoglio Awd A	261	0
63	Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Qfglo Arr Awd A	261	0
64	Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Qfglo Nrng Awd A	261	0
65	Alfa Romeo	Stelvio	Petrol	Stelvio Veloce Tb Awd Auto	209	0
66	Alfa Romeo	Stelvio	Diesel	Stelvio Veloce Td Awd Auto	170	0
67	Alpine	A110	Petrol	A110 Legende Auto	166	0
68	Alpine	A110	Petrol	A110 Pure Auto	162	0
69	Alpine	A110	Petrol	A110 S Auto	168	0
70	Alpine	Alpine	Petrol	Alpine Color Edition Auto	163	0
71	Alpine	Alpine	Petrol	Alpine Legende Gt Auto	162	0
72	Audi	A1	Petrol	A1 Citycarver 30 Tfsi	139	0
73	Audi	A1	Petrol	A1 Citycarver 30 Tfsi S-A	146	0
74	Audi	A1	Petrol	A1 Citycarver 35 Tfsi	142	0
75	Audi	A1	Petrol	A1 Citycarver 35 Tfsi S-A	145	0
76	Audi	A1	Petrol	A1 S Line 25 Tfsi	133	0
77	Audi	A1	Petrol	A1 S Line 25 Tfsi S-A	146	0
78	Audi	A1	Petrol	A1 S Line 30 Tfsi	133	0
79	Audi	A1	Petrol	A1 S Line 30 Tfsi S-A	143	0
80	Audi	A1	Petrol	A1 S Line 35 Tfsi S-A	144	0
81	Audi	A1	Petrol	A1 S Line Black Ed 25 Tfsi	133	0
82	Audi	A1	Petrol	A1 S Line Black Ed 30 Tfsi	130	0
83	Audi	A1	Petrol	A1 S Line Black Ed 30 Tfsi S-A	138	0
84	Audi	A1	Petrol	A1 S Line Competition Tfsi S-A	158	0
85	Audi	A1	Petrol	A1 S Line Style Ed 35 Tfsi S-A	144	0
86	Audi	A1	Petrol	A1 S Line Vorsprung 30 Tfsi	134	0
87	Audi	A1	Petrol	A1 S Line Vorsprung 30 Tfsi Sa	144	0
88	Audi	A1	Petrol	A1 S Line Vorsprung 35 Tfsi Sa	145	0
89	Audi	A1	Petrol	A1 S Ln Competition 40 Tfsi Sa	158	0
90	Audi	A1	Petrol	A1 S Ln Contrast Ed 35 Tfsi Sa	144	0
91	Audi	A1	Petrol	A1 Sport 25 Tfsi	130	0
92	Audi	A1	Petrol	A1 Sport 25 Tfsi S-A	142	0
93	Audi	A1	Petrol	A1 Sport 30 Tfsi	131	0
94	Audi	A1	Petrol	A1 Sport 30 Tfsi S-A	141	0
95	Audi	A1	Petrol	A1 Sport 35 Tfsi S-A	142	0
96	Audi	A1	Petrol	A1 Technik 25 Tfsi	128	0
97	Audi	A1	Petrol	A1 Technik 25 Tfsi S-A	139	0
98	Audi	A1	Petrol	A1 Technik 30 Tfsi	126	0
99	Audi	A1	Petrol	A1 Technik 30 Tfsi S-A	138	0
100	Audi	A3	Hybrid	A3 E-Tron 40 S-A	46	136
101	Audi	A3	Hybrid	A3 E-Tron S-A	46	137
102	Audi	A3	Diesel	A3 S Line 30 Tdi	120	0
103	Audi	A3	Diesel	A3 S Line 30 Tdi S-A	142	0
104	Audi	A3	Petrol	A3 S Line 30 Tfsi	132	0
105	Audi	A3	Petrol	A3 S Line 30 Tfsi Mhev S-A	125	0
106	Audi	A3	Diesel	A3 S Line 35 Tdi	134	0
107	Audi	A3	Diesel	A3 S Line 35 Tdi S-A	128	0
108	Audi	A3	Petrol	A3 S Line 35 Tfsi	141	0
109	Audi	A3	Petrol	A3 S Line 35 Tfsi Mhev S-A	138	0
110	Audi	A3	Petrol	A3 S Line 35 Tfsi S-A	155	0
111	Audi	A3	Diesel	A3 S Line 40 Tdi Quattro S-A	165	0
112	Audi	A3	Hybrid	A3 S Line 40 Tfsi E S-A	30	152
113	Audi	A3	Petrol	A3 S Line 40 Tfsi Quattro S-A	171.5	0
114	Audi	A3	Petrol	A3 S Line Black Ed 30 Tfsi	135	0
115	Audi	A3	Diesel	A3 S Line Black Ed 35 Tdi S-A	146	0
116	Audi	A3	Petrol	A3 S Line Black Ed 35 Tfsi	147	0
117	Audi	A3	Petrol	A3 S Line Black Ed 35 Tfsi S-A	148	0
118	Audi	A3	Diesel	A3 S Line Black Edition 30 Tdi	143	0
119	Audi	A3	Diesel	A3 S Line Black Edition 35 Tdi	135	0
120	Audi	A3	Petrol	A3 S Line Ed 1 35 Tfsi Mhev Sa	139	0
121	Audi	A3	Diesel	A3 S Line Edition 1 35 Tdi S-A	129	0
122	Audi	A3	Petrol	A3 S Line Edition 1 35 Tfsi	142	0
123	Audi	A3	Petrol	A3 S Ln Blk Ed 40 Tfsi Quat Sa	169	0
124	Audi	A3	Diesel	A3 S Lne Blk Ed 40 Tdi Quat Sa	167	0
125	Audi	A3	Diesel	A3 Se Technik 30 Tdi	138	0
126	Audi	A3	Diesel	A3 Se Technik 30 Tdi S-A	138	0
127	Audi	A3	Petrol	A3 Se Technik 30 Tfsi	129	0
128	Audi	A3	Diesel	A3 Se Technik 35 Tdi	131	0
129	Audi	A3	Petrol	A3 Se Technik 35 Tfsi	142	0
130	Audi	A3	Petrol	A3 Se Technik 35 Tfsi S-A	143	0
131	Audi	A3	Diesel	A3 Sport 30 Tdi	132	0
132	Audi	A3	Petrol	A3 Sport 30 Tfsi	126	0
133	Audi	A3	Petrol	A3 Sport 30 Tfsi Mhev S-A	120	0
134	Audi	A3	Diesel	A3 Sport 35 Tdi	134	0
135	Audi	A3	Diesel	A3 Sport 35 Tdi S-A	122	0
136	Audi	A3	Petrol	A3 Sport 35 Tfsi	136	0
137	Audi	A3	Petrol	A3 Sport 35 Tfsi Mhev S-A	132	0
138	Audi	A3	Petrol	A3 Sport 35 Tfsi S-A	146	0
139	Audi	A3	Hybrid	A3 Sport 40 Tfsi E S-A	24	142
140	Audi	A3	Petrol	A3 Sport 40 Tfsi S-A	160	0
141	Audi	A3	Diesel	A3 Technik 30 Tdi	111	0
142	Audi	A3	Petrol	A3 Technik 30 Tfsi	124	0
143	Audi	A3	Petrol	A3 Technik 30 Tfsi Mhev S-A	116	0
144	Audi	A3	Diesel	A3 Technik 35 Tdi S-A	119	0
145	Audi	A3	Petrol	A3 Technik 35 Tfsi	132	0
146	Audi	A3	Petrol	A3 Technik 35 Tfsi Mhev S-A	128	0
147	Audi	A4	Petrol	A4 A-Road Sprt 45 Tfsi Quat Sa	181	0
148	Audi	A4	Diesel	A4 A-Road Spt 40Tdi Mhev Qt Sa	151	0
149	Audi	A4	Petrol	A4 A-Road Vor 45Tfsi Mhev Q Sa	191	0
150	Audi	A4	Diesel	A4 Allroad Sport 40Tdi Quat Sa	168	0
151	Audi	A4	Diesel	A4 Allroad Sport 50 Tdi Quat A	196	0
152	Audi	A4	Diesel	A4 Allroad Vor 40 Tdi Quat Sa	170	0
153	Audi	A4	Diesel	A4 Allroad Vor 40Tdi Mhev Q Sa	154	0
154	Audi	A4	Diesel	A4 Allroad Vor 50 Tdi Quat A	198	0
155	Audi	A4	Petrol	A4 Aroad Spt 45Tfsi Mhev Qt Sa	189	0
156	Audi	A4	Diesel	A4 S Line 30 Tdi S-A	149	0
157	Audi	A4	Diesel	A4 S Line 35 Tdi Mhev S-A	137	0
158	Audi	A4	Diesel	A4 S Line 35 Tdi S-A	145	0
159	Audi	A4	Petrol	A4 S Line 35 Tfsi	163	0
160	Audi	A4	Petrol	A4 S Line 35 Tfsi Mhev	152	0
161	Audi	A4	Petrol	A4 S Line 35 Tfsi Mhev S-A	155	0
162	Audi	A4	Petrol	A4 S Line 35 Tfsi S-A	163	0
163	Audi	A4	Diesel	A4 S Line 40 Tdi Mhev Quat Sa	152	0
164	Audi	A4	Diesel	A4 S Line 40 Tdi Quattro S-A	167	0
165	Audi	A4	Diesel	A4 S Line 40 Tdi S-A	155	0
166	Audi	A4	Petrol	A4 S Line 40 Tfsi Mhev S-A	155	0
167	Audi	A4	Petrol	A4 S Line 40 Tfsi S-A	166	0
168	Audi	A4	Petrol	A4 S Line 45 Tfsi Mhev Quat Sa	183.5	0
169	Audi	A4	Petrol	A4 S Line 45 Tfsi Quattro S-A	179	0
170	Audi	A4	Diesel	A4 S Line Black Ed 30 Tdi S-A	146	0
171	Audi	A4	Diesel	A4 S Line Black Ed 35 Tdi S-A	146	0
172	Audi	A4	Petrol	A4 S Line Black Ed 35 Tfsi	164	0
173	Audi	A4	Petrol	A4 S Line Black Ed 35 Tfsi S-A	164	0
174	Audi	A4	Diesel	A4 S Line Black Ed 40 Tdi S-A	156	0
175	Audi	A4	Petrol	A4 S Line Black Ed 40 Tfsi Sa	164	0
176	Audi	A4	Petrol	A4 S Line Black Ed Nav Tdi	167	0
177	Audi	A4	Petrol	A4 S Line Blk Ed 35 Tfsi Mhev	153	0
178	Audi	A4	Diesel	A4 S Line Vorsprung 35 Tdi S-A	148	0
179	Audi	A4	Petrol	A4 S Line Vorsprung 40 Tfsi Sa	167	0
180	Audi	A4	Diesel	A4 S Ln Black Ed 30Tdi Mhev Sa	135	0
181	Audi	A4	Diesel	A4 S Ln Black Ed 35Tdi Mhev Sa	138	0
182	Audi	A4	Petrol	A4 S Ln Blk Ed 35 Tfsi Mhev Sa	156	0
183	Audi	A4	Petrol	A4 S Ln Blk Ed 40 Tfsi Mhev Sa	156	0
184	Audi	A4	Diesel	A4 S Ln Blk Ed 40Tdi Mhev Q Sa	153	0
185	Audi	A4	Petrol	A4 S Ln Blk Ed 45 Tfsi Quat Sa	180	0
186	Audi	A4	Petrol	A4 S Ln Vsprng 35 Tfsi Mhev Sa	162	0
187	Audi	A4	Petrol	A4 S Ln Vsprng 40 Tfsi Mhev Sa	162	0
188	Audi	A4	Diesel	A4 S Ln Vsprng 40Tdi Mhev Q Sa	154	0
189	Audi	A4	Diesel	A4 S Ln Vsprung 30 Tdi Mhev Sa	136.5	0
190	Audi	A4	Diesel	A4 S Ln Vsprung 40 Tdi Quat Sa	168	0
191	Audi	A4	Diesel	A4 S-Ln Black Ed40 Tdi Quat Sa	167	0
192	Audi	A4	Diesel	A4 Se 35 Tdi S-A	145	0
193	Audi	A4	Petrol	A4 Sln Blk Ed 45Tfsi Mhev Q Sa	190	0
194	Audi	A4	Petrol	A4 Sln Vsprng 45Tfsi Mhev Q Sa	185	0
195	Audi	A4	Diesel	A4 Sport 30 Tdi S-A	139	0
196	Audi	A4	Diesel	A4 Sport 35 Tdi Mhev S-A	126	0
197	Audi	A4	Diesel	A4 Sport 35 Tdi S-A	136	0
198	Audi	A4	Petrol	A4 Sport 35 Tfsi	153	0
199	Audi	A4	Petrol	A4 Sport 35 Tfsi Mhev	141	0
200	Audi	A4	Petrol	A4 Sport 35 Tfsi Mhev S-A	143	0
201	Audi	A4	Petrol	A4 Sport 35 Tfsi S-A	155	0
202	Audi	A4	Diesel	A4 Sport 40 Tdi Mhev Quat Sa	139	0
203	Audi	A4	Diesel	A4 Sport 40 Tdi Quattro S-A	152	0
204	Audi	A4	Diesel	A4 Sport 40 Tdi S-A	150	0
205	Audi	A4	Petrol	A4 Sport 40 Tfsi Mhev S-A	143	0
206	Audi	A4	Petrol	A4 Sport 40 Tfsi S-A	156	0
207	Audi	A4	Petrol	A4 Sport Ed 35 Tfsi Mhev S-A	143	0
208	Audi	A4	Petrol	A4 Sport Ed 40 Tfsi Mhev S-A	144	0
209	Audi	A4	Diesel	A4 Sport Edition 30Tdi Mhev Sa	126	0
210	Audi	A4	Diesel	A4 Sport Edition 35Tdi Mhev Sa	127	0
211	Audi	A4	Diesel	A4 Technik 30 Tdi Mhev S-A	125	0
212	Audi	A4	Diesel	A4 Technik 30 Tdi S-A	135	0
213	Audi	A4	Diesel	A4 Technik 35 Tdi Mhev S-A	125	0
214	Audi	A4	Diesel	A4 Technik 35 Tdi S-A	134	0
215	Audi	A4	Petrol	A4 Technik 35 Tfsi	151	0
216	Audi	A4	Petrol	A4 Technik 35 Tfsi Mhev	140	0
217	Audi	A4	Petrol	A4 Technik 35 Tfsi Mhev S-A	142	0
218	Audi	A4	Petrol	A4 Technik 35 Tfsi S-A	150	0
219	Audi	A4	Diesel	A4 Technik 50 Tdi Quattro Auto	186	0
220	Audi	A4	Petrol	A4 Vsprung Aroad 45Tfsi Qto Sa	184	0
221	Audi	A5	Diesel	A5 S Line 35 Tdi Mhev S-A	143	0
222	Audi	A5	Diesel	A5 S Line 35 Tdi S-A	152	0
223	Audi	A5	Petrol	A5 S Line 35 Tfsi Mhev S-A	154	0
224	Audi	A5	Petrol	A5 S Line 35 Tfsi S-A	162	0
225	Audi	A5	Diesel	A5 S Line 40 Tdi Mhev Quat Sa	146	0
226	Audi	A5	Diesel	A5 S Line 40 Tdi Quattro S-A	163	0
227	Audi	A5	Diesel	A5 S Line 40 Tdi S-A	146	0
228	Audi	A5	Petrol	A5 S Line 40 Tfsi	170	0
229	Audi	A5	Petrol	A5 S Line 40 Tfsi Mhev S-A	161	0
230	Audi	A5	Petrol	A5 S Line 40 Tfsi S-A	162	0
231	Audi	A5	Petrol	A5 S Line 45 Tfsi Mhev Quat Sa	180	0
232	Audi	A5	Petrol	A5 S Line 45 Tfsi Quattro S-A	176	0
233	Audi	A5	Petrol	A5 S Line Black Ed 35 Tfsi Sa	164	0
234	Audi	A5	Diesel	A5 S Line Black Ed 40 Tdi S-A	148.5	0
235	Audi	A5	Petrol	A5 S Line Black Ed 40 Tfsi	163	0
236	Audi	A5	Petrol	A5 S Line Black Ed 40 Tfsi Sa	164	0
237	Audi	A5	Diesel	A5 S Line Ed 1 35 Tdi Mhev Sa	145	0
238	Audi	A5	Petrol	A5 S Line Ed 1 35 Tfsi Mhev Sa	153.5	0
239	Audi	A5	Diesel	A5 S Line Ed 1 40 Tdi Quat S-A	164	0
240	Audi	A5	Petrol	A5 S Line Ed 1 40 Tfsi Mhev Sa	164	0
241	Audi	A5	Petrol	A5 S Line Edition 40 Tfsi	172	0
242	Audi	A5	Petrol	A5 S Line Edition 40 Tfsi S-A	172	0
243	Audi	A5	Petrol	A5 S Line Vorsprung 35 Tfsi Sa	163	0
244	Audi	A5	Diesel	A5 S Line Vorsprung 40 Tdi S-A	161	0
245	Audi	A5	Petrol	A5 S Line Vorsprung 40 Tfsi Sa	165	0
246	Audi	A5	Petrol	A5 S Ln Blk Ed 45 Tfsi Quat Sa	177	0
247	Audi	A5	Petrol	A5 S Ln Ed 1 45 Tfsi Mhev Q Sa	186	0
248	Audi	A5	Petrol	A5 S Ln V-Sprng 45Tfsi Quat Sa	178	0
249	Audi	A5	Diesel	A5 S Ln Vor 40Tdi Mhev Quat Sa	151.5	0
250	Audi	A5	Petrol	A5 S Ln Vor 45 Tfsi Mhev Q Sa	191.5	0
251	Audi	A5	Petrol	A5 S Ln Vsprng 40 Tfsi Mhev Sa	165	0
252	Audi	A5	Diesel	A5 S Lne Ed 1 40Tdi Mhev Q Sa	147.5	0
253	Audi	A5	Diesel	A5 S-Ln Black Ed40 Tdi Quat Sa	164	0
254	Audi	A5	Diesel	A5 S-Ln V-Sprung 40Tdi Quat Sa	165.5	0
255	Audi	A5	Electric	A5 Se Tfsi	0	251
256	Audi	A5	Diesel	A5 Sport 35 Tdi Mhev S-A	135	0
257	Audi	A5	Diesel	A5 Sport 35 Tdi S-A	151	0
258	Audi	A5	Petrol	A5 Sport 35 Tfsi Mhev S-A	144	0
259	Audi	A5	Petrol	A5 Sport 35 Tfsi S-A	159	0
260	Audi	A5	Diesel	A5 Sport 40 Tdi Mhev Quat Sa	137	0
261	Audi	A5	Diesel	A5 Sport 40 Tdi Quattro S-A	159	0
262	Audi	A5	Diesel	A5 Sport 40 Tdi S-A	156	0
263	Audi	A5	Petrol	A5 Sport 40 Tfsi	161	0
264	Audi	A5	Petrol	A5 Sport 40 Tfsi Mhev S-A	144	0
265	Audi	A5	Petrol	A5 Sport 40 Tfsi S-A	162	0
266	Audi	A6	Petrol	A6 Aroad Sport 55Tfsi Mhev Q A	205.5	0
267	Audi	A6	Diesel	A6 Aroad Spt 45Tdi Mhev Quat A	195	0
268	Audi	A6	Diesel	A6 Aroad Spt 50Tdi Mhev Quat A	196	0
269	Audi	A6	Diesel	A6 Aroad Vor 45Tdi Mhev Quat A	202	0
270	Audi	A6	Diesel	A6 Aroad Vor 50Tdi Mhev Quat A	201	0
271	Audi	A6	Petrol	A6 Aroad Vor 55Tfsi Mhev Qto A	215	0
272	Audi	A6	Diesel	A6 S Line 40 Tdi Quattro S-A	161	0
273	Audi	A6	Diesel	A6 S Line 40 Tdi S-A	146	0
274	Audi	A6	Petrol	A6 S Line 45 Tfsi Mhev Quat Sa	179	0
275	Audi	A6	Petrol	A6 S Line 45 Tfsi Quattro S-A	188	0
276	Audi	A6	Diesel	A6 S Line 50 Tdi Quattro S-A	185	0
277	Audi	A6	Hybrid	A6 S Line 50 Tfsi E Quattro Sa	36	172
278	Audi	A6	Petrol	A6 S Line 55 Tfsi Quattro S-A	210	0
279	Audi	A6	Diesel	A6 S Line Black Ed 40 Tdi Sa	153	0
280	Audi	A6	Diesel	A6 S Line Vor 40 Tdi Mhev Sa	158.5	0
281	Audi	A6	Petrol	A6 S Ln Blk Ed 45 Tfsi Quat Sa	189	0
282	Audi	A6	Petrol	A6 S Ln Blk Ed 55 Tfsi Quat Sa	210	0
283	Audi	A6	Petrol	A6 S Ln Blk Ed45Tfsi Mhev Q Sa	179	0
284	Audi	A6	Diesel	A6 S Ln V-Sprng 50 Tdi Quat Sa	196	0
285	Audi	A6	Diesel	A6 S Ln Vor 40Tdi Mhev Quat Sa	165.5	0
286	Audi	A6	Petrol	A6 S Ln Vor 55Tfsi Mhev Qto Sa	218	0
287	Audi	A6	Diesel	A6 S Lne Blk Ed 40 Tdi Quat Sa	161	0
288	Audi	A6	Diesel	A6 S Lne Blk Ed 50 Tdi Quat Sa	192	0
289	Audi	A6	Hybrid	A6 Sln Blk Ed 50Tfsi E Quat Sa	43	182
290	Audi	A6	Petrol	A6 Sln Vor 45Tfsi Mhev Quat Sa	195.5	0
291	Audi	A6	Diesel	A6 Sport 40 Tdi Quattro S-A	160	0
292	Audi	A6	Diesel	A6 Sport 40 Tdi S-A	146	0
293	Audi	A6	Petrol	A6 Sport 45 Tfsi Mhev Quat Sa	173	0
294	Audi	A6	Petrol	A6 Sport 45 Tfsi Quattro S-A	183	0
295	Audi	A6	Diesel	A6 Sport 50 Tdi Quattro S-A	187	0
296	Audi	A6	Hybrid	A6 Sport 50 Tfsi E Quattro S-A	35	170
297	Audi	A6	Petrol	A6 Sport 55 Tfsi Quattro S-A	209	0
298	Audi	A7	Hybrid	A7 Black Ed 50 Tfsi E Quat S-A	46	186
299	Audi	A7	Hybrid	A7 Competition 55Tfsi E Qto Sa	47	187
300	Audi	A7	Diesel	A7 S Line 40 Tdi Quattro S-A	164	0
301	Audi	A7	Diesel	A7 S Line 40 Tdi S-A	156	0
302	Audi	A7	Diesel	A7 S Line 45 Tdi Quattro Auto	191	0
303	Audi	A7	Petrol	A7 S Line 45 Tfsi Quattro S-A	190	0
304	Audi	A7	Diesel	A7 S Line 50 Tdi Quattro S-A	191	0
305	Audi	A7	Hybrid	A7 S Line 50 Tfsi E Quattro Sa	46	186
306	Audi	A7	Petrol	A7 S Line 55 Tfsi Quattro S-A	212	0
307	Audi	A7	Diesel	A7 S Line Black Ed 40 Tdi S-A	157	0
308	Audi	A7	Diesel	A7 S Line Blk Ed 45 Tdi Quat A	191	0
309	Audi	A7	Diesel	A7 S Line Exc 40 Tdi Mhev Sa	157	0
310	Audi	A7	Diesel	A7 S-Ln Blk Ed 40 Tdi Quat S-A	164	0
311	Audi	A7	Diesel	A7 S-Ln Blk Ed 50 Tdi Quat S-A	192	0
312	Audi	A7	Petrol	A7 S-Ln Blk Ed45 Tfsi Quat S-A	191	0
313	Audi	A7	Diesel	A7 S-Ln Vorsprung45 Tdi Quat A	193	0
314	Audi	A7	Diesel	A7 S-Ln Vorsprung50 Tdi Quat A	193	0
315	Audi	A7	Petrol	A7 S-Ln Vrsprng55 Tfsi Quat Sa	215	0
316	Audi	A7	Petrol	A7 Sln Blk Ed 55Tfsi Mhev Q Sa	213	0
317	Audi	A7	Diesel	A7 Sport 40 Tdi Quattro S-A	159	0
318	Audi	A7	Diesel	A7 Sport 40 Tdi S-A	152	0
319	Audi	A7	Diesel	A7 Sport 45 Tdi Quattro Auto	187	0
320	Audi	A7	Petrol	A7 Sport 45 Tfsi Quattro S-A	186.5	0
321	Audi	A7	Diesel	A7 Sport 50 Tdi Quattro S-A	187	0
322	Audi	A7	Hybrid	A7 Sport 50 Tfsi E Quattro S-A	40	178
323	Audi	A7	Petrol	A7 Sport 55 Tfsi Quattro S-A	208	0
324	Audi	A8	Diesel	A8 50 Tdi Quattro Auto	181	0
325	Audi	A8	Petrol	A8 55 Tfsi Quattro Auto	221	0
326	Audi	A8	Hybrid	A8 60 Tfsi E Quattro Auto	58.5	204
327	Audi	A8	Diesel	A8 Black Ed 50 Tdi Mhev Quat A	192	0
328	Audi	A8	Diesel	A8 L 50 Tdi Quattro Auto	185	0
329	Audi	A8	Petrol	A8 L 55 Tfsi Quattro Auto	221	0
330	Audi	A8	Hybrid	A8 L 60 Tfsi E Quattro Auto	62	207
331	Audi	A8	Diesel	A8 L S Line 50 Tdi Quattro A	193	0
332	Audi	A8	Petrol	A8 L S Line 55 Tfsi Quattro A	229	0
333	Audi	A8	Petrol	A8 L S Ln Blk Ed 55Tfsi Quat A	227	0
334	Audi	A8	Diesel	A8 L S Ln Vsprung 50Tdi Quat A	196	0
335	Audi	A8	Petrol	A8 L S Lne 55 Tfsi Mhev Quat A	221	0
336	Audi	A8	Diesel	A8 S Line 50 Tdi Quattro Auto	188	0
337	Audi	A8	Petrol	A8 S Line 55 Tfsi Quattro Auto	224	0
338	Audi	A8	Diesel	A8 S Line Blk Ed 50 Tdi Quat A	188	0
339	Audi	A8	Petrol	A8 S Ln Black Ed 55Tfsi Quat A	224	0
340	Audi	E-Tron	Electric	E-Tron 55 Quattro	0	245
341	Audi	E-Tron	Electric	E-Tron Black Edition 50 Quat	0	247
342	Audi	E-Tron	Electric	E-Tron Black Edition 55 Quat	0	255
343	Audi	E-Tron	Electric	E-Tron Edition 1 55 Quattro	0	253
344	Audi	E-Tron	Electric	E-Tron Launch Ed 55 Quat	0	256
345	Audi	E-Tron	Electric	E-Tron Launch Edition 50 Quat	0	262
346	Audi	E-Tron	Electric	E-Tron S Line 50 Quattro	0	259
347	Audi	E-Tron	Electric	E-Tron S Line 55 Quattro	0	249
348	Audi	E-Tron	Electric	E-Tron S Quattro	0	274
349	Audi	E-Tron	Electric	E-Tron Sport 50 Quattro	0	244
350	Audi	E-Tron	Electric	E-Tron Sport 55 Quattro	0	243
351	Audi	E-Tron	Electric	E-Tron Technik 50 Quattro	0	245
352	Audi	E-Tron	Electric	E-Tron Technik 55 Quattro	0	243
353	Audi	E-Tron	Electric	E-Tron Vorsprung 50 Quattro	0	251
354	Audi	E-Tron	Electric	E-Tron Vorsprung 55 Quattro	0	255
355	Audi	Q2	Diesel	Q2 S Line 30 Tdi	156	0
356	Audi	Q2	Diesel	Q2 S Line 30 Tdi S-A	161	0
357	Audi	Q2	Petrol	Q2 S Line 30 Tfsi	141	0
358	Audi	Q2	Diesel	Q2 S Line 35 Tdi Quattro S-A	160	0
359	Audi	Q2	Petrol	Q2 S Line 35 Tfsi	148	0
360	Audi	Q2	Petrol	Q2 S Line 35 Tfsi S-A	152	0
361	Audi	Q2	Petrol	Q2 S Line 40 Tfsi Quattro S-A	185	0
362	Audi	Q2	Diesel	Q2 S Line Black Ed 30 Tdi S-A	163	0
363	Audi	Q2	Petrol	Q2 S Line Black Ed 30 Tfsi	143	0
364	Audi	Q2	Petrol	Q2 S Line Black Ed 35 Tfsi	150	0
365	Audi	Q2	Petrol	Q2 S Line Black Ed 35 Tfsi Sa	153	0
366	Audi	Q2	Diesel	Q2 S Line Black Edition 30 Tdi	158	0
367	Audi	Q2	Petrol	Q2 S Line Vorsprung 35 Tfsi	152	0
368	Audi	Q2	Petrol	Q2 S Line Vorsprung 35 Tfsi Sa	155	0
369	Audi	Q2	Diesel	Q2 S Ln Blk Ed 35 Tdi Quat Sa	162	0
370	Audi	Q2	Petrol	Q2 S Ln Blk Ed 40 Tfsi Quat Sa	186	0
371	Audi	Q2	Petrol	Q2 S-Ln Vsprung40 Tfsi Quat Sa	188	0
372	Audi	Q2	Diesel	Q2 Sport 30 Tdi	150	0
373	Audi	Q2	Diesel	Q2 Sport 30 Tdi S-A	156	0
374	Audi	Q2	Petrol	Q2 Sport 30 Tfsi	135	0
375	Audi	Q2	Diesel	Q2 Sport 35 Tdi Quattro S-A	155	0
376	Audi	Q2	Petrol	Q2 Sport 35 Tfsi	142	0
377	Audi	Q2	Petrol	Q2 Sport 35 Tfsi S-A	147	0
378	Audi	Q2	Diesel	Q2 Technik 30 Tdi	150	0
379	Audi	Q2	Diesel	Q2 Technik 30 Tdi S-A	155	0
380	Audi	Q2	Petrol	Q2 Technik 30 Tfsi	135	0
381	Audi	Q2	Petrol	Q2 Technik 35 Tfsi	142	0
382	Audi	Q2	Petrol	Q2 Technik 35 Tfsi S-A	147	0
383	Audi	Q3	Diesel	Q3 S Line 35 Tdi Quattro	182	0
384	Audi	Q3	Diesel	Q3 S Line 35 Tdi Quattro S-A	165	0
385	Audi	Q3	Diesel	Q3 S Line 35 Tdi S-A	158	0
386	Audi	Q3	Petrol	Q3 S Line 35 Tfsi	158	0
387	Audi	Q3	Petrol	Q3 S Line 35 Tfsi Mhev S-A	161	0
388	Audi	Q3	Petrol	Q3 S Line 35 Tfsi S-A	171	0
389	Audi	Q3	Diesel	Q3 S Line 40 Tdi Quattro S-A	193	0
390	Audi	Q3	Petrol	Q3 S Line 40 Tfsi Quattro S-A	204	0
391	Audi	Q3	Petrol	Q3 S Line 45 Tfsi Quattro S-A	201	0
392	Audi	Q3	Diesel	Q3 S Line Black Ed 35 Tdi S-A	151	0
393	Audi	Q3	Petrol	Q3 S Line Black Ed 35 Tfsi	158	0
394	Audi	Q3	Diesel	Q3 S Line Ed 1 35 Tdi Quat S-A	166	0
395	Audi	Q3	Diesel	Q3 S Line Ed 1 35 Tdi Quattro	185	0
396	Audi	Q3	Petrol	Q3 S Line Ed 1 35 Tfsi Mhev Sa	164	0
397	Audi	Q3	Diesel	Q3 S Line Ed 1 40 Tdi Quat Sa	195	0
398	Audi	Q3	Petrol	Q3 S Line Ed 1 40 Tfsi Quat Sa	208	0
399	Audi	Q3	Petrol	Q3 S Line Ed 1 45 Tfsi Quat Sa	203	0
400	Audi	Q3	Diesel	Q3 S Line Edition 1 35 Tdi S-A	162	0
401	Audi	Q3	Petrol	Q3 S Line Edition 1 35 Tfsi	162	0
402	Audi	Q3	Petrol	Q3 S Line Vor 40 Tfsi Quat S-A	209	0
403	Audi	Q3	Petrol	Q3 S Line Vor 45 Tfsi Quat S-A	205	0
404	Audi	Q3	Diesel	Q3 S Line Vorsprung 35 Tdi S-A	165	0
405	Audi	Q3	Petrol	Q3 S Ln Blk Ed 35 Tfsi Mhev Sa	161	0
406	Audi	Q3	Petrol	Q3 S Ln Blk Ed 45 Tfsi Quat Sa	203.5	0
407	Audi	Q3	Petrol	Q3 S Ln Vsprung 35Tfsi Mhev Sa	166	0
408	Audi	Q3	Diesel	Q3 S Lne Blk Ed 35 Tdi Quat Sa	165	0
409	Audi	Q3	Diesel	Q3 S Lne Blk Ed 40 Tdi Quat Sa	175	0
410	Audi	Q3	Diesel	Q3 S-Ln V-Sprung 40Tdi Quat Sa	196	0
411	Audi	Q3	Diesel	Q3 Sport 35 Tdi Quattro	175	0
412	Audi	Q3	Diesel	Q3 Sport 35 Tdi Quattro S-A	158	0
413	Audi	Q3	Diesel	Q3 Sport 35 Tdi S-A	153	0
414	Audi	Q3	Petrol	Q3 Sport 35 Tfsi	153	0
415	Audi	Q3	Petrol	Q3 Sport 35 Tfsi Mhev S-A	155	0
416	Audi	Q3	Petrol	Q3 Sport 35 Tfsi S-A	164	0
417	Audi	Q3	Diesel	Q3 Sport 40 Tdi Quattro S-A	184	0
418	Audi	Q3	Petrol	Q3 Sport 40 Tfsi Quattro S-A	198	0
419	Audi	Q3	Petrol	Q3 Technik 35 Tfsi	147	0
420	Audi	Q5	Diesel	Q5 S Line 40 Tdi Mhev Quat S-A	171	0
421	Audi	Q5	Diesel	Q5 S Line 40 Tdi Quattro S-A	194	0
422	Audi	Q5	Petrol	Q5 S Line 45 Tfsi Mhev Quat Sa	197	0
423	Audi	Q5	Petrol	Q5 S Line 45 Tfsi Quattro S-A	199	0
424	Audi	Q5	Hybrid	Q5 S Line 50 Tfsi E Quattro Sa	55	194
425	Audi	Q5	Diesel	Q5 S Line Blk Ed40 Tdi Quat Sa	194	0
426	Audi	Q5	Diesel	Q5 S Line Tdi Quattro S-A	195	0
427	Audi	Q5	Petrol	Q5 S Ln Blk Ed 45 Tfsi Quat Sa	199	0
428	Audi	Q5	Hybrid	Q5 S Ln Comp 55 Tfsi E Quat Sa	56	195
429	Audi	Q5	Diesel	Q5 S Ln Ed1 40Tdi Mhev Quat Sa	173.5	0
430	Audi	Q5	Petrol	Q5 S Ln V-Sprng 45Tfsi Quat Sa	208	0
431	Audi	Q5	Diesel	Q5 S Ln V-Sprung 40Tdi Quat Sa	201	0
432	Audi	Q5	Hybrid	Q5 S Lne Vor 50 Tfsi E Quat Sa	61	200
433	Audi	Q5	Hybrid	Q5 Sln Blk Ed 50Tfsi E Quat Sa	55	194
434	Audi	Q5	Petrol	Q5 Sln Ed1 45Tfsi Mhev Quat Sa	200	0
435	Audi	Q5	Diesel	Q5 Sport 40 Tdi Mhev Quat S-A	165	0
436	Audi	Q5	Diesel	Q5 Sport 40 Tdi Quattro S-A	189	0
437	Audi	Q5	Petrol	Q5 Sport 45 Tfsi Mhev Quat S-A	191	0
438	Audi	Q5	Petrol	Q5 Sport 45 Tfsi Quattro S-A	193	0
439	Audi	Q5	Diesel	Q5 Sport Tdi Quattro S-A	190	0
440	Audi	Q5	Hybrid	Q5 Vor Comp 55 Tfsi E Quat S-A	59	199
441	Audi	Q7	Diesel	Q7 S Line 45 Tdi Mhev Quat A	223	0
442	Audi	Q7	Diesel	Q7 S Line 45 Tdi Quattro Auto	221	0
443	Audi	Q7	Diesel	Q7 S Line 50 Tdi Mhev Quat A	223	0
444	Audi	Q7	Diesel	Q7 S Line 50 Tdi Quattro Auto	224	0
445	Audi	Q7	Hybrid	Q7 S Line 55 Tfsi E Quattro A	74	241
446	Audi	Q7	Petrol	Q7 S Line 55 Tfsi Mhev Quat A	241	0
447	Audi	Q7	Diesel	Q7 S Line Black Ed Tdi Quat A	225	0
448	Audi	Q7	Diesel	Q7 S Ln Vor 45 Tdi Mhev Quat A	231	0
449	Audi	Q7	Diesel	Q7 S Ln Vor 50 Tdi Mhev Quat A	231	0
450	Audi	Q7	Diesel	Q7 Sln Blk Ed 45Tdi Mhev Qto A	223	0
451	Audi	Q7	Diesel	Q7 Sln Blk Ed 50Tdi Mhev Qto A	224	0
452	Audi	Q7	Petrol	Q7 Sln Blk Ed 55Tfsi Mhev Qt A	240	0
453	Audi	Q7	Petrol	Q7 Sln Vor 55 Tfsi Mhev Quat A	253	0
454	Audi	Q7	Diesel	Q7 Sport 45 Tdi Mhev Quattro A	222	0
455	Audi	Q7	Diesel	Q7 Sport 45 Tdi Quattro Auto	221	0
456	Audi	Q7	Diesel	Q7 Sport 50 Tdi Mhev Quattro A	222	0
457	Audi	Q7	Hybrid	Q7 Sport 55 Tfsi E Quattro A	72	239
458	Audi	Q7	Petrol	Q7 Sport 55 Tfsi Mhev Quat A	239	0
459	Audi	Q8	Diesel	Q8 S Line 50 Tdi Quattro Auto	223	0
460	Audi	Q8	Diesel	Q8 S Line 50Tdi Mhev Quattro A	218.5	0
461	Audi	Q8	Petrol	Q8 S Line 55 Tfsi Mhev Quat A	245	0
462	Audi	Q8	Petrol	Q8 S Line 55 Tfsi Quattro Auto	245	0
463	Audi	Q8	Diesel	Q8 S Line Ed 1 50 Tdi Quat A	225	0
464	Audi	Q8	Diesel	Q8 S-Ln Vorsprung50 Tdi Quat A	226	0
465	Audi	Q8	Diesel	Q8 Sln Blk Ed 50 Tdi Mhev Qt A	220	0
466	Audi	Q8	Petrol	Q8 Sln Blk Ed 55Tfsi Mhev Qt A	244.5	0
467	Audi	Q8	Petrol	Q8 Sln Ed 1 55 Tfsi Mhev Qto A	248	0
468	Audi	Q8	Petrol	Q8 Sln Vor 55 Tfsi Mhev Quat A	249	0
469	Audi	Q8	Diesel	Q8 Sln Vsprung 50Tdi Mhev Qt A	223	0
470	Audi	R8	Petrol	R8 Performance V10 Quattro S-A	301	0
471	Audi	R8	Petrol	R8 Prfrm Carbn Blk V10 Quat Sa	301	0
472	Audi	R8	Petrol	R8 V10 Quattro S-A	298	0
473	Audi	R8	Petrol	R8 V10 Rwd S-A	289	0
474	Audi	RS 3	Petrol	Rs 3 Audi Sprt Ed Tfsi Quat Sa	216	0
475	Audi	RS 3	Petrol	Rs 3 Tfsi Quattro S-A	214	0
476	Audi	RS 4	Petrol	Rs 4 Audi Sport Ed Tfsi Quat A	220	0
477	Audi	RS 4	Petrol	Rs 4 Bronze Ed Tfsi Quat A	223	0
478	Audi	RS 4	Petrol	Rs 4 Carbon Black Tfsi Quat A	225	0
479	Audi	RS 4	Petrol	Rs 4 Tfsi Quattro Auto	223	0
480	Audi	RS 4	Petrol	Rs 4 Vorsprung Tfsi Quattro A	226	0
481	Audi	RS 5	Petrol	Rs 5 Audi Sport Ed Tfsi Quat A	213	0
482	Audi	RS 5	Petrol	Rs 5 Carbon Black Tfsi Quat A	219	0
483	Audi	RS 5	Petrol	Rs 5 Tfsi Quattro Auto	219	0
484	Audi	RS 5	Petrol	Rs 5 Vorsprung Tfsi Quattro A	219	0
485	Audi	RS 6	Petrol	Rs 6 Crbn Blk Tfsi Mhev Quat A	289	0
486	Audi	RS 6	Petrol	Rs 6 Launch Ed Tfsi Mhev Qto A	290	0
487	Audi	RS 6	Petrol	Rs 6 Tfsi Mhev Quattro Auto	289	0
488	Audi	RS 6	Petrol	Rs 6 V-Sprung Tfsi Mhev Quat A	290	0
489	Audi	RS 7	Petrol	Rs 7 Crbn Blk Tfsi Mhev Quat A	286	0
490	Audi	RS 7	Petrol	Rs 7 Tfsi Mhev Quattro Auto	288	0
491	Audi	RS 7	Petrol	Rs 7 V-Sprung Tfsi Mhev Quat A	288	0
492	Audi	RS Q3	Petrol	Rs Q3 Sport Ed Tfsi Quattro Sa	231	0
493	Audi	RS Q3	Petrol	Rs Q3 Tfsi Quattro S-A	230	0
494	Audi	RS Q3	Petrol	Rs Q3 Vsprung Tfsi Quattro Sa	231	0
495	Audi	RS Q8	Petrol	Rs Q8 Carbn Blk Tfsi Mhev Qt A	317	0
496	Audi	RS Q8	Petrol	Rs Q8 Tfsi Mhev Quattro Auto	315	0
497	Audi	RS Q8	Petrol	Rs Q8 Vsprung Tfsi Mhev Quat A	318	0
498	Audi	S3	Petrol	S3 Black Ed Tfsi Quattro S-A	186	0
499	Audi	S3	Petrol	S3 Tfsi Quattro S-A	185	0
500	Audi	S4	Diesel	S4 Black Edition Tdi Quattro A	188	0
501	Audi	S4	Diesel	S4 Tdi Quattro Auto	186	0
502	Audi	S4	Diesel	S4 Vorsprung Tdi Quattro Auto	189	0
503	Audi	S5	Diesel	S5 Edition 1 Tdi Mhev Quat A	185	0
504	Audi	S5	Diesel	S5 Tdi Mhev Quattro Auto	183.5	0
505	Audi	S5	Diesel	S5 Vorsprung Tdi Mhev Quat A	187	0
506	Audi	S6	Diesel	S6 Tdi Quattro Auto	207	0
507	Audi	S6	Diesel	S6 Vorsprung Tdi Quattro Auto	210	0
508	Audi	S7	Diesel	S7 Tdi Quattro Auto	206	0
509	Audi	S7	Diesel	S7 Vorsprung Tdi Quattro Auto	208	0
510	Audi	S8	Petrol	S8 Tfsi Mhev Quattro Auto	263	0
511	Audi	S8	Petrol	S8 Vorsprung Tfsi Mhev Quat A	265	0
512	Audi	SQ2	Petrol	Sq2 Black Ed Tfsi Quat S-A	193	0
513	Audi	SQ2	Petrol	Sq2 Tfsi Quattro S-A	192	0
514	Audi	SQ2	Petrol	Sq2 Vorsprung Tfsi Quattro S-A	195	0
515	Audi	SQ5	Diesel	Sq5 Tdi Quattro Auto	220	0
516	Audi	SQ5	Diesel	Sq5 Vorsprung Tdi Quattro Auto	228	0
517	Audi	SQ7	Petrol	Sq7 Black Edition Tfsi Quat A	282	0
518	Audi	SQ7	Diesel	Sq7 Tdi Mhev Quattro Auto	248	0
519	Audi	SQ7	Petrol	Sq7 Tfsi Quattro Auto	277.5	0
520	Audi	SQ7	Diesel	Sq7 Vorsprung Tdi Mhev Quat A	251	0
521	Audi	SQ7	Petrol	Sq7 Vorsprung Tfsi Quattro A	281	0
522	Audi	SQ8	Petrol	Sq8 Black Edition Tfsi Quat A	289	0
523	Audi	SQ8	Diesel	Sq8 Tdi Mhev Quattro Auto	237	0
524	Audi	SQ8	Petrol	Sq8 Tfsi Quattro Auto	288	0
525	Audi	SQ8	Diesel	Sq8 Vorsprung Tdi Mhev Quat A	240	0
526	Audi	SQ8	Petrol	Sq8 Vorsprung Tfsi Quattro A	291	0
527	Audi	TT	Petrol	Tt S Line 40 Tfsi S-A	156	0
528	Audi	TT	Petrol	Tt S Line 45 Tfsi	162	0
529	Audi	TT	Petrol	Tt S Line 45 Tfsi Quattro S-A	183	0
530	Audi	TT	Petrol	Tt S Line 45 Tfsi S-A	165	0
531	Audi	TT	Petrol	Tt S Line Black Ed 40 Tfsi S-A	157	0
532	Audi	TT	Petrol	Tt S Line Black Ed 45 Tfsi	163	0
533	Audi	TT	Petrol	Tt S Line Black Ed 45 Tfsi S-A	166	0
534	Audi	TT	Petrol	Tt S Line Vorsprung 40 Tfsi Sa	158	0
535	Audi	TT	Petrol	Tt S Line Vorsprung 45 Tfsi	168	0
536	Audi	TT	Petrol	Tt S Line Vorsprung 45 Tfsi Sa	167	0
537	Audi	TT	Petrol	Tt S Ln Vsprung45 Tfsi Quat Sa	185	0
538	Audi	TT	Petrol	Tt S-Ln Blk Ed 45 Tfsi Quat Sa	184	0
539	Audi	TT	Petrol	Tt Sport 40 Tfsi S-A	155	0
540	Audi	TT	Petrol	Tt Sport 45 Tfsi	161	0
541	Audi	TT	Petrol	Tt Sport 45 Tfsi Quattro S-A	181	0
542	Audi	TT	Petrol	Tt Sport 45 Tfsi S-A	164	0
543	Audi	TT	Petrol	Tt Sport Edition 45 Tfsi S-A	164	0
544	Audi	TT	Petrol	Ttrs Audi Sprt Ed Tfsi Quat Sa	209	0
545	Audi	TT	Petrol	Ttrs Tfsi Quattro S-A	209	0
546	Audi	TT	Petrol	Ttrs Vorsprung Tfsi Quattro Sa	210	0
547	Audi	TT	Petrol	Tts Black Ed Tfsi Quattro S-A	182	0
548	Audi	TT	Petrol	Tts Tfsi Quattro S-A	182	0
549	Audi	TT	Petrol	Tts Vorsprung Tfsi Quattro S-A	183	0
550	BMW	116d	Diesel	116d	144	0
551	BMW	118d	Diesel	118d	146	0
552	BMW	118i	Petrol	118i	158	0
553	BMW	120d	Diesel	120d	152	0
554	BMW	120d	Diesel	120d xDrive	149	0
555	BMW	120i	Petrol	120i	175	0
556	BMW	125d	Diesel	125d	156	0
557	BMW	125i	Petrol	125i	176	0
558	BMW	216d	Diesel	216d	132	0
559	BMW	218d	Diesel	218d	148	0
560	BMW	218i	Petrol	218i	161	0
561	BMW	220d	Diesel	220d	152	0
562	BMW	220d	Diesel	220d xDrive	151	0
563	BMW	220i	Petrol	220i	169	0
564	BMW	225d	Diesel	225d	156	0
565	BMW	225xe	Hybrid	225xe iPerformance	64	125
566	BMW	230i	Petrol	230i	176	0
567	BMW	316d	Diesel	316d	160	0
568	BMW	318d	Diesel	318d	139	0
569	BMW	318i	Petrol	318i	182	0
570	BMW	320d	Diesel	320d	141	0
571	BMW	320d	Diesel	320d EffDyn Edition	108	0
572	BMW	320d	Diesel	320d Efficient Dynamics	151	0
573	BMW	320d	Diesel	320d xDrive	151	0
574	BMW	320i	Petrol	320i	154	0
575	BMW	320i	Petrol	320i xDrive	191	0
576	BMW	330d	Diesel	330d	164	0
577	BMW	330d	Diesel	330d xDrive	172	0
578	BMW	330e	Hybrid	330e	34	161
579	BMW	330e	Hybrid	330e iPerformance	46.5	114.5
580	BMW	330i	Petrol	330i	157	0
581	BMW	335d	Diesel	335d xDrive	190	0
582	BMW	340i	Petrol	340i	208	0
583	BMW	420d	Diesel	420d	155	0
584	BMW	420d	Diesel	420d xDrive	162	0
585	BMW	420i	Petrol	420i	176	0
586	BMW	420i	Petrol	420i xDrive	186	0
587	BMW	430d	Diesel	430d	177	0
588	BMW	430d	Diesel	430d xDrive	186	0
589	BMW	430i	Petrol	430i	181	0
590	BMW	435d	Diesel	435d xDrive	185	0
591	BMW	440i	Petrol	440i	196	0
592	BMW	518d	Diesel	518d	145	0
593	BMW	520d	Diesel	520d	153	0
594	BMW	520d	Diesel	520d EffDyn Edition	132	0
595	BMW	520d	Diesel	520d xDrive	163	0
596	BMW	520i	Petrol	520i	169	0
597	BMW	525d	Diesel	525d	169	0
598	BMW	530d	Diesel	530d	166	0
599	BMW	530d	Diesel	530d xDrive	185	0
600	BMW	530e	Hybrid	530e iPerformance	50	152
601	BMW	530e	Hybrid	530e xDrive iPerformance	49	181
602	BMW	530i	Petrol	530i	173	0
603	BMW	540i	Petrol	540i xDrive	211	0
604	BMW	620d	Diesel	620d	167.5	0
605	BMW	620d	Diesel	620d xDrive	176	0
606	BMW	630d	Diesel	630d	179	0
607	BMW	630d	Diesel	630d xDrive	193	0
608	BMW	630i	Petrol	630i	192	0
609	BMW	640d	Diesel	640d	147	0
610	BMW	640i	Petrol	640i xDrive	230	0
611	BMW	725d	Diesel	725d	163	0
612	BMW	725Ld	Diesel	725Ld	165	0
613	BMW	730d	Diesel	730d	172	0
614	BMW	730d	Diesel	730d xDrive	184	0
615	BMW	730Ld	Diesel	730Ld	174	0
616	BMW	740d	Diesel	740d xDrive	187	0
617	BMW	740e	Hybrid	740e iPerformance	64	156
618	BMW	740i	Petrol	740i	198	0
619	BMW	740Ld	Diesel	740Ld xDrive	189	0
620	BMW	740Le	Hybrid	740Le xDrive iPerformance	76.5	171
621	BMW	740Li	Petrol	740Li	201	0
622	BMW	745e	Hybrid	745e	50	175
623	BMW	745Le	Hybrid	745Le xDrive	60	186.5
624	BMW	750i	Petrol	750i xDrive	246	0
625	BMW	840d	Diesel	840d xDrive	185	0
626	BMW	840i	Petrol	840i	196	0
627	BMW	M135i	Petrol	M135i xDrive	181	0
628	BMW	M140i	Petrol	M140i	199	0
629	BMW	M2	Petrol	M2 Competition	222	0
630	BMW	M240i	Petrol	M240i	198	0
631	BMW	M3	Petrol	M3	194	0
632	BMW	M3	Petrol	M3 CS	198	0
633	BMW	M340i	Petrol	M340i xDrive	187	0
634	BMW	M4	Petrol	M4	228	0
635	BMW	M4	Petrol	M4 CS	197	0
636	BMW	M5	Petrol	M5	267	0
637	BMW	M5	Petrol	M5 Competition	267	0
638	BMW	M760Li	Petrol	M760Li xDrive	306	0
639	BMW	M8	Petrol	M8 Competition	253	0
640	BMW	M850i	Petrol	M850i xDrive	244	0
641	BMW	X1	Diesel	X1 sDrive18d	143	0
642	BMW	X1	Petrol	X1 sDrive18i	158	0
643	BMW	X1	Petrol	X1 sDrive20i	169	0
644	BMW	X1	Diesel	X1 xDrive18d	155	0
645	BMW	X1	Diesel	X1 xDrive20d	157	0
646	BMW	X1	Petrol	X1 xDrive20i	169	0
647	BMW	X2	Petrol	X2 M35i	188	0
648	BMW	X2	Diesel	X2 sDrive18d	141	0
649	BMW	X2	Petrol	X2 sDrive18i	153	0
650	BMW	X2	Petrol	X2 sDrive20i	164	0
651	BMW	X2	Diesel	X2 xDrive18d	151	0
652	BMW	X2	Diesel	X2 xDrive20d	153	0
653	BMW	X2	Petrol	X2 xDrive20i	170	0
654	BMW	X3	Petrol	X3 M Competition	262	0
655	BMW	X3	Diesel	X3 M40d	204	0
656	BMW	X3	Petrol	X3 M40i	241	0
657	BMW	X3	Diesel	X3 xDrive20d	180	0
658	BMW	X3	Petrol	X3 xDrive20i	213	0
659	BMW	X3	Diesel	X3 xDrive30d	195	0
660	BMW	X4	Petrol	X4 M Competition	260	0
661	BMW	X4	Diesel	X4 M40d	201	0
662	BMW	X4	Petrol	X4 M40i	240	0
663	BMW	X4	Diesel	X4 xDrive20d	180	0
664	BMW	X4	Petrol	X4 xDrive20i	213	0
665	BMW	X4	Diesel	X4 xDrive30d	193	0
666	BMW	X5	Petrol	X5 M	258	0
667	BMW	X5	Diesel	X5 M50d	223	0
668	BMW	X5	Petrol	X5 M50i	280	0
669	BMW	X5	Diesel	X5 xDrive30d	209	0
670	BMW	X5	Diesel	X5 xDrive40d	226.5	0
671	BMW	X5	Petrol	X5 xDrive40i	249	0
672	BMW	X5	Hybrid	X5 xDrive45e	32	248
673	BMW	X5	Petrol	X5 xDrive50i	226	0
674	BMW	X6	Diesel	X6 M50d	245	0
675	BMW	X6	Petrol	X6 M50i	276	0
676	BMW	X6	Diesel	X6 xDrive30d	224	0
677	BMW	X6	Diesel	X6 xDrive40d	224	0
678	BMW	X6	Petrol	X6 xDrive40i	236.5	0
679	BMW	X7	Diesel	X7 M50d	236	0
680	BMW	X7	Petrol	X7 M50i	293	0
681	BMW	X7	Diesel	X7 xDrive30d	221	0
682	BMW	X7	Petrol	X7 xDrive40i	260	0
683	BMW	Z4	Petrol	Z4 M40i	193	0
684	BMW	Z4	Petrol	Z4 sDrive20i	163	0
685	BMW	Z4	Petrol	Z4 sDrive30i	169	0
686	BMW i	i3	Electric	i3	0	156
687	BMW i	i3	Electric	i3 94	0	159
688	BMW i	i3	Hybrid	i3 94 REX	4	138
689	BMW i	i3s	Electric	i3s	0	164
690	BMW i	i3s	Electric	i3s 94	0	163
691	BMW i	i3s	Hybrid	i3s 94 REX	5	146
692	BMW i	i8	Hybrid	i8	50	129
693	Citroen	Berlingo	Diesel	Berlingo 650 En-Prise Bhdi Ss	144	0
694	Citroen	Berlingo	Diesel	Berlingo 650 En-Prise Bluehdi	149	0
695	Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi	147.5	0
696	Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi S S	141	0
697	Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi S S Auto	146	0
698	Citroen	Berlingo	Petrol	Berlingo Feel Puretech S S	154	0
699	Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi	153	0
700	Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi S S	147	0
701	Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi S S A	148	0
702	Citroen	Berlingo	Petrol	Berlingo Flair Puretech S S	162	0
703	Citroen	Berlingo	Petrol	Berlingo Flair Puretech S S A	154	0
704	Citroen	Berlingo	Diesel	Berlingo Flair Xtr B-Hdi Ss A	152	0
705	Citroen	Berlingo	Diesel	Berlingo Flair Xtr Bluehdi	150	0
706	Citroen	Berlingo	Diesel	Berlingo Flair Xtr Bluehdi S S	149	0
707	Citroen	Berlingo	Petrol	Berlingo Multispace Feel	135	0
708	Citroen	Berlingo	Diesel	Berlingo Multispace Feel B-Hdi	113	0
709	Citroen	C1	Petrol	C1 Airscape Feel	110.5	0
710	Citroen	C1	Petrol	C1 Airscape Flair	110	0
711	Citroen	C1	Petrol	C1 Airscape Shine	110	0
712	Citroen	C1	Petrol	C1 Airscape Urban Ride	111	0
713	Citroen	C1	Petrol	C1 Feel	110	0
714	Citroen	C1	Petrol	C1 Flair	110	0
715	Citroen	C1	Petrol	C1 Jcc +	110	0
716	Citroen	C1	Petrol	C1 Origins	111	0
717	Citroen	C1	Petrol	C1 Sense	109	0
718	Citroen	C1	Petrol	C1 Shine	110	0
719	Citroen	C1	Petrol	C1 Touch	108	0
720	Citroen	C1	Petrol	C1 Urban Ride	110	0
721	Citroen	C3	Petrol	C3 Aircross C-Series Ptech S S	141	0
722	Citroen	C3	Diesel	C3 Aircross Feel Bluehdi S S	126	0
723	Citroen	C3	Petrol	C3 Aircross Feel Puretech S S	141	0
724	Citroen	C3	Diesel	C3 Aircross Flair Bluehdi S S	125	0
725	Citroen	C3	Petrol	C3 Aircross Flair P-Tech Ss A	150	0
726	Citroen	C3	Petrol	C3 Aircross Flair Puretech S S	143	0
727	Citroen	C3	Petrol	C3 Aircross Origins P-Tech S S	141	0
728	Citroen	C3	Petrol	C3 Aircross Rip Curl P-Tech Ss	142	0
729	Citroen	C3	Diesel	C3 Feel Bluehdi S S	118	0
730	Citroen	C3	Petrol	C3 Feel Nav Ed Puretech Ss	137	0
731	Citroen	C3	Petrol	C3 Feel Puretech S S	130	0
732	Citroen	C3	Diesel	C3 Flair + Bluehdi S S	118	0
733	Citroen	C3	Petrol	C3 Flair + Puretech S S	130	0
734	Citroen	C3	Petrol	C3 Flair + Puretech S S Auto	138	0
735	Citroen	C3	Diesel	C3 Flair Bluehdi S S	122	0
736	Citroen	C3	Petrol	C3 Flair Nav Ed Puretech S S	134	0
737	Citroen	C3	Petrol	C3 Flair Puretech	134	0
738	Citroen	C3	Petrol	C3 Flair Puretech S S	130	0
739	Citroen	C3	Petrol	C3 Flair Puretech S S Auto	137	0
740	Citroen	C3	Petrol	C3 Origins Puretech S S	131	0
741	Citroen	C3	Petrol	C3 Sense Puretech S S	123	0
742	Citroen	C3	Diesel	C3 Shine + Bluehdi S S	113	0
743	Citroen	C3	Petrol	C3 Shine + Puretech S S	124	0
744	Citroen	C3	Petrol	C3 Shine + Puretech S S Auto	135	0
745	Citroen	C3	Petrol	C3 Shine Puretech S S	124	0
746	Citroen	C3	Petrol	C3 Shine Puretech S S Auto	134	0
747	Citroen	C3	Petrol	C3 Touch Puretech	132	0
748	Citroen	C3	Petrol	C3 Touch Puretech S S	130	0
749	Citroen	C4	Petrol	C4 Cactus Feel Puretech S S	134	0
750	Citroen	C4	Diesel	C4 Cactus Flair Bluehdi S S	119	0
751	Citroen	C4	Diesel	C4 Cactus Flair Bluehdi S S A	133	0
752	Citroen	C4	Petrol	C4 Cactus Flair Puretech S S	132	0
753	Citroen	C4	Petrol	C4 Cactus Flair Puretech S S A	138	0
754	Citroen	C4	Petrol	C4 Cactus Origins Puretech S S	135	0
755	Citroen	C4	Diesel	C4 Flair Bluehdi S S	118	0
756	Citroen	C4	Diesel	C4 Gr Stourer Feel + Bhdi Ss A	136	0
757	Citroen	C4	Petrol	C4 Gr Stourer Feel + Ptch Ss A	153	0
758	Citroen	C4	Petrol	C4 Gr Stourer Feel Ptech S S	144.5	0
759	Citroen	C4	Petrol	C4 Gr Stourer Feel Ptech S S A	160	0
760	Citroen	C4	Diesel	C4 Gr Stourer Flair + Bhdi Ss	137	0
761	Citroen	C4	Petrol	C4 Gr Stourer Flair + Ptech Ss	145	0
762	Citroen	C4	Diesel	C4 Gr Stourer Flair Bhdi S S	139	0
763	Citroen	C4	Diesel	C4 Gr Stourer Flair Bhdi Ss A	143	0
764	Citroen	C4	Petrol	C4 Gr Stourer Flair Ptech S S	144	0
765	Citroen	C4	Diesel	C4 Gr Stourer Flair+ Bhdi Ss A	138	0
766	Citroen	C4	Petrol	C4 Gr Stourer Flair+ Ptch Ss A	154	0
767	Citroen	C4	Diesel	C4 Gr Stourer Sense Bhdi Ss A	136	0
768	Citroen	C4	Diesel	C4 Gr Stourer Shine Bhdi Ss A	137	0
769	Citroen	C4	Petrol	C4 Gr Stourer Tch Ed Ptech Ss	142	0
770	Citroen	C4	Diesel	C4 Gr Stourer Touch Ed Bhdi Ss	137	0
771	Citroen	C4	Petrol	C4 Gr Stourer Touch+ Ptch Ss A	152	0
772	Citroen	C4	Diesel	C4 Grand Stourer Feel+ Bhdi Ss	137	0
773	Citroen	C4	Petrol	C4 Grand Stourer Feel+ Ptch Ss	144	0
774	Citroen	C4	Petrol	C4 Grand Stourer Live Ptech Ss	139	0
775	Citroen	C4	Diesel	C4 Grand Stourer Tch + Bhdi Ss	136	0
776	Citroen	C4	Petrol	C4 Grand Stourer Tch + Ptch Ss	143	0
777	Citroen	C5	Hybrid	C5 Aircorss Flair + Phev A	32	0
778	Citroen	C5	Diesel	C5 Aircross Feel Bhdi Ss A	137	0
779	Citroen	C5	Diesel	C5 Aircross Feel Bluehdi S S	137.5	0
780	Citroen	C5	Petrol	C5 Aircross Feel Puretech S S	149	0
781	Citroen	C5	Diesel	C5 Aircross Flair + Bhdi Ss	140	0
782	Citroen	C5	Diesel	C5 Aircross Flair + Bhdi Ss A	139	0
783	Citroen	C5	Petrol	C5 Aircross Flair + P-Tech Ss	152	0
784	Citroen	C5	Petrol	C5 Aircross Flair + Ptech Ss A	156	0
785	Citroen	C5	Diesel	C5 Aircross Flair Bhdi S S A	137	0
786	Citroen	C5	Diesel	C5 Aircross Flair Bluehdi S S	138	0
787	Citroen	C5	Petrol	C5 Aircross Flair P-Tech Ss A	154	0
788	Citroen	C5	Hybrid	C5 Aircross Flair Phev Auto	32	0
789	Citroen	C5	Petrol	C5 Aircross Flair Puretech S S	149	0
790	Citroen	C5	Petrol	C5 Aircross Shine + Ptech Ss A	155	0
791	Citroen	C5	Petrol	C5 Aircross Shine Ptech S S A	148	0
792	Citroen	C5	Petrol	C5 Aircross Shine Puretech S S	146	0
793	Citroen	Dispatch	Diesel	Dispatch 1000 En-Prise Bhdi Ss	176	0
794	Citroen	Dispatch	Diesel	Dispatch Combi Bluehdi S S	168	0
795	Citroen	E-Spacetourer	Electric	E-Spacetourer Business	0	254
796	Citroen	E-Spacetourer	Electric	E-Spacetourer Feel	0	251
797	Citroen	Relay	Diesel	Relay 35 + Bluehdi	141	0
798	Citroen	Relay	Diesel	Relay 35 L4 Heavy + Bluehdi Ss	269	0
799	Citroen	Spacetourer	Diesel	Spacetourer Bnes Lnge Bhdi Ssa	197	0
800	Citroen	Spacetourer	Diesel	Spacetourer Business Bhdi S S	168	0
801	Citroen	Spacetourer	Diesel	Spacetourer Business Bhdi Ss A	191	0
802	Citroen	Spacetourer	Diesel	Spacetourer Feel Bluehdi S S	167	0
803	Citroen	Spacetourer	Diesel	Spacetourer Feel Bluehdi S S A	188.5	0
804	Citroen	Spacetourer	Diesel	Spacetourer Flair Bluehdi S S	189	0
805	Citroen	Spacetourer	Diesel	Spacetourer Flair Bluehdi Ss A	193	0
806	Citroen	Spacetourer	Diesel	Spacetourer Ripcurl Bluehdi Ss	175	0
807	Cupra	Formentor	Petrol	Formentor V1 Tsi S-A	151	0
808	Cupra	Formentor	Petrol	Formentor Vz Edition Tsi 4D Sa	193	0
809	Cupra	Formentor	Petrol	Formentor Vz2 Tsi 4Drive S-A	193	0
810	Cupra	Leon	Hybrid	Leon First Edition Phev S-A	31	156
811	Cupra	Leon	Hybrid	Leon Vz3 Phev S-A	31	156
812	Dacia	Duster	Petrol	Duster Access Tce 4X2	139	0
813	Dacia	Duster	Diesel	Duster Comfort Blue Dci 4X2	129	0
814	Dacia	Duster	Diesel	Duster Comfort Blue Dci 4X4	146	0
815	Dacia	Duster	Lpg	Duster Comfort Lpg Tce 4X2	129	0
816	Dacia	Duster	Petrol	Duster Comfort Sce 4X2	176.5	0
817	Dacia	Duster	Petrol	Duster Comfort Tce 4X2	149	0
818	Dacia	Duster	Diesel	Duster Essential Blue Dci 4X2	142	0
819	Dacia	Duster	Lpg	Duster Essential Lpg Tce 4X2	129	0
820	Dacia	Duster	Petrol	Duster Essential Tce 4X2	141	0
821	Dacia	Duster	Diesel	Duster Prestige Blue Dci 4X2	132	0
822	Dacia	Duster	Diesel	Duster Prestige Blue Dci 4X4	148	0
823	Dacia	Duster	Lpg	Duster Prestige Lpg Tce 4X2	133	0
824	Dacia	Duster	Petrol	Duster Prestige Sce 4X2	179	0
825	Dacia	Duster	Petrol	Duster Prestige Tce 4X2	153	0
826	Dacia	Duster	Petrol	Duster Prestige Tce 4X4	172	0
827	Dacia	Duster	Diesel	Duster Se Twenty Blue Dci 4X2	132	0
828	Dacia	Duster	Diesel	Duster Se Twenty Blue Dci 4X4	148	0
829	Dacia	Duster	Lpg	Duster Se Twenty Lpg Tce 4X2	129	0
830	Dacia	Duster	Petrol	Duster Se Twenty Tce 4X2	153	0
831	Dacia	Duster	Diesel	Duster Techroad Blue Dci 4X2	137	0
832	Dacia	Duster	Diesel	Duster Techroad Blue Dci 4X4	150	0
833	Dacia	Duster	Petrol	Duster Techroad Tce 4X2	163	0
834	Dacia	Logan	Petrol	Logan Mcv Access Sce	129	0
835	Dacia	Logan	Diesel	Logan Mcv Comfort Blue Dci	120	0
836	Dacia	Logan	Lpg	Logan Mcv Comfort Lpg Tce	116	0
837	Dacia	Logan	Petrol	Logan Mcv Comfort Sce	138	0
838	Dacia	Logan	Petrol	Logan Mcv Comfort Tce	140	0
839	Dacia	Logan	Diesel	Logan Mcv Essential Blue Dci	120	0
840	Dacia	Logan	Lpg	Logan Mcv Essential Lpg Tce	116	0
841	Dacia	Logan	Petrol	Logan Mcv Essential Sce	130	0
842	Dacia	Logan	Petrol	Logan Mcv Essential Tce	135	0
843	Dacia	Logan	Petrol	Logan Mcv Stepway Comfort Tce	146	0
844	Dacia	Logan	Diesel	Logan Mcv Stepway Comfrt B-Dci	124	0
845	Dacia	Logan	Diesel	Logan Mcv Stepway Techroad Dci	124	0
846	Dacia	Logan	Petrol	Logan Mcv Stepway Techroad Tce	146	0
847	Dacia	Logan	Petrol	Logan Mcv Stpway Se Twenty Tce	139	0
848	Dacia	Logan	Lpg	Logan Mcv Sway Comfort Lpg Tce	121	0
849	Dacia	Logan	Diesel	Logan Mcv Sway Se Twenty B-Dci	125	0
850	Dacia	Logan	Lpg	Logan Mcv Sway Se Twnty Lpgtce	121	0
851	Dacia	Sandero	Petrol	Sandero Access Sce	130	0
852	Dacia	Sandero	Diesel	Sandero Comfort Blue Dci	120	0
853	Dacia	Sandero	Lpg	Sandero Comfort Lpg Tce	116	0
854	Dacia	Sandero	Petrol	Sandero Comfort Sce	131	0
855	Dacia	Sandero	Petrol	Sandero Comfort Tce	134	0
856	Dacia	Sandero	Diesel	Sandero Essential Blue Dci	119	0
857	Dacia	Sandero	Lpg	Sandero Essential Lpg Tce	116	0
858	Dacia	Sandero	Petrol	Sandero Essential Sce	131	0
859	Dacia	Sandero	Petrol	Sandero Essential Tce	134	0
860	Dacia	Sandero	Diesel	Sandero Stepway Comfort B-Dci	126	0
861	Dacia	Sandero	Petrol	Sandero Stepway Comfort Tce	141	0
862	Dacia	Sandero	Diesel	Sandero Stepway Essential Bdci	126	0
863	Dacia	Sandero	Petrol	Sandero Stepway Essential Sce	139	0
864	Dacia	Sandero	Petrol	Sandero Stepway Essential Tce	141	0
865	Dacia	Sandero	Petrol	Sandero Stepway Se Twenty Tce	141	0
866	Dacia	Sandero	Petrol	Sandero Stepway Techroad Tce	149	0
867	Dacia	Sandero	Lpg	Sandero Stpway Comfort Lpg Tce	123	0
868	Dacia	Sandero	Lpg	Sandero Sway Essential Lpg Tce	123	0
869	Dacia	Sandero	Lpg	Sandero Sway Se Twenty Lpg Tce	123	0
870	DS	3	Electric	Ds 3 Crossback La Premiere Ev	0	177
871	DS	3	Electric	Ds 3 Crossback Prestige Ev	0	177
872	DS	3	Electric	Ds 3 Crossback Prfrmnc Line Ev	0	177
873	DS	3	Electric	Ds 3 Crossback Ultra Prstge Ev	0	177
874	DS	3	Petrol	Ds3 C-Back Elegance Ptech Ss	127	0
875	DS	3	Petrol	Ds3 C-Back Elegance Ptech Ss A	141	0
876	DS	3	Petrol	Ds3 C-Back La Prem P-Tech Ss A	144	0
877	DS	3	Petrol	Ds3 C-Back Pfrmc Ln Ptch Ss	127	0
878	DS	3	Diesel	Ds3 C-Back Pfrmnc Ln B-Hdi S S	123	0
879	DS	3	Petrol	Ds3 C-Back Pfrmnc Ln Ptch Ss A	142	0
880	DS	3	Petrol	Ds3 C-Back Prestige Ptech Ss	127	0
881	DS	3	Petrol	Ds3 C-Back Ultraprstg Ptch Ssa	142	0
882	DS	3	Diesel	Ds3 C-Bck Ultraprstg B-Hdi S S	124	0
883	DS	3	Diesel	Ds3 Crossback Elegance Bhdi Ss	123	0
884	DS	3	Diesel	Ds3 Crossback Prestige Bhdi Ss	125	0
885	DS	3	Petrol	Ds3 Crossback Prstge Ptch Ss A	141	0
886	DS	7	Diesel	Ds7 C-Back Elegance B-Hdi Ss A	142	0
887	DS	7	Petrol	Ds7 C-Back Elegance Ptech Ss	145	0
888	DS	7	Petrol	Ds7 C-Back Elegance Ptech Ss A	167	0
889	DS	7	Petrol	Ds7 C-Back Pfrmc Ln Ptch Ss	148	0
890	DS	7	Diesel	Ds7 C-Back Pfrmnc Ln B-Hdi S S	148	0
891	DS	7	Diesel	Ds7 C-Back Pfrmnc Ln Bhdi Ss A	143	0
892	DS	7	Hybrid	Ds7 C-Back Pfrmnc Ln Phev 4X4A	30	0
893	DS	7	Petrol	Ds7 C-Back Pfrmnc Ln Ptch Ss A	167	0
894	DS	7	Petrol	Ds7 C-Back Prestige Ptech Ss	148	0
895	DS	7	Diesel	Ds7 C-Back Ultraprstg Bhdiss A	169	0
896	DS	7	Petrol	Ds7 C-Back Ultraprstg Ptch Ssa	170	0
897	DS	7	Hybrid	Ds7 Cback Ultra Prstg Phev4X4A	35	0
898	DS	7	Diesel	Ds7 Crossback Prestige Bhdi Ss	147	0
899	DS	7	Diesel	Ds7 Crossback Prstge Bhdi Ss A	146	0
900	DS	7	Hybrid	Ds7 Crossback Prstge Phev4X4A	31	0
901	DS	7	Petrol	Ds7 Crossback Prstge Ptch Ss A	164	0
902	Fiat	500	Petrol	500 120Th Anniversary	143.5	0
903	Fiat	500	Petrol	500 C 120Th Anniversary	154	0
904	Fiat	500	Petrol	500 C 120Th Anniversary S-A	143	0
905	Fiat	500	Petrol	500 C Collezione	156	0
906	Fiat	500	Petrol	500 C Dolcevita	132	0
907	Fiat	500	Petrol	500 C Dolcevita Mhev	122	0
908	Fiat	500	Petrol	500 C Dolcevita S-A	140	0
909	Fiat	500	Petrol	500 C Launch Edition Mhev	121	0
910	Fiat	500	Petrol	500 C Lounge	131	0
911	Fiat	500	Petrol	500 C Lounge Mhev	120	0
912	Fiat	500	Petrol	500 C Lounge S-A	140	0
913	Fiat	500	Petrol	500 C Pop	139	0
914	Fiat	500	Petrol	500 C Pop Mhev	121	0
915	Fiat	500	Petrol	500 C Pop S-A	140	0
916	Fiat	500	Petrol	500 C Rockstar	140	0
917	Fiat	500	Petrol	500 C Rockstar Mhev	121	0
918	Fiat	500	Petrol	500 C Rockstar S-A	138	0
919	Fiat	500	Petrol	500 C Rockstar Twinair	127	0
920	Fiat	500	Petrol	500 C S	144	0
921	Fiat	500	Petrol	500 C S Twinair	125	0
922	Fiat	500	Petrol	500 C Sport	139	0
923	Fiat	500	Petrol	500 C Sport Mhev	119	0
924	Fiat	500	Petrol	500 C Sport S-A	138	0
925	Fiat	500	Petrol	500 C Sport Twinair	124	0
926	Fiat	500	Petrol	500 C Star	132	0
927	Fiat	500	Petrol	500 C Star Mhev	121	0
928	Fiat	500	Petrol	500 C Star S-A	141	0
929	Fiat	500	Petrol	500 C Star Twinair	127	0
930	Fiat	500	Petrol	500 Collezione	136	0
931	Fiat	500	Petrol	500 Dolcevita	131	0
932	Fiat	500	Petrol	500 Dolcevita Mhev	119	0
933	Fiat	500	Petrol	500 Dolcevita S-A	137	0
934	Fiat	500	Petrol	500 Launch Edition Mhev	120	0
935	Fiat	500	Petrol	500 Lounge	129	0
936	Fiat	500	Petrol	500 Lounge Mhev	119	0
937	Fiat	500	Petrol	500 Lounge S-A	138	0
938	Fiat	500	Petrol	500 Lounge Twinair	123	0
939	Fiat	500	Petrol	500 Pop	139	0
940	Fiat	500	Petrol	500 Pop Mhev	119	0
941	Fiat	500	Petrol	500 Pop S-A	138	0
942	Fiat	500	Petrol	500 Rockstar	139	0
943	Fiat	500	Petrol	500 Rockstar Mhev	120	0
944	Fiat	500	Petrol	500 Rockstar S-A	136	0
945	Fiat	500	Petrol	500 Rockstar Twinair	123	0
946	Fiat	500	Petrol	500 S	142	0
947	Fiat	500	Petrol	500 S Twinair	123	0
948	Fiat	500	Petrol	500 Sport	138	0
949	Fiat	500	Petrol	500 Sport Mhev	119	0
950	Fiat	500	Petrol	500 Sport S-A	135	0
951	Fiat	500	Petrol	500 Sport Twinair	123	0
952	Fiat	500	Petrol	500 Star	130	0
953	Fiat	500	Petrol	500 Star Mhev	119	0
954	Fiat	500	Petrol	500 Star S-A	138	0
955	Fiat	500	Petrol	500 Star Twinair	125	0
956	Fiat	500	Petrol	500L 120Th Anniversary	179	0
957	Fiat	500	Petrol	500L City Cross	173	0
958	Fiat	500	Petrol	500L Cross	174	0
959	Fiat	500	Petrol	500L Urban	168	0
960	Fiat	500	Petrol	500X 120Th Anniversary	152	0
961	Fiat	500	Petrol	500X 120Th Anniversary S-A	157	0
962	Fiat	500	Petrol	500X City Cross	151	0
963	Fiat	500	Petrol	500X City Cross S-A	155	0
964	Fiat	500	Petrol	500X Cross	149	0
965	Fiat	500	Petrol	500X Cross +	143	0
966	Fiat	500	Petrol	500X Cross S-A	153.5	0
967	Fiat	500	Petrol	500X Lounge	148	0
968	Fiat	500	Petrol	500X Lounge S-A	153	0
969	Fiat	500	Petrol	500X S-Design	153	0
970	Fiat	500	Petrol	500X S-Design S-A	157	0
971	Fiat	500	Petrol	500X Sport	153	0
972	Fiat	500	Petrol	500X Sport S-A	162	0
973	Fiat	500	Petrol	500X Urban	148	0
974	Fiat	Ducato	Diesel	Ducato 30 Combi Multijet Ii	179	0
975	Fiat	Fiorino	Diesel	Fiorino 16V Ad Multijet Ii S S	137	0
976	Fiat	Hymer	Petrol	Hymer T Cl 698	158	0
977	Fiat	Panda	Petrol	Panda City Cross	149	0
978	Fiat	Panda	Petrol	Panda City Cross Mhev	127	0
979	Fiat	Panda	Petrol	Panda City Life Mhev	124.5	0
980	Fiat	Panda	Petrol	Panda Cross Twinair	166	0
981	Fiat	Panda	Petrol	Panda Cross Twinair 4X4	156	0
982	Fiat	Panda	Petrol	Panda Easy	133	0
983	Fiat	Panda	Petrol	Panda Easy Mhev	125	0
984	Fiat	Panda	Petrol	Panda Lounge	136	0
985	Fiat	Panda	Petrol	Panda Lounge Twinair	131	0
986	Fiat	Panda	Petrol	Panda Pop	132	0
987	Fiat	Panda	Petrol	Panda Sport Mhev	125	0
988	Fiat	Panda	Petrol	Panda Trussardi	150	0
989	Fiat	Panda	Petrol	Panda Trussardi Mhev	126	0
990	Fiat	Panda	Petrol	Panda Twinair 4X4	166	0
991	Fiat	Panda	Petrol	Panda Waze Edition	149	0
992	Fiat	Panda	Petrol	Panda Waze Edition Mhev	126	0
993	Fiat	Panda	Petrol	Panda Waze Edition Twinair 4X4	166	0
994	Fiat	Panda	Petrol	Panda Wild Twinair 4X4	156	0
995	Fiat	Qubo	Petrol	Qubo Lounge	192	0
996	Fiat	Qubo	Diesel	Qubo Lounge Multijet	149	0
997	Fiat	Qubo	Petrol	Qubo Pop	187	0
998	Fiat	Qubo	Diesel	Qubo Trekking Multijet	148	0
999	Fiat	Rapido	Diesel	Rapido 650F Auto	227	0
1000	Fiat	Talento	Diesel	Talento Lounge Multijet Ii	193	0
1001	Fiat	Tipo	Petrol	Tipo Cross	131	0
1002	Fiat	Tipo	Petrol	Tipo Easy	160	0
1003	Fiat	Tipo	Petrol	Tipo Easy +	174	0
1004	Fiat	Tipo	Petrol	Tipo Easy + T-Jet	169.5	0
1005	Fiat	Tipo	Petrol	Tipo Lounge	161	0
1006	Fiat	Tipo	Diesel	Tipo Lounge Multijet	135	0
1007	Fiat	Tipo	Petrol	Tipo Lounge T-Jet	163	0
1008	Fiat	Tipo	Petrol	Tipo Mirror	161	0
1009	Fiat	Tipo	Diesel	Tipo Mirror Multijet	135	0
1010	Fiat	Tipo	Petrol	Tipo Mirror T-Jet	163	0
1011	Fiat	Tipo	Petrol	Tipo S-Design	164	0
1012	Fiat	Tipo	Petrol	Tipo S-Design T-Jet	168	0
1013	Fiat	Tipo	Petrol	Tipo Sport	164	0
1014	Fiat	Tipo	Petrol	Tipo Sport T-Jet	172	0
1015	Fiat	Tipo	Petrol	Tipo Street	156	0
1016	Ford	Allied	Diesel	Allied Procab	224.5	0
1017	Ford	Allied	Diesel	Allied Procab Auto	223	0
1018	Ford	Benimar	Petrol	Benimar Tessoro T483	136	0
1019	Ford	Chausson	Petrol	Chausson 757 Auto	133	0
1020	Ford	Chausson	Diesel	Chausson Titanium 767Ga Auto	227	0
1021	Ford	Ecosport	Petrol	Ecosport St-Line	147	0
1022	Ford	Ecosport	Petrol	Ecosport St-Line Auto	166	0
1023	Ford	Ecosport	Diesel	Ecosport St-Line Ecoblue	139	0
1024	Ford	Ecosport	Diesel	Ecosport St-Line Tdci	135	0
1025	Ford	Ecosport	Petrol	Ecosport Titanium	146	0
1026	Ford	Ecosport	Petrol	Ecosport Titanium Auto	166	0
1027	Ford	Ecosport	Diesel	Ecosport Titanium Ecoblue	130	0
1028	Ford	Ecosport	Diesel	Ecosport Titanium Tdci	130	0
1029	Ford	Ecosport	Diesel	Ecosport Titanium Tdci 4X4	159	0
1030	Ford	Ecosport	Petrol	Ecosport Zetec	145	0
1031	Ford	Ecosport	Petrol	Ecosport Zetec Auto	164	0
1032	Ford	Ecosport	Diesel	Ecosport Zetec Ecoblue	128	0
1033	Ford	Ecosport	Diesel	Ecosport Zetec Tdci	132	0
1034	Ford	Fiesta	Petrol	Fiesta	116	0
1035	Ford	Fiesta	Diesel	Fiesta Active 1 Tdci	133	0
1036	Ford	Fiesta	Petrol	Fiesta Active 1 Turbo	135	0
1037	Ford	Fiesta	Petrol	Fiesta Active 1 Turbo Auto	156	0
1038	Ford	Fiesta	Petrol	Fiesta Active B And O Play T	136	0
1039	Ford	Fiesta	Petrol	Fiesta Active Edition T Mhev	119	0
1040	Ford	Fiesta	Diesel	Fiesta Active Edition Tdci	116	0
1041	Ford	Fiesta	Petrol	Fiesta Active Edition Turbo	120	0
1042	Ford	Fiesta	Petrol	Fiesta Active Edition Turbo A	157	0
1043	Ford	Fiesta	Petrol	Fiesta Active X Ed Turbo Auto	152	0
1044	Ford	Fiesta	Petrol	Fiesta Active X Edition T Mhev	123	0
1045	Ford	Fiesta	Diesel	Fiesta Active X Edition Tdci	120	0
1046	Ford	Fiesta	Petrol	Fiesta Active X Edition Turbo	124	0
1047	Ford	Fiesta	Petrol	Fiesta Active X Turbo	136	0
1048	Ford	Fiesta	Petrol	Fiesta Active X Turbo Auto	156	0
1049	Ford	Fiesta	Petrol	Fiesta B And O Play Titanium T	128	0
1050	Ford	Fiesta	Petrol	Fiesta Sport Tdci	150	0
1051	Ford	Fiesta	Petrol	Fiesta St Edition Turbo	149	0
1052	Ford	Fiesta	Petrol	Fiesta St Performance Ed Turbo	158	0
1053	Ford	Fiesta	Petrol	Fiesta St-2 Turbo	158	0
1054	Ford	Fiesta	Petrol	Fiesta St-3 Turbo	158	0
1055	Ford	Fiesta	Petrol	Fiesta St-Line Edition T Mhev	117	0
1056	Ford	Fiesta	Diesel	Fiesta St-Line Edition Tdci	115	0
1057	Ford	Fiesta	Petrol	Fiesta St-Line Edition Turbo A	155	0
1058	Ford	Fiesta	Diesel	Fiesta St-Line Tdci	115	0
1059	Ford	Fiesta	Petrol	Fiesta St-Line Turbo	132	0
1060	Ford	Fiesta	Petrol	Fiesta St-Line Turbo Auto	154	0
1061	Ford	Fiesta	Petrol	Fiesta St-Line X Ed Turbo Auto	133	0
1062	Ford	Fiesta	Diesel	Fiesta St-Line X Edition Tdci	119	0
1063	Ford	Fiesta	Petrol	Fiesta St-Line X Edition Turbo	130	0
1064	Ford	Fiesta	Diesel	Fiesta St-Line X Tdci	119.5	0
1065	Ford	Fiesta	Petrol	Fiesta St-Line X Turbo	134	0
1066	Ford	Fiesta	Petrol	Fiesta St-Line X Turbo Auto	157	0
1067	Ford	Fiesta	Petrol	Fiesta Stline X Edition T Mhev	121	0
1068	Ford	Fiesta	Petrol	Fiesta Style	129	0
1069	Ford	Fiesta	Diesel	Fiesta Style Tdci	113	0
1070	Ford	Fiesta	Diesel	Fiesta Titanium Tdci	114	0
1071	Ford	Fiesta	Petrol	Fiesta Titanium Turbo	116	0
1072	Ford	Fiesta	Petrol	Fiesta Titanium Turbo Auto	150	0
1073	Ford	Fiesta	Petrol	Fiesta Titanium Turbo Mhev	115	0
1074	Ford	Fiesta	Diesel	Fiesta Titanium X Tdci	114	0
1075	Ford	Fiesta	Petrol	Fiesta Titanium X Turbo	117	0
1076	Ford	Fiesta	Petrol	Fiesta Titanium X Turbo Auto	129	0
1077	Ford	Fiesta	Petrol	Fiesta Titanium X Turbo Mhev	116	0
1078	Ford	Fiesta	Petrol	Fiesta Trend	121	0
1079	Ford	Fiesta	Diesel	Fiesta Trend Tdci	113	0
1080	Ford	Fiesta	Petrol	Fiesta Trend Turbo	116	0
1081	Ford	Fiesta	Petrol	Fiesta Trend Turbo Auto	128	0
1082	Ford	Fiesta	Petrol	Fiesta Trend Turbo Mhev	114	0
1083	Ford	Fiesta	Petrol	Fiesta Vignale Edition T Mhev	116	0
1084	Ford	Fiesta	Diesel	Fiesta Vignale Edition Tdci	115	0
1085	Ford	Fiesta	Petrol	Fiesta Vignale Edition Turbo	117	0
1086	Ford	Fiesta	Petrol	Fiesta Vignale Edition Turbo A	153	0
1087	Ford	Fiesta	Petrol	Fiesta Vignale Turbo	132	0
1088	Ford	Fiesta	Petrol	Fiesta Vignale Turbo Auto	153	0
1089	Ford	Fiesta	Petrol	Fiesta Zetec	131	0
1090	Ford	Fiesta	Diesel	Fiesta Zetec Tdci	114	0
1091	Ford	Fiesta	Petrol	Fiesta Zetec Turbo	128	0
1092	Ford	Fiesta	Petrol	Fiesta Zetec Turbo Auto	150	0
1093	Ford	Focus	Petrol	Focus Active	130	0
1094	Ford	Focus	Petrol	Focus Active Auto	140	0
1095	Ford	Focus	Diesel	Focus Active Ecoblue	125	0
1096	Ford	Focus	Diesel	Focus Active Ecoblue Auto	131	0
1097	Ford	Focus	Petrol	Focus Active Edition Mhev	120	0
1098	Ford	Focus	Petrol	Focus Active X	132	0
1099	Ford	Focus	Petrol	Focus Active X Auto	143	0
1100	Ford	Focus	Diesel	Focus Active X Ecoblue	128	0
1101	Ford	Focus	Diesel	Focus Active X Ecoblue Auto	135	0
1102	Ford	Focus	Petrol	Focus Active X Edition Mhev	122	0
1103	Ford	Focus	Petrol	Focus Active X Vignale	133	0
1104	Ford	Focus	Petrol	Focus Active X Vignale Auto	144	0
1105	Ford	Focus	Diesel	Focus Active X Vignale Eblue A	134	0
1106	Ford	Focus	Diesel	Focus Active X Vignale Ecoblue	128	0
1107	Ford	Focus	Petrol	Focus Active X Vignale Ed Mhev	125	0
1108	Ford	Focus	Petrol	Focus St	187	0
1109	Ford	Focus	Petrol	Focus St Auto	188	0
1110	Ford	Focus	Diesel	Focus St Ecoblue	148	0
1111	Ford	Focus	Petrol	Focus St-Line	127	0
1112	Ford	Focus	Petrol	Focus St-Line Auto	137	0
1113	Ford	Focus	Diesel	Focus St-Line Ecoblue	126	0
1114	Ford	Focus	Diesel	Focus St-Line Ecoblue Auto	131	0
1115	Ford	Focus	Petrol	Focus St-Line Edition Mhev	119	0
1116	Ford	Focus	Diesel	Focus St-Line Tdci	122	0
1117	Ford	Focus	Diesel	Focus St-Line Tdci Auto	128	0
1118	Ford	Focus	Petrol	Focus St-Line X	130	0
1119	Ford	Focus	Petrol	Focus St-Line X Auto	140	0
1120	Ford	Focus	Diesel	Focus St-Line X Ecoblue	129	0
1121	Ford	Focus	Diesel	Focus St-Line X Ecoblue Auto	134	0
1122	Ford	Focus	Petrol	Focus St-Line X Edition Auto	139	0
1123	Ford	Focus	Petrol	Focus St-Line X Edition Mhev	122	0
1124	Ford	Focus	Diesel	Focus St-Line X Tdci	124	0
1125	Ford	Focus	Diesel	Focus St-Line X Tdci Auto	131	0
1126	Ford	Focus	Petrol	Focus Style	127	0
1127	Ford	Focus	Petrol	Focus Style Auto	148	0
1128	Ford	Focus	Diesel	Focus Style Tdci	114	0
1129	Ford	Focus	Diesel	Focus Style Tdci Auto	134	0
1130	Ford	Focus	Petrol	Focus Titanium	125	0
1131	Ford	Focus	Petrol	Focus Titanium Auto	135	0
1132	Ford	Focus	Diesel	Focus Titanium Ecoblue	125	0
1133	Ford	Focus	Diesel	Focus Titanium Ecoblue Auto	129	0
1134	Ford	Focus	Petrol	Focus Titanium Edition Mhev	116	0
1135	Ford	Focus	Diesel	Focus Titanium Tdci	119	0
1136	Ford	Focus	Diesel	Focus Titanium Tdci Auto	125	0
1137	Ford	Focus	Petrol	Focus Titanium X	127	0
1138	Ford	Focus	Petrol	Focus Titanium X Auto	138	0
1139	Ford	Focus	Diesel	Focus Titanium X Ecoblue	126	0
1140	Ford	Focus	Diesel	Focus Titanium X Ecoblue Auto	130	0
1141	Ford	Focus	Petrol	Focus Titanium X Edition Mhev	118	0
1142	Ford	Focus	Diesel	Focus Titanium X Tdci	121	0
1143	Ford	Focus	Diesel	Focus Titanium X Tdci Auto	127	0
1144	Ford	Focus	Petrol	Focus Vignale	133	0
1145	Ford	Focus	Petrol	Focus Vignale Auto	142.5	0
1146	Ford	Focus	Diesel	Focus Vignale Ecoblue	129	0
1147	Ford	Focus	Diesel	Focus Vignale Ecoblue Auto	134	0
1148	Ford	Focus	Petrol	Focus Vignale Edition Mhev	123	0
1149	Ford	Focus	Diesel	Focus Vignale Tdci	127	0
1150	Ford	Focus	Diesel	Focus Vignale Tdci Auto	133	0
1151	Ford	Focus	Petrol	Focus Zetec	125	0
1152	Ford	Focus	Petrol	Focus Zetec Auto	134	0
1153	Ford	Focus	Petrol	Focus Zetec Edition Mhev	115	0
1154	Ford	Focus	Diesel	Focus Zetec Tdci	119	0
1155	Ford	Focus	Diesel	Focus Zetec Tdci Auto	125.5	0
1156	Ford	Freedom	Diesel	Freedom Grand Rs	155	0
1157	Ford	Freedom	Diesel	Freedom Grand Rs Auto	174	0
1158	Ford	Freedom	Diesel	Freedom Rs	174	0
1159	Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue	161	0
1160	Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue 4X4	166.5	0
1161	Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue 4X4 A	185	0
1162	Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue Auto	171	0
1163	Ford	Galaxy	Diesel	Galaxy Titanium X Ecoblue	164	0
1164	Ford	Galaxy	Diesel	Galaxy Titanium X Ecoblue Auto	175	0
1165	Ford	Galaxy	Petrol	Galaxy Titanium X Turbo	200	0
1166	Ford	Galaxy	Diesel	Galaxy Zetec Ecoblue	160	0
1167	Ford	Galaxy	Diesel	Galaxy Zetec Ecoblue Auto	170	0
1168	Ford	Galaxy	Diesel	Galaxy Zetec Tdci	160	0
1169	Ford	Galaxy	Petrol	Galaxy Zetec Turbo	193	0
1170	Ford	Independence	Diesel	Independence Re	209	0
1171	Ford	Independence	Diesel	Independence Re Auto	225	0
1172	Ford	Independence	Diesel	Independence Re Twin	227	0
1173	Ford	Independence	Diesel	Independence Re Twin Auto	227	0
1174	Ford	Independence	Diesel	Independence Rs	209	0
1175	Ford	Independence	Diesel	Independence Rs Auto	225	0
1176	Ford	Independence	Diesel	Independence Twin	210	0
1177	Ford	Independence	Diesel	Independence Twin Auto	226	0
1178	Ford	Journey	Diesel	Journey Grand Rs	157	0
1179	Ford	Journey	Diesel	Journey Grand Rs Auto	172	0
1180	Ford	Journey	Diesel	Journey Grand Rx	157	0
1181	Ford	Journey	Diesel	Journey Grand Rx Auto	172	0
1182	Ford	Ka+	Petrol	Ka+ Active	146	0
1183	Ford	Ka+	Diesel	Ka+ Active Tdci	131	0
1184	Ford	Ka+	Petrol	Ka+ Zetec	131.5	0
1185	Ford	Kuga	Petrol	Kuga St-Line	155	0
1186	Ford	Kuga	Petrol	Kuga St-Line Auto	221	0
1187	Ford	Kuga	Diesel	Kuga St-Line Ecoblue	137	0
1188	Ford	Kuga	Diesel	Kuga St-Line Ecoblue 4X4 Auto	160	0
1189	Ford	Kuga	Diesel	Kuga St-Line Ecoblue Auto	146	0
1190	Ford	Kuga	Diesel	Kuga St-Line Ecoblue Mhev	135	0
1191	Ford	Kuga	Diesel	Kuga St-Line Ed Eblue 4X4 A	154	0
1192	Ford	Kuga	Diesel	Kuga St-Line Ed Eblue Mhev	132	0
1193	Ford	Kuga	Diesel	Kuga St-Line Edit Tdci 4X4 A	189.5	0
1194	Ford	Kuga	Petrol	Kuga St-Line Edition	155	0
1195	Ford	Kuga	Diesel	Kuga St-Line Edition Ecoblue	127	0
1196	Ford	Kuga	Diesel	Kuga St-Line Edition Ecoblue A	141	0
1197	Ford	Kuga	Petrol	Kuga St-Line Edition Hev Cvt	130	0
1198	Ford	Kuga	Diesel	Kuga St-Line Edition Tdci	170	0
1199	Ford	Kuga	Diesel	Kuga St-Line Edition Tdci 4X4	181	0
1200	Ford	Kuga	Diesel	Kuga St-Line Edition Tdci Auto	184	0
1201	Ford	Kuga	Diesel	Kuga St-Line First Ed E-Blue	137	0
1202	Ford	Kuga	Diesel	Kuga St-Line First Ed E-Blue A	146	0
1203	Ford	Kuga	Hybrid	Kuga St-Line First Ed Phev Cvt	32	217
1204	Ford	Kuga	Petrol	Kuga St-Line First Edition	155	0
1205	Ford	Kuga	Hybrid	Kuga St-Line Phev Cvt	32	0
1206	Ford	Kuga	Diesel	Kuga St-Line Tdci	172	0
1207	Ford	Kuga	Diesel	Kuga St-Line Tdci 4X4	193	0
1208	Ford	Kuga	Diesel	Kuga St-Line Tdci 4X4 Auto	194	0
1209	Ford	Kuga	Diesel	Kuga St-Line Tdci Auto	188	0
1210	Ford	Kuga	Petrol	Kuga St-Line X	156	0
1211	Ford	Kuga	Diesel	Kuga St-Line X Ecoblue	138	0
1212	Ford	Kuga	Diesel	Kuga St-Line X Ecoblue 4X4 A	161	0
1213	Ford	Kuga	Diesel	Kuga St-Line X Ecoblue Auto	147	0
1214	Ford	Kuga	Diesel	Kuga St-Line X Ecoblue Mhev	136	0
1215	Ford	Kuga	Diesel	Kuga St-Line X Ed Eblue 4X4 A	156	0
1216	Ford	Kuga	Diesel	Kuga St-Line X Ed Eblue Mhev	134	0
1217	Ford	Kuga	Diesel	Kuga St-Line X Ed Ecoblue A	144	0
1218	Ford	Kuga	Petrol	Kuga St-Line X Edition	156	0
1219	Ford	Kuga	Diesel	Kuga St-Line X Edition Ecoblue	129	0
1220	Ford	Kuga	Petrol	Kuga St-Line X Edition Hev Cvt	133	0
1221	Ford	Kuga	Petrol	Kuga St-Line X First Edition	157	0
1222	Ford	Kuga	Hybrid	Kuga St-Line X Phev Cvt	32	0
1223	Ford	Kuga	Diesel	Kuga St-Line X Tdci	160	0
1224	Ford	Kuga	Diesel	Kuga St-Ln First Ed Eblue Mhev	135	0
1225	Ford	Kuga	Diesel	Kuga St-Ln X First Ed Eblue A	148	0
1226	Ford	Kuga	Hybrid	Kuga St-Ln X First Ed Phev Cvt	32	217
1227	Ford	Kuga	Diesel	Kuga St-Ln X First Editn Eblue	138	0
1228	Ford	Kuga	Diesel	Kuga St-Ln X Frst Ed Eblu Mhev	136	0
1229	Ford	Kuga	Diesel	Kuga Stln First Ed Eblue 4X4 A	160	0
1230	Ford	Kuga	Diesel	Kuga Stln X Frst Ed Eblue 4X4A	162	0
1231	Ford	Kuga	Diesel	Kuga Titan First Ed Eblue Mhev	135	217
1232	Ford	Kuga	Diesel	Kuga Titan Frst Ed Eblue 4X4 A	154	0
1233	Ford	Kuga	Petrol	Kuga Titanium	155	0
1234	Ford	Kuga	Diesel	Kuga Titanium Ecoblue	137	0
1235	Ford	Kuga	Diesel	Kuga Titanium Ecoblue 4X4 Auto	159	0
1236	Ford	Kuga	Diesel	Kuga Titanium Ecoblue Auto	146	0
1237	Ford	Kuga	Diesel	Kuga Titanium Ecoblue Mhev	135	0
1238	Ford	Kuga	Diesel	Kuga Titanium Ed Eblue A	142	0
1239	Ford	Kuga	Diesel	Kuga Titanium Ed Eblue Mhev	132	0
1240	Ford	Kuga	Diesel	Kuga Titanium Edit Tdci 4X4 A	194	0
1241	Ford	Kuga	Petrol	Kuga Titanium Edition	155	0
1242	Ford	Kuga	Diesel	Kuga Titanium Edition Ecoblue	128	0
1243	Ford	Kuga	Diesel	Kuga Titanium Edition Tdci	172	0
1244	Ford	Kuga	Diesel	Kuga Titanium Edition Tdci 4X4	187	0
1245	Ford	Kuga	Diesel	Kuga Titanium Edition Tdci A	187	0
1246	Ford	Kuga	Diesel	Kuga Titanium First Ed Eblue	137	0
1247	Ford	Kuga	Diesel	Kuga Titanium First Ed Eblue A	146	0
1248	Ford	Kuga	Petrol	Kuga Titanium First Edition	155	0
1249	Ford	Kuga	Hybrid	Kuga Titanium Frst Ed Phev Cvt	32	0
1250	Ford	Kuga	Hybrid	Kuga Titanium Phev Cvt	32	217
1251	Ford	Kuga	Diesel	Kuga Titanium Tdci	194	0
1252	Ford	Kuga	Diesel	Kuga Titanium X Ed Tdci 4X4	180	0
1253	Ford	Kuga	Diesel	Kuga Titanium X Ed Tdci 4X4 A	189	0
1254	Ford	Kuga	Petrol	Kuga Titanium X Edition	156	0
1255	Ford	Kuga	Petrol	Kuga Titanium X Edition Auto	218	0
1256	Ford	Kuga	Diesel	Kuga Titanium X Edition Tdci	170	0
1257	Ford	Kuga	Diesel	Kuga Titanium X Edition Tdci A	184	0
1258	Ford	Kuga	Petrol	Kuga Vignale	155	0
1259	Ford	Kuga	Diesel	Kuga Vignale Ecoblue 4X4 Auto	160	0
1260	Ford	Kuga	Diesel	Kuga Vignale Ecoblue Mhev	135	0
1261	Ford	Kuga	Petrol	Kuga Vignale Hev Cvt	132	0
1262	Ford	Kuga	Hybrid	Kuga Vignale Phev Cvt	32	217
1263	Ford	Kuga	Diesel	Kuga Vignale Tdci	172	0
1264	Ford	Kuga	Diesel	Kuga Vignale Tdci 4X4	179	0
1265	Ford	Kuga	Diesel	Kuga Vignale Tdci 4X4 Auto	189	0
1266	Ford	Kuga	Petrol	Kuga Zetec	152	0
1267	Ford	Kuga	Diesel	Kuga Zetec Ecoblue	134	0
1268	Ford	Kuga	Diesel	Kuga Zetec Ecoblue 4X4 Auto	155	0
1269	Ford	Kuga	Diesel	Kuga Zetec Ecoblue Auto	142	0
1270	Ford	Kuga	Diesel	Kuga Zetec Ecoblue Mhev	132	0
1271	Ford	Kuga	Diesel	Kuga Zetec Tdci	164	0
1272	Ford	Kuga	Diesel	Kuga Zetec Tdci 4X4	186	0
1273	Ford	Kuga	Diesel	Kuga Zetec Tdci 4X4 Auto	198	0
1274	Ford	Kuga	Diesel	Kuga Zetec Tdci Auto	187	0
1275	Ford	Mondeo	Diesel	Mondeo	167	0
1276	Ford	Mondeo	Diesel	Mondeo St-Line Ed Eblue 4X4 A	158	0
1277	Ford	Mondeo	Diesel	Mondeo St-Line Ed Tdci 4X4 A	182	0
1278	Ford	Mondeo	Petrol	Mondeo St-Line Edition Auto	134	0
1279	Ford	Mondeo	Diesel	Mondeo St-Line Edition Eblue A	148	0
1280	Ford	Mondeo	Diesel	Mondeo St-Line Edition Ecoblue	137	0
1281	Ford	Mondeo	Diesel	Mondeo St-Line Edition Tdci	161	0
1282	Ford	Mondeo	Diesel	Mondeo St-Line Edition Tdci A	163	0
1283	Ford	Mondeo	Petrol	Mondeo St-Line Hev Auto	134	0
1284	Ford	Mondeo	Diesel	Mondeo St-Line Tdci	159	0
1285	Ford	Mondeo	Diesel	Mondeo St-Line Tdci Auto	163	0
1286	Ford	Mondeo	Diesel	Mondeo Titanium Ed Eblue A	148	0
1287	Ford	Mondeo	Diesel	Mondeo Titanium Ed Econet Tdci	149	0
1288	Ford	Mondeo	Petrol	Mondeo Titanium Ed Hev Auto	133	0
1289	Ford	Mondeo	Diesel	Mondeo Titanium Ed Tdci 4X4	162	0
1290	Ford	Mondeo	Petrol	Mondeo Titanium Edition	178	0
1291	Ford	Mondeo	Diesel	Mondeo Titanium Edition Eblue	137	0
1292	Ford	Mondeo	Diesel	Mondeo Titanium Edition Tdci	160	0
1293	Ford	Mondeo	Diesel	Mondeo Titanium Edition Tdci A	164	0
1294	Ford	Mondeo	Petrol	Mondeo Titanium Hev Auto	118	0
1295	Ford	Mondeo	Diesel	Mondeo Titanium Tdci	137	0
1296	Ford	Mondeo	Diesel	Mondeo Vignale Ecoblue 4X4 A	155	0
1297	Ford	Mondeo	Diesel	Mondeo Vignale Ecoblue Auto	149	0
1298	Ford	Mondeo	Petrol	Mondeo Vignale Hev Auto	134	0
1299	Ford	Mondeo	Diesel	Mondeo Zetec Ed Econetic Tdci	150	0
1300	Ford	Mondeo	Diesel	Mondeo Zetec Edition	155	0
1301	Ford	Mondeo	Diesel	Mondeo Zetec Edition Ecoblue	132	0
1302	Ford	Mondeo	Diesel	Mondeo Zetec Edition Ecoblue A	146	0
1303	Ford	Mondeo	Diesel	Mondeo Zetec Edition Tdci	159	0
1304	Ford	Mondeo	Diesel	Mondeo Zetec Edition Tdci 4X4	133	0
1305	Ford	Mondeo	Petrol	Mondeo Zetec Hev Auto	127	0
1306	Ford	Mondeo	Petrol	Mondeo Zetec Tdci	270	0
1307	Ford	Mondeo	Petrol	Mondeo Zetec Tdci 4X4	123	0
1308	Ford	Mustang	Petrol	Mustang 55 Edition	270	0
1309	Ford	Mustang	Petrol	Mustang 55 Edition Auto	258	0
1310	Ford	Mustang	Petrol	Mustang Bullitt	270	0
1311	Ford	Mustang	Petrol	Mustang Ecoboost	203	0
1312	Ford	Mustang	Petrol	Mustang Ecoboost Auto	198	0
1313	Ford	Mustang	Petrol	Mustang Gt	270	0
1314	Ford	Mustang	Petrol	Mustang Gt Auto	259	0
1315	Ford	Mustang	Electric	Mustang Mach-E Ext Range Awd	0	187
1316	Ford	Mustang	Electric	Mustang Mach-E Ext Range Rwd	0	165
1317	Ford	Mustang	Electric	Mustang Mach-E Std Range Awd	0	195
1318	Ford	Mustang	Electric	Mustang Mach-E Std Range Rwd	0	172
1319	Ford	Procab	Diesel	Procab	214	0
1320	Ford	Procab	Diesel	Procab Auto	214	0
1321	Ford	Puma	Petrol	Puma St	155	0
1322	Ford	Puma	Petrol	Puma St-Line	133	0
1323	Ford	Puma	Petrol	Puma St-Line Auto	139	0
1324	Ford	Puma	Petrol	Puma St-Line Mhev	128	0
1325	Ford	Puma	Petrol	Puma St-Line Vignale Auto	141	0
1326	Ford	Puma	Petrol	Puma St-Line Vignale Mhev	129	0
1327	Ford	Puma	Petrol	Puma St-Line X Auto	139	0
1328	Ford	Puma	Petrol	Puma St-Line X First Ed + Mhev	136	0
1329	Ford	Puma	Petrol	Puma St-Line X First Ed Mhev	126	0
1330	Ford	Puma	Petrol	Puma St-Line X Mhev	128	0
1331	Ford	Puma	Petrol	Puma St-Line X Vignale Auto	142	0
1332	Ford	Puma	Petrol	Puma St-Line X Vignale Mhev	129	0
1333	Ford	Puma	Petrol	Puma Titanium	133	0
1334	Ford	Puma	Petrol	Puma Titanium Auto	138	0
1335	Ford	Puma	Petrol	Puma Titanium First Ed Mhev	125	0
1336	Ford	Puma	Petrol	Puma Titanium Mhev	127	0
1337	Ford	Roller	Petrol	Roller Team Zefiro 696	261	0
1338	Ford	S-Max	Petrol	S-Max St-Line Ecoblue	147.5	0
1339	Ford	S-Max	Diesel	S-Max St-Line Ecoblue 4X4 Auto	181	0
1340	Ford	S-Max	Diesel	S-Max St-Line Ecoblue Auto	170	0
1341	Ford	S-Max	Petrol	S-Max St-Line Turbo	192	0
1342	Ford	S-Max	Diesel	S-Max Titanium Ecoblue	158	0
1343	Ford	S-Max	Diesel	S-Max Titanium Ecoblue 4X4	168	0
1344	Ford	S-Max	Diesel	S-Max Titanium Ecoblue Auto	170	0
1345	Ford	S-Max	Diesel	S-Max Titanium Tdci	159	0
1346	Ford	S-Max	Diesel	S-Max Titanium Turbo	158	0
1347	Ford	S-Max	Diesel	S-Max Vignale Ecoblue 4X4 Auto	182	0
1348	Ford	S-Max	Diesel	S-Max Vignale Ecoblue Auto	172	0
1349	Ford	S-Max	Diesel	S-Max Zetec Ecoblue	157	0
1350	Ford	Sierra	Diesel	Sierra Sapphire Glx I	227	0
1351	Ford	Tourneo	Diesel	Tourneo Connect Gr T-Nium Tdci	155	0
1352	Ford	Tourneo	Diesel	Tourneo Connect Gr Tnium Tdcia	173	0
1353	Ford	Tourneo	Diesel	Tourneo Connect Gr Zetec Tdci	154	0
1354	Ford	Tourneo	Diesel	Tourneo Connect Gr Zetec Tdcia	129	0
1355	Ford	Tourneo	Diesel	Tourneo Connect Gr Ztec Tdci A	172	0
1356	Ford	Tourneo	Diesel	Tourneo Connect Grd Act Eblu A	163	0
1357	Ford	Tourneo	Diesel	Tourneo Connect Grd Actve Eblu	152	0
1358	Ford	Tourneo	Diesel	Tourneo Connect Grd Zetec Tdci	161	0
1359	Ford	Tourneo	Diesel	Tourneo Connect T-Nium Tdci A	169	0
1360	Ford	Tourneo	Petrol	Tourneo Connect Titanium	157	0
1361	Ford	Tourneo	Diesel	Tourneo Connect Titanium Tdci	147	0
1362	Ford	Tourneo	Diesel	Tourneo Connect Zetec Tdci	145	0
1363	Ford	Tourneo	Diesel	Tourneo Connect Zetec Tdci A	168	0
1364	Ford	Tourneo	Diesel	Tourneo Courier Titanium Tdci	145	0
1365	Ford	Tourneo	Petrol	Tourneo Courier Zetec	154	0
1366	Ford	Tourneo	Diesel	Tourneo Courier Zetec Tdci	144	0
1367	Ford	Tourneo	Hybrid	Tourneo Cust 320Tnium Phev Cvt	81	325
1368	Ford	Tourneo	Diesel	Tourneo Custom 310 Sport Tdci	230	0
1369	Ford	Tourneo	Diesel	Tourneo Custom 310 Sprt Tdci A	235	0
1370	Ford	Tourneo	Diesel	Tourneo Custom 310 T-Nium Tdci	227	0
1371	Ford	Tourneo	Diesel	Tourneo Custom 310 Ti Tdci A	234	0
1372	Ford	Tourneo	Diesel	Tourneo Custom 320 Actve Eblue	210	0
1373	Ford	Tourneo	Diesel	Tourneo Custom 320 Ecoblue	203	0
1374	Ford	Tourneo	Diesel	Tourneo Custom 320 Ecoblue A	219	0
1375	Ford	Tourneo	Diesel	Tourneo Custom 320 Sport Eblue	210	0
1376	Ford	Tourneo	Diesel	Tourneo Custom 320 T-Nium Mhev	203	0
1377	Ford	Tourneo	Diesel	Tourneo Custom 320 Ti Eblue A	227	0
1378	Ford	Tourneo	Diesel	Tourneo Custom 320 Ti Tdci A	227	0
1379	Ford	Tourneo	Diesel	Tourneo Custom 320 Ti X Eblue	209	0
1380	Ford	Tourneo	Diesel	Tourneo Custom 320 Ti X Mhev	207	0
1381	Ford	Tourneo	Diesel	Tourneo Custom 320 Tnium Eblue	210	0
1382	Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Eblue	204	0
1383	Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Mhev	197	0
1384	Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Tdci	208	0
1385	Ford	Tourneo	Diesel	Tourneo Custom 320Actve Eblu A	221	0
1386	Ford	Tourneo	Diesel	Tourneo Custom 320Sprt Eblue A	225	0
1387	Ford	Tourneo	Diesel	Tourneo Custom 320Ti X Eblue A	226	0
1388	Ford	Tourneo	Diesel	Tourneo Custom 320Ztec Eblue A	220	0
1389	Ford	Tourneo	Diesel	Tourneo Custom Titanium X Tdci	227	0
1390	Ford	Transit	Diesel	Transit 110 T350M Fwd	227	0
1391	Ford	Transit	Petrol	Transit 120 L	116	0
1392	Ford	Transit	Diesel	Transit 140 T300M Fwd	227	0
1393	Ford	Transit	Petrol	Transit 290 Trend Ecoblue	136	0
1394	Ford	Transit	Diesel	Transit 350 Leader Ecoblue	235	0
1395	Ford	Transit	Diesel	Transit Connect 230Trnd Tdci A	127	0
1396	Ford	Transit	Diesel	Transit Courier Bse Kombi Tdci	142	0
1397	Ford	Transit	Petrol	Transit Cust 340Trend Phev Cvt	261	0
1398	Ford	Transit	Petrol	Transit Custom 300 Base	135	0
1399	Ford	Transit	Petrol	Transit Custom 300 Limited A	131	0
1400	Ford	Transit	Petrol	Transit Custom 310 Limited	270	0
1401	Ford	Transit	Diesel	Transit Custom 310 Tdci	162	0
1402	Ford	Transit	Diesel	Transit Custom 320 Base E-Blue	212	0
1403	Ford	Transit	Diesel	Transit Custom 320 Base Tdci	226	0
1404	Ford	Transit	Diesel	Transit Custom 320 Nugget Eblu	195	0
1405	Ford	Transit	Diesel	Transit Custom 320 Sport Eblue	210	0
1406	Ford	Transit	Diesel	Transit Custom 320 Tdci	201	0
1407	Ford	Transit	Diesel	Transit Custom 320 Tdci Auto	224.5	0
1408	Ford	Transit	Diesel	Transit Custom 320 Trend Eblue	200	0
1409	Ford	Transit	Diesel	Transit Custom 320 Trend Tdci	156	0
1410	Ford	Transit	Diesel	Transit Custom 320Leader Eblue	198	0
1411	Ford	Transit	Diesel	Transit Custom 320Nuget Eblu A	273	0
1412	Ford	Transit	Diesel	Transit Custom 320Sprt Eblue A	225	0
1413	Ford	Transit	Diesel	Transit Custom 320Trend Tdci A	230	0
1414	Ford	Transit	Diesel	Transit Custom 320Trnd Eblue A	230	0
1415	Ford	Transit	Diesel	Transit Custom 340 Trend Eblue	205	0
1416	Honda	Civic	Diesel	Civic	118	0
1417	Honda	Civic	Diesel	Civic Ex I-Dtec	122	0
1418	Honda	Civic	Diesel	Civic Ex I-Dtec Auto	136	0
1419	Honda	Civic	Petrol	Civic Ex Sport Line Vtec	141	0
1420	Honda	Civic	Petrol	Civic Ex Sport Line Vtec Cvt	152	0
1421	Honda	Civic	Petrol	Civic Ex Vtec	141	0
1422	Honda	Civic	Petrol	Civic Ex Vtec Cvt	152	0
1423	Honda	Civic	Petrol	Civic Gt Type R Vtec	192	0
1424	Honda	Civic	Petrol	Civic Prestige Vtec Cvt	151	0
1425	Honda	Civic	Diesel	Civic S I-Dtec	117	0
1426	Honda	Civic	Diesel	Civic Se I-Dtec	117	0
1427	Honda	Civic	Petrol	Civic Se Vtec	134	0
1428	Honda	Civic	Petrol	Civic Se Vtec Cvt	143	0
1429	Honda	Civic	Petrol	Civic Sport + Vtec	139	0
1430	Honda	Civic	Petrol	Civic Sport + Vtec Cvt	151	0
1431	Honda	Civic	Petrol	Civic Sport Line Vtec	139	0
1432	Honda	Civic	Petrol	Civic Sport Line Vtec Cvt	149	0
1433	Honda	Civic	Petrol	Civic Sport Vtec	137	0
1434	Honda	Civic	Petrol	Civic Sport Vtec Cvt	150	0
1435	Honda	Civic	Diesel	Civic Sr I-Dtec	119	0
1436	Honda	Civic	Petrol	Civic Sr Vtec	137	0
1437	Honda	Civic	Petrol	Civic Sr Vtec Cvt	147	0
1438	Honda	Civic	Petrol	Civic Type R Gt	193	0
1439	Honda	Civic	Petrol	Civic Type R Limited Edition	191	0
1440	Honda	Civic	Petrol	Civic Type R Sport Line	187	0
1441	Honda	Cr-V	Petrol	Cr-V Ex I-Mmd Cvt	168	0
1442	Honda	Cr-V	Petrol	Cr-V Ex I-Vtec	181	0
1443	Honda	Cr-V	Petrol	Cr-V Ex I-Vtec Cvt	201	0
1444	Honda	Cr-V	Petrol	Cr-V S I-Mmd 4X2 Cvt	156	0
1445	Honda	Cr-V	Petrol	Cr-V S I-Vtec 4X2	166	0
1446	Honda	Cr-V	Petrol	Cr-V Se I-Mmd 4X2 Cvt	156	0
1447	Honda	Cr-V	Petrol	Cr-V Se I-Mmd Cvt	166	0
1448	Honda	Cr-V	Petrol	Cr-V Se I-Vtec	178	0
1449	Honda	Cr-V	Petrol	Cr-V Se I-Vtec 4X2	167	0
1450	Honda	Cr-V	Petrol	Cr-V Se I-Vtec Cvt	196	0
1451	Honda	Cr-V	Petrol	Cr-V Sport Line I-Mmd Cvt	151	0
1452	Honda	Cr-V	Petrol	Cr-V Sr I-Mmd 4X2 Cvt	156	0
1453	Honda	Cr-V	Petrol	Cr-V Sr I-Mmd Cvt	166	0
1454	Honda	Cr-V	Petrol	Cr-V Sr I-Vtec	178	0
1455	Honda	Cr-V	Petrol	Cr-V Sr I-Vtec Cvt	197	0
1456	Honda	E	Electric	E	0	0
1457	Honda	E	Electric	E Advance	0	0
1458	Honda	Hr-V	Diesel	Hr-V Ex I-Dtec	135	0
1459	Honda	Hr-V	Petrol	Hr-V Ex I-Vtec	153	0
1460	Honda	Hr-V	Petrol	Hr-V Ex I-Vtec Cvt	156	0
1461	Honda	Hr-V	Diesel	Hr-V S I-Dtec	132	0
1462	Honda	Hr-V	Petrol	Hr-V S I-Vtec	148	0
1463	Honda	Hr-V	Diesel	Hr-V Se I-Dtec	134	0
1464	Honda	Hr-V	Petrol	Hr-V Se I-Vtec	150	0
1465	Honda	Hr-V	Petrol	Hr-V Se I-Vtec Cvt	153	0
1466	Honda	Hr-V	Petrol	Hr-V Sport I-Vtec	151	0
1467	Honda	Hr-V	Petrol	Hr-V Sport I-Vtec Cvt	163	0
1468	Honda	Jazz	Petrol	Jazz Crosstar Ex I-Mmd Cvt	110	0
1469	Honda	Jazz	Petrol	Jazz Ex I-Mmd Cvt	104	0
1470	Honda	Jazz	Petrol	Jazz Ex I-Vtec	135	0
1471	Honda	Jazz	Petrol	Jazz Ex I-Vtec Cvt	139	0
1472	Honda	Jazz	Petrol	Jazz Ex Navi I-Vtec	135	0
1473	Honda	Jazz	Petrol	Jazz Ex Navi I-Vtec Cvt	139	0
1474	Honda	Jazz	Petrol	Jazz S I-Vtec	131	0
1475	Honda	Jazz	Petrol	Jazz S I-Vtec Cvt	133	0
1476	Honda	Jazz	Petrol	Jazz Se I-Mmd Cvt	102	0
1477	Honda	Jazz	Petrol	Jazz Se I-Vtec	131	0
1478	Honda	Jazz	Petrol	Jazz Se I-Vtec Cvt	135	0
1479	Honda	Jazz	Petrol	Jazz Se Navi I-Vtec	131	0
1480	Honda	Jazz	Petrol	Jazz Se Navi I-Vtec Cvt	135	0
1481	Honda	Jazz	Petrol	Jazz Sport I-Vtec Cvt	149	0
1482	Honda	Jazz	Petrol	Jazz Sport Navi I-Vtec Cvt	149	0
1483	Honda	Jazz	Petrol	Jazz Sr I-Mmd Cvt	102	0
1484	Honda	Nsx	Petrol	Nsx V6 Auto	242	0
1485	Hyundai	I10	Petrol	I10 N Line T-Gdi	123	0
1486	Hyundai	I10	Petrol	I10 Play	131	0
1487	Hyundai	I10	Petrol	I10 Premium	130	0
1488	Hyundai	I10	Petrol	I10 Premium Auto	156	0
1489	Hyundai	I10	Petrol	I10 Premium Mpi	120	0
1490	Hyundai	I10	Petrol	I10 Premium Mpi Auto	130	0
1491	Hyundai	I10	Petrol	I10 Premium Se	140	0
1492	Hyundai	I10	Petrol	I10 Premium Se Auto	157	0
1493	Hyundai	I10	Petrol	I10 S	128	0
1494	Hyundai	I10	Petrol	I10 Se	114	0
1495	Hyundai	I10	Petrol	I10 Se Auto	155	0
1496	Hyundai	I10	Petrol	I10 Se Connect Mpi	119	0
1497	Hyundai	I10	Petrol	I10 Se Connect Mpi Auto	129	0
1498	Hyundai	I20	Petrol	I20 Play Mpi	139	0
1499	Hyundai	I20	Petrol	I20 Play T-Gdi	134	0
1500	Hyundai	I20	Petrol	I20 Premium Mhev T-Gdi	118	0
1501	Hyundai	I20	Petrol	I20 Premium Mhev T-Gdi Auto	121	0
1502	Hyundai	I20	Petrol	I20 Premium Nav Mpi	139	0
1503	Hyundai	I20	Petrol	I20 Premium Nav T-Gdi	134	0
1504	Hyundai	I20	Petrol	I20 Premium Nav T-Gdi S-A	134	0
1505	Hyundai	I20	Petrol	I20 Premium Se Nav Mpi	141	0
1506	Hyundai	I20	Petrol	I20 Premium Se Nav T-Gdi	137	0
1507	Hyundai	I20	Petrol	I20 S-Connect Mpi	136	0
1508	Hyundai	I20	Petrol	I20 Se Connect Mhev T-Gdi	115	0
1509	Hyundai	I20	Petrol	I20 Se Connect Mhev T-Gdi Auto	117	0
1510	Hyundai	I20	Petrol	I20 Se Mpi	134	0
1511	Hyundai	I20	Petrol	I20 Se T-Gdi	129	0
1512	Hyundai	I20	Petrol	I20 Se T-Gdi S-A	127	0
1513	Hyundai	I20	Petrol	I20 Ultimate Mhev T-Gdi	118	0
1514	Hyundai	I30	Petrol	I30 N	188	0
1515	Hyundai	I30	Petrol	I30 N Line + Nav T-Gdi	152	0
1516	Hyundai	I30	Petrol	I30 N Line + Nav T-Gdi S-A	144	0
1517	Hyundai	I30	Petrol	I30 N Line + T-Gdi	152	0
1518	Hyundai	I30	Petrol	I30 N Line Mhev T-Gdi	142	0
1519	Hyundai	I30	Petrol	I30 N Line Mhev T-Gdi Auto	138	0
1520	Hyundai	I30	Petrol	I30 N Line Plus T-Gdi S-A	144	0
1521	Hyundai	I30	Petrol	I30 N Line T-Gdi	143	0
1522	Hyundai	I30	Petrol	I30 N Line T-Gdi S-A	144	0
1523	Hyundai	I30	Petrol	I30 N Performance T-Gdi	188	0
1524	Hyundai	I30	Petrol	I30 N T-Gdi	188	0
1525	Hyundai	I30	Diesel	I30 Premium Crdi	129	0
1526	Hyundai	I30	Diesel	I30 Premium Crdi S-A	130	0
1527	Hyundai	I30	Diesel	I30 Premium Mhev Crdi	122	0
1528	Hyundai	I30	Petrol	I30 Premium Mhev T-Gdi	122	0
1529	Hyundai	I30	Diesel	I30 Premium Se Crdi	133	0
1530	Hyundai	I30	Diesel	I30 Premium Se Crdi S-A	126	0
1531	Hyundai	I30	Petrol	I30 Premium Se T-Gdi	150	0
1532	Hyundai	I30	Petrol	I30 Premium Se T-Gdi S-A	143	0
1533	Hyundai	I30	Petrol	I30 Premium T-Gdi	148	0
1534	Hyundai	I30	Petrol	I30 Premium T-Gdi S-A	142	0
1535	Hyundai	I30	Petrol	I30 S T-Gdi	130	0
1536	Hyundai	I30	Diesel	I30 Se Connect Mhev Crdi	121	0
1537	Hyundai	I30	Diesel	I30 Se Connect Mhev Crdi Auto	126	0
1538	Hyundai	I30	Petrol	I30 Se Connect Mhev T-Gdi	121	0
1539	Hyundai	I30	Petrol	I30 Se Connect Mhev T-Gdi Auto	120	0
1540	Hyundai	I30	Diesel	I30 Se Crdi	127	0
1541	Hyundai	I30	Diesel	I30 Se Nav Crdi	128	0
1542	Hyundai	I30	Diesel	I30 Se Nav Crdi S-A	128	0
1543	Hyundai	I30	Petrol	I30 Se Nav T-Gdi	146	0
1544	Hyundai	I30	Petrol	I30 Se Nav T-Gdi S-A	140	0
1545	Hyundai	I30	Petrol	I30 Se T-Gdi	140	0
1546	Hyundai	I30	Diesel	I30 Special Edition Crdi	121	0
1547	Hyundai	I40	Diesel	I40 Se Nav Crdi	142	0
1548	Hyundai	I800	Diesel	I800 Se Crdi	234	0
1549	Hyundai	I800	Diesel	I800 Se Crdi Auto	265	0
1550	Hyundai	I800	Diesel	I800 Se Nav Crdi	234	0
1551	Hyundai	Ioniq	Petrol	Ioniq First Edition Hev S-A	104	0
1552	Hyundai	Ioniq	Electric	Ioniq Premium Ev	0	138
1553	Hyundai	Ioniq	Petrol	Ioniq Premium Hev S-A	102	0
1554	Hyundai	Ioniq	Hybrid	Ioniq Premium Phev S-A	26	0
1555	Hyundai	Ioniq	Electric	Ioniq Premium Se Ev	0	138
1556	Hyundai	Ioniq	Petrol	Ioniq Premium Se Hev S-A	105	0
1557	Hyundai	Ioniq	Hybrid	Ioniq Premium Se Phev S-A	26	0
1558	Hyundai	Ioniq	Petrol	Ioniq Se Connect Hev S-A	102	0
1559	Hyundai	Ioniq	Petrol	Ioniq Se Hev S-A	103	0
1560	Hyundai	Ix20	Petrol	Ix20 Premium Nav Mpi	172	0
1561	Hyundai	Ix20	Petrol	Ix20 Premium Nav Mpi Auto	187	0
1562	Hyundai	Ix20	Petrol	Ix20 Se Mpi	172	0
1563	Hyundai	Ix20	Petrol	Ix20 Se Mpi Auto	187	0
1564	Hyundai	Ix20	Petrol	Ix20 Se Nav Mpi	172	0
1565	Hyundai	Ix20	Petrol	Ix20 Se Nav Mpi Auto	187	0
1566	Hyundai	Kona	Petrol	Kona Iron Man Edition S-A	166	0
1567	Hyundai	Kona	Petrol	Kona Play T-Gdi	146	0
1568	Hyundai	Kona	Petrol	Kona Premium	146	0
1569	Hyundai	Kona	Electric	Kona Premium Ev Auto	0	147
1570	Hyundai	Kona	Petrol	Kona Premium Gdi Hev S-A	122	0
1571	Hyundai	Kona	Petrol	Kona Premium Gt 4X4 S-A	189	0
1572	Hyundai	Kona	Petrol	Kona Premium Se	147	0
1573	Hyundai	Kona	Electric	Kona Premium Se Ev Auto	0	154
1574	Hyundai	Kona	Petrol	Kona Premium Se Gdi Hev S-A	123	0
1575	Hyundai	Kona	Petrol	Kona S	142	0
1576	Hyundai	Kona	Petrol	Kona Se	145	0
1577	Hyundai	Kona	Diesel	Kona Se Crdi	131	0
1578	Hyundai	Kona	Diesel	Kona Se Crdi S-A	137	0
1579	Hyundai	Kona	Electric	Kona Se Ev Auto	0	143
1580	Hyundai	Kona	Petrol	Kona Se Gdi Hev S-A	114	0
1581	Hyundai	Nexo	Hydrogen	Nexo Premium Se Auto	0	0
1582	Hyundai	Santa	Diesel	Santa Fe Premium Crdi	179	0
1583	Hyundai	Santa	Diesel	Santa Fe Premium Crdi 2Wd	170	0
1584	Hyundai	Santa	Diesel	Santa Fe Premium Crdi 2Wd Auto	177	0
1585	Hyundai	Santa	Diesel	Santa Fe Premium Crdi Auto	186	0
1586	Hyundai	Santa	Diesel	Santa Fe Premium Se Crdi Auto	191	0
1587	Hyundai	Tucsn	Diesel	Tucsn Prm Se48V Mhev Crdi2Wdsa	148	0
1588	Hyundai	Tucson	Diesel	Tucson Authority Vehicle Crdi	175	0
1589	Hyundai	Tucson	Petrol	Tucson N Line Gdi 2Wd	178	0
1590	Hyundai	Tucson	Petrol	Tucson N Line T-Gdi 2Wd	183	0
1591	Hyundai	Tucson	Petrol	Tucson N Line T-Gdi 2Wd S-A	177	0
1592	Hyundai	Tucson	Diesel	Tucson N Ln48V Mhev Crdi2Wd Sa	146	0
1593	Hyundai	Tucson	Diesel	Tucson N Lne 48V Mhev Crdi 2Wd	151	0
1594	Hyundai	Tucson	Diesel	Tucson Prem 48V Mhev Crdi 2Wd	145	0
1595	Hyundai	Tucson	Diesel	Tucson Prem Se 48V Mhev Crdi A	180	0
1596	Hyundai	Tucson	Diesel	Tucson Premium 48V Mhev Crdi A	175.5	0
1597	Hyundai	Tucson	Diesel	Tucson Premium Crdi 2Wd	153	0
1598	Hyundai	Tucson	Diesel	Tucson Premium Crdi 2Wd S-A	158	0
1599	Hyundai	Tucson	Diesel	Tucson Premium Crdi Auto	179	0
1600	Hyundai	Tucson	Petrol	Tucson Premium Gdi 2Wd	185	0
1601	Hyundai	Tucson	Diesel	Tucson Premium Se Crdi 2Wd	161	0
1602	Hyundai	Tucson	Diesel	Tucson Premium Se Crdi 2Wd S-A	159	0
1603	Hyundai	Tucson	Diesel	Tucson Premium Se Crdi Auto	180	0
1604	Hyundai	Tucson	Petrol	Tucson Premium Se T-Gdi 2Wd	185	0
1605	Hyundai	Tucson	Petrol	Tucson Premium Se T-Gdi 2Wd Sa	178	0
1606	Hyundai	Tucson	Petrol	Tucson Premium T-Gdi 2Wd	180	0
1607	Hyundai	Tucson	Petrol	Tucson Premium T-Gdi 2Wd S-A	178	0
1608	Hyundai	Tucson	Petrol	Tucson Premium T-Gdi Hev Auto	130	0
1609	Hyundai	Tucson	Diesel	Tucson Prm Se48V Mhev Crdi 2Wd	153	0
1610	Hyundai	Tucson	Diesel	Tucson Prm48V Mhev Crdi 2Wd Sa	147	0
1611	Hyundai	Tucson	Petrol	Tucson S Connect Gdi 2Wd	180	0
1612	Hyundai	Tucson	Petrol	Tucson Se Connect T-Gdi Hev A	127	0
1613	Hyundai	Tucson	Diesel	Tucson Se Nav Crdi	180	0
1614	Hyundai	Tucson	Diesel	Tucson Se Nav Crdi 2Wd	151	0
1615	Hyundai	Tucson	Diesel	Tucson Se Nav Crdi 2Wd S-A	157	0
1616	Hyundai	Tucson	Diesel	Tucson Se Nav Crdi Auto	182	0
1617	Hyundai	Tucson	Petrol	Tucson Se Nav Gdi 2Wd	183	0
1618	Hyundai	Tucson	Petrol	Tucson Se Nav T-Gdi 2Wd	179	0
1619	Hyundai	Tucson	Petrol	Tucson Se Nav T-Gdi 2Wd S-A	177	0
1620	Hyundai	Tucson	Diesel	Tucson Se Nav48V Mhev Crdi 2Wd	143	0
1621	Hyundai	Tucson	Diesel	Tucson Se Nv48V Mhev Crdi2Wdsa	146	0
1622	Hyundai	Tucson	Petrol	Tucson Ultimate T-Gdi Hev Auto	131	0
1623	Hyundai	Tucson	Petrol	Tucson Ultimate T-Gdi Mhev S-A	160	0
1624	Jeep	Compass	Petrol	Compass Limited + M-Air Ii A	212	0
1625	Jeep	Compass	Petrol	Compass Limited M-Air Ii 4X2	172	0
1626	Jeep	Compass	Petrol	Compass Limited M-Air Ii Auto	209	0
1627	Jeep	Compass	Diesel	Compass Limited M-Jet Ii 4X2	157	0
1628	Jeep	Compass	Diesel	Compass Limited Multijet Ii	180	0
1629	Jeep	Compass	Diesel	Compass Limited Multijet Ii A	182	0
1630	Jeep	Compass	Petrol	Compass Longitude M-Air Ii 4X2	172	0
1631	Jeep	Compass	Petrol	Compass Longitude M-Air Ii A	208	0
1632	Jeep	Compass	Diesel	Compass Longitude M-Jet Ii 4X2	153	0
1633	Jeep	Compass	Diesel	Compass Longitude Multijet Ii	177	0
1634	Jeep	Compass	Diesel	Compass Nighteagle Multijet Ii	175	0
1635	Jeep	Compass	Petrol	Compass Nightegle M-Air Ii 4X2	172	0
1636	Jeep	Compass	Diesel	Compass Nightegle M-Jet Ii 4X2	157	0
1637	Jeep	Compass	Petrol	Compass S Multiair Ii Auto	210	0
1638	Jeep	Compass	Diesel	Compass S Multijet Ii 4X2	160	0
1639	Jeep	Compass	Diesel	Compass Sport Multijet Ii 4X2	158	0
1640	Jeep	Compass	Diesel	Compass Trailhawk M-Tijet Ii A	191	0
1641	Jeep	Grand	Diesel	Grand Cherokee Oland Mjet Ii A	252	0
1642	Jeep	Grand	Diesel	Grand Cherokee Summit Mjt Ii A	253	0
1643	Jeep	Grand	Petrol	Grand Cherokee Trackhawk Sc A	382	0
1644	Jeep	Renegade	Petrol	Renegade Limited	159	0
1645	Jeep	Renegade	Hybrid	Renegade Limited 4Xe Auto	49	0
1646	Jeep	Renegade	Petrol	Renegade Limited Auto	159	0
1647	Jeep	Renegade	Diesel	Renegade Limited Mjet Ii 4X4	179	0
1648	Jeep	Renegade	Diesel	Renegade Limited Mjet Ii 4X4 A	195	0
1649	Jeep	Renegade	Diesel	Renegade Limited Multijet Ii	156	0
1650	Jeep	Renegade	Diesel	Renegade Limited Multijet Ii A	160	0
1651	Jeep	Renegade	Petrol	Renegade Longitude	158	0
1652	Jeep	Renegade	Hybrid	Renegade Longitude 4Xe Auto	49	0
1653	Jeep	Renegade	Petrol	Renegade Longitude Auto	157	0
1654	Jeep	Renegade	Diesel	Renegade Longitude M-Jet 4X4	173	0
1655	Jeep	Renegade	Diesel	Renegade Longitude Mijet Ii A	155	0
1656	Jeep	Renegade	Diesel	Renegade Longitude Multijet Ii	149	0
1657	Jeep	Renegade	Petrol	Renegade Night Eagle	158	0
1658	Jeep	Renegade	Petrol	Renegade Night Eagle Auto	158	0
1659	Jeep	Renegade	Diesel	Renegade Night Eagle Mjet Ii	151	0
1660	Jeep	Renegade	Petrol	Renegade S 4X4 Auto	192	0
1661	Jeep	Renegade	Petrol	Renegade S Auto	163	0
1662	Jeep	Renegade	Petrol	Renegade S Limited 4X4 Auto	191	0
1663	Jeep	Renegade	Petrol	Renegade S Limited Auto	163	0
1664	Jeep	Renegade	Petrol	Renegade Sport	160	0
1665	Jeep	Renegade	Hybrid	Renegade Trailhawk 4Xe Auto	51	0
1666	Jeep	Renegade	Diesel	Renegade Trailhawk Mjetii 4X4A	196	0
1667	Jeep	Wrangler	Petrol	Wrangler Night Eagle Unltd A	259	0
1668	Jeep	Wrangler	Petrol	Wrangler Overland Auto	252	0
1669	Jeep	Wrangler	Diesel	Wrangler Overland M-Jet Ii A	243	0
1670	Jeep	Wrangler	Petrol	Wrangler Overland Unlimited A	259	0
1671	Jeep	Wrangler	Diesel	Wrangler Ovrlnd Unltd Mjt Ii A	245	0
1672	Jeep	Wrangler	Diesel	Wrangler Rubicn Unltd Mjt Ii A	252	0
1673	Jeep	Wrangler	Petrol	Wrangler Rubicon Auto	253	0
1674	Jeep	Wrangler	Diesel	Wrangler Rubicon Multijet Ii A	247	0
1675	Jeep	Wrangler	Petrol	Wrangler Rubicon Unlimited A	259	0
1676	Jeep	Wrangler	Petrol	Wrangler Sahara Auto	252	0
1677	Jeep	Wrangler	Diesel	Wrangler Sahara Multijet Ii A	243	0
1678	Jeep	Wrangler	Petrol	Wrangler Sahara Unlimited Auto	261	0
1679	Jeep	Wrangler	Diesel	Wrangler Sahara Unltd Mjt Ii A	248	0
1680	Jeep	Wrangler	Petrol	Wrangler Sport Auto	248	0
1681	Jeep	Wrangler	Petrol	Wrangler Sport Unlimited A	254	0
1682	Kia	Ceed	Diesel	Ceed 2 Crdi Isg	122	0
1683	Kia	Ceed	Petrol	Ceed 2 Isg	128	0
1684	Kia	Ceed	Diesel	Ceed 2 Nav Crdi Isg	123	0
1685	Kia	Ceed	Petrol	Ceed 2 Nav Isg	128	0
1686	Kia	Ceed	Diesel	Ceed 3 Crdi Isg	126	0
1687	Kia	Ceed	Diesel	Ceed 3 Crdi Isg S-A	131	0
1688	Kia	Ceed	Petrol	Ceed 3 Isg	140	0
1689	Kia	Ceed	Petrol	Ceed 3 Isg S-A	142	0
1690	Kia	Ceed	Hybrid	Ceed 3 Phev S-A	33	0
1691	Kia	Ceed	Petrol	Ceed Blue Edition Isg	140	0
1692	Kia	Ceed	Petrol	Ceed Blue Edition Isg S-A	141	0
1693	Kia	Ceed	Petrol	Ceed First Edition Isg	142	0
1694	Kia	Ceed	Petrol	Ceed First Edition Isg S-A	144	0
1695	Kia	Ceed	Petrol	Ceed Gt Isg	169	0
1696	Kia	Ceed	Diesel	Ceed Gt-Line Crdi	131	0
1697	Kia	Ceed	Diesel	Ceed Gt-Line Crdi Isg	130	0
1698	Kia	Ceed	Diesel	Ceed Gt-Line Crdi Isg S-A	135	0
1699	Kia	Ceed	Petrol	Ceed Gt-Line Isg	136	0
1700	Kia	Ceed	Petrol	Ceed Gt-Line Isg S-A	142	0
1701	Kia	Ceed	Petrol	Ceed Gt-Line Lunar Ed Isg Sa	144	0
1702	Kia	Ceed	Petrol	Ceed Gt-Line Lunar Edition Isg	142	0
1703	Kia	Ceed	Petrol	Ceed Gt-Line S Isg S-A	145	0
1704	Kia	Clarus	Petrol	Clarus Sx Auto	122	0
1705	Kia	Mentor	Diesel	Mentor Glx Exec	123	0
1706	Kia	Niro	Electric	Niro 2 Ev	0	153
1707	Kia	Niro	Petrol	Niro 2 Hev S-A	110	0
1708	Kia	Niro	Hybrid	Niro 2 Phev S-A	31	0
1709	Kia	Niro	Petrol	Niro 2 S-A	110	0
1710	Kia	Niro	Electric	Niro 3 Ev	0	159
1711	Kia	Niro	Petrol	Niro 3 Hev S-A	119	0
1712	Kia	Niro	Hybrid	Niro 3 Phev S-A	31	0
1713	Kia	Niro	Petrol	Niro 3 S-A	119	0
1714	Kia	Niro	Electric	Niro 4 + Ev	0	159
1715	Kia	Niro	Electric	Niro 4 Ev	0	159
1716	Kia	Niro	Petrol	Niro 4 Hev S-A	120	0
1717	Kia	Niro	Petrol	Niro 4 S-A	120	0
1718	Kia	Niro	Electric	Niro First Edition Ev	0	159
1719	Kia	Optima	Diesel	Optima 2 Crdi Isg	142	0
1720	Kia	Optima	Diesel	Optima 3 Crdi Isg	143	0
1721	Kia	Optima	Diesel	Optima 3 Crdi Isg S-A	140	0
1722	Kia	Optima	Petrol	Optima Gt Auto	211	0
1723	Kia	Optima	Diesel	Optima Gt-Line S Isg Crdi S-A	142	0
1724	Kia	Optima	Hybrid	Optima Phev + Auto	34	0
1725	Kia	Optima	Hybrid	Optima Phev Auto	34	0
1726	Kia	Picanto	Petrol	Picanto 1	117	0
1727	Kia	Picanto	Petrol	Picanto 2	117	0
1728	Kia	Picanto	Petrol	Picanto 2 Auto	118	0
1729	Kia	Picanto	Petrol	Picanto 3	128	0
1730	Kia	Picanto	Petrol	Picanto 3 Auto	119	0
1731	Kia	Picanto	Petrol	Picanto Gt-Line	128	0
1732	Kia	Picanto	Petrol	Picanto Gt-Line Auto	122	0
1733	Kia	Picanto	Petrol	Picanto Gt-Line Isg	119	0
1734	Kia	Picanto	Petrol	Picanto Gt-Line S	131	0
1735	Kia	Picanto	Petrol	Picanto Gt-Line S Isg	120	0
1736	Kia	Picanto	Petrol	Picanto Titanium Edition	128	0
1737	Kia	Picanto	Petrol	Picanto Titanium Edition Auto	149	0
1738	Kia	Picanto	Petrol	Picanto Wave	127	0
1739	Kia	Picanto	Petrol	Picanto X-Line	131	0
1740	Kia	Picanto	Petrol	Picanto X-Line Auto	123	0
1741	Kia	Picanto	Petrol	Picanto X-Line S	131	0
1742	Kia	Picanto	Petrol	Picanto X-Line S Auto	123	0
1743	Kia	Picanto	Petrol	Picanto Zest	119	0
1744	Kia	Pride	Petrol	Pride Sx	139	0
1745	Kia	Proceed	Petrol	Proceed Gt Isg S-A	163	0
1746	Kia	Proceed	Diesel	Proceed Gt-Line Crdi Isg	131	0
1747	Kia	Proceed	Diesel	Proceed Gt-Line Crdi Isg S-A	136	0
1748	Kia	Proceed	Petrol	Proceed Gt-Line Isg	141	0
1749	Kia	Proceed	Petrol	Proceed Gt-Line Isg S-A	143	0
1750	Kia	Proceed	Petrol	Proceed Gt-Line Lunar Ed Isg	143	0
1751	Kia	Proceed	Petrol	Proceed Gt-Line S Isg S-A	146	0
1752	Kia	Proceed	Petrol	Proceed Gtline Lunar Ed Isg Sa	145	0
1753	Kia	Rio	Petrol	Rio 1	128	0
1754	Kia	Rio	Petrol	Rio 1 Isg	139	0
1755	Kia	Rio	Petrol	Rio 2	130	0
1756	Kia	Rio	Petrol	Rio 2 Auto	153	0
1757	Kia	Rio	Petrol	Rio 2 Isg	140	0
1758	Kia	Rio	Petrol	Rio 2 S-A	127	0
1759	Kia	Rio	Petrol	Rio 3 Auto	154	0
1760	Kia	Rio	Petrol	Rio 3 Isg	134	0
1761	Kia	Rio	Petrol	Rio 3 Mhev	122	0
1762	Kia	Rio	Petrol	Rio 3 Mhev S-A	123	0
1763	Kia	Rio	Petrol	Rio Gt-Line Isg	139	0
1764	Kia	Rio	Petrol	Rio Gt-Line Isg S-A	146	0
1765	Kia	Rio	Petrol	Rio Gt-Line S Isg	139	0
1766	Kia	Rio	Petrol	Rio Gt-Line S Mhev	125	0
1767	Kia	Rio	Petrol	Rio Gt-Line S Mhev S-A	126	0
1768	Kia	Sedona	Petrol	Sedona Sx V6	119	0
1769	Kia	Sedona	Petrol	Sedona Sx V6 Auto	120	0
1770	Kia	Sorento	Petrol	Sorento 2 Hev Awd Auto	158	0
1771	Kia	Sorento	Diesel	Sorento 3 Crdi Awd S-A	176	0
1772	Kia	Sorento	Petrol	Sorento 3 Hev Awd Auto	166	0
1773	Kia	Sorento	Petrol	Sorento 4 Hev Awd Auto	169	0
1774	Kia	Sorento	Diesel	Sorento Gt-Line Crdi Isg 4X4 A	191	0
1775	Kia	Sorento	Diesel	Sorento Gtline S Crdi Isg 4X4A	196	0
1776	Kia	Sorento	Diesel	Sorento Kx-1 Crdi Isg 4X4	177	0
1777	Kia	Sorento	Diesel	Sorento Kx-2 Crdi Isg 4X4	178	0
1778	Kia	Sorento	Diesel	Sorento Kx-2 Crdi Isg 4X4 Auto	190	0
1779	Kia	Sorento	Diesel	Sorento Kx-3 Crdi Isg 4X4	179	0
1780	Kia	Sorento	Diesel	Sorento Kx-3 Crdi Isg 4X4 Auto	193	0
1781	Kia	Soul	Electric	Soul First Edition Ev	0	157
1782	Kia	Sportage	Diesel	Sportage 1 Crdi Isg	145	0
1783	Kia	Sportage	Petrol	Sportage 1 Crdi Isg Mhev	138	0
1784	Kia	Sportage	Petrol	Sportage 1 Isg	179	0
1785	Kia	Sportage	Diesel	Sportage 2 Crdi Isg	158	0
1786	Kia	Sportage	Petrol	Sportage 2 Crdi Isg Mhev	141	0
1787	Kia	Sportage	Petrol	Sportage 2 Crdi Isg Mhev S-A	141	0
1788	Kia	Sportage	Diesel	Sportage 2 Crdi Isg S-A	158	0
1789	Kia	Sportage	Petrol	Sportage 2 Isg	177	0
1790	Kia	Sportage	Petrol	Sportage 2 Isg 4X4	192	0
1791	Kia	Sportage	Petrol	Sportage 3 Crdi Isg Mhev	153	0
1792	Kia	Sportage	Petrol	Sportage 3 Crdi Isg Mhev S-A	150	0
1793	Kia	Sportage	Petrol	Sportage 3 Isg	184	0
1794	Kia	Sportage	Petrol	Sportage 3 Isg 4X4	201	0
1795	Kia	Sportage	Diesel	Sportage 4 Crdi Isg	167	0
1796	Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev	154	0
1797	Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev 4X4 A	181	0
1798	Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev S-A	151	0
1799	Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev4X4 Sa	160	0
1800	Kia	Sportage	Diesel	Sportage 4 Crdi Isg S-A	165	0
1801	Kia	Sportage	Petrol	Sportage 4 Isg	184	0
1802	Kia	Sportage	Petrol	Sportage 4 Isg 4X4 S-A	198	0
1803	Kia	Sportage	Petrol	Sportage Edition 25 Isg	184	0
1804	Kia	Sportage	Diesel	Sportage Gt-Line Crdi Isg	160	0
1805	Kia	Sportage	Petrol	Sportage Gt-Line Crdi Isg 4X4	176	0
1806	Kia	Sportage	Petrol	Sportage Gt-Line Crdi Isg Mhev	152	0
1807	Kia	Sportage	Diesel	Sportage Gt-Line Crdi Isg S-A	162	0
1808	Kia	Sportage	Petrol	Sportage Gt-Line Isg	183	0
1809	Kia	Sportage	Petrol	Sportage Gt-Line Isg 4X4 S-A	197	0
1810	Kia	Sportage	Petrol	Sportage Gt-Line S Crdi Isg Sa	153	0
1811	Kia	Sportage	Petrol	Sportage Gt-Line S Isg	184	0
1812	Kia	Sportage	Petrol	Sportage Gt-Line S Isg 4X4 S-A	200	0
1813	Kia	Sportage	Diesel	Sportage Gt-Ln Crdi Isg 4X4 Sa	169	0
1814	Kia	Sportage	Petrol	Sportage Gt-Ln Crdi Mhev Sa	151	0
1815	Kia	Sportage	Petrol	Sportage Gt-Ln Crdi Mhev4X4 Sa	159	0
1816	Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Isg 4X4A	182	0
1817	Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Isg Mhev	155	0
1818	Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Mhev Sa	153	0
1819	Kia	Sportage	Petrol	Sportage Gtln S Crdi Mhev4X4Sa	161	0
1820	Kia	Sportage	Petrol	Sportage Platinum Edition Isg	184	0
1821	Kia	Stinger	Petrol	Stinger Blue Edition Isg Auto	215	0
1822	Kia	Stinger	Petrol	Stinger Gt S Auto	233	0
1823	Kia	Stinger	Diesel	Stinger Gt-Line Crdi Isg Auto	179	0
1824	Kia	Stinger	Petrol	Stinger Gt-Line Isg Auto	209	0
1825	Kia	Stinger	Diesel	Stinger Gt-Line S Crdi Isg A	179	0
1826	Kia	Stinger	Petrol	Stinger Gt-Line S Isg Auto	212	0
1827	Kia	Stonic	Petrol	Stonic 2	129	0
1828	Kia	Stonic	Petrol	Stonic 2 Isg	137	0
1829	Kia	Stonic	Petrol	Stonic 2 S-A	130	0
1830	Kia	Stonic	Diesel	Stonic 3 Crdi Isg	130	0
1831	Kia	Stonic	Petrol	Stonic 3 Isg	137	0
1832	Kia	Stonic	Petrol	Stonic 3 Isg S-A	138	0
1833	Kia	Stonic	Petrol	Stonic 4 Isg	137	0
1834	Kia	Stonic	Petrol	Stonic 4 Isg S-A	138	0
1835	Kia	Stonic	Petrol	Stonic Connect Mhev	125	0
1836	Kia	Stonic	Petrol	Stonic Connect Mhev S-A	129	0
1837	Kia	Stonic	Petrol	Stonic Maxx	137	0
1838	Kia	Stonic	Petrol	Stonic Maxx S-A	138	0
1839	Kia	Stonic	Petrol	Stonic Mixx Isg S-A	138	0
1840	Kia	Xceed	Diesel	Xceed 2 Crdi Isg	141	0
1841	Kia	Xceed	Petrol	Xceed 2 Isg	140	0
1842	Kia	Xceed	Diesel	Xceed 3 Crdi Isg	138	0
1843	Kia	Xceed	Petrol	Xceed 3 Isg	146	0
1844	Kia	Xceed	Petrol	Xceed 3 Isg S-A	156	0
1845	Kia	Xceed	Hybrid	Xceed 3 Phev S-A	32	0
1846	Kia	Xceed	Petrol	Xceed Edition Isg	145	0
1847	Kia	Xceed	Petrol	Xceed First Edition Isg	151	0
1848	Kia	Xceed	Petrol	Xceed First Edition Isg S-A	159	0
1849	Kia	Xceed	Hybrid	Xceed First Edition Phev S-A	38	0
1850	Levc	Tx	Hybrid	Tx Icon	24	199
1851	Levc	Tx	Hybrid	Tx Vista	24	199
1852	Levc	Tx	Hybrid	Tx Vista Comfort	24	199
1853	Levc	Tx	Hybrid	Tx Vista Comfort Plus	24	199
1854	Lexus	Ct	Petrol	Ct 200H Cvt	119	0
1855	Lexus	Ct	Petrol	Ct 200H F Sport Cvt	120	0
1856	Lexus	Ct	Petrol	Ct 200H Takumi Cvt	120	0
1857	Lexus	Es	Petrol	Es 300H Cvt	125	0
1858	Lexus	Es	Petrol	Es 300H F Sport Cvt	127	0
1859	Lexus	Es	Petrol	Es 300H Takumi Cvt	126	0
1860	Lexus	Is	Petrol	Is 300H Cvt	137	0
1861	Lexus	Is	Petrol	Is 300H F Sport Cvt	143	0
1862	Lexus	Is	Petrol	Is 300H Takumi Cvt	142	0
1863	Lexus	Lc	Petrol	Lc 500 Auto	262	0
1864	Lexus	Lc	Petrol	Lc 500 Limited Edition Auto	262	0
1865	Lexus	Lc	Petrol	Lc 500 Regatta Edition Auto	275	0
1866	Lexus	Lc	Petrol	Lc 500 Sport + Auto	262	0
1867	Lexus	Lc	Petrol	Lc 500 Sport Auto	262	0
1868	Lexus	Lc	Petrol	Lc 500H Auto	184	0
1869	Lexus	Lc	Petrol	Lc 500H Limited Edition Auto	184	0
1870	Lexus	Lc	Petrol	Lc 500H Sport + Auto	184	0
1871	Lexus	Lc	Petrol	Lc 500H Sport Auto	184	0
1872	Lexus	Ls	Petrol	Ls 500H F Sport Auto	178	0
1873	Lexus	Ls	Petrol	Ls 500H Premium 4X4 Auto	208	0
1874	Lexus	Ls	Petrol	Ls 500H Premium Auto	177	0
1875	Lexus	Ls	Petrol	Ls 500H Takumi 4X4 Auto	209	0
1876	Lexus	Nx	Petrol	Nx 300H 4X2 Cvt	161	0
1877	Lexus	Nx	Petrol	Nx 300H Cvt	173	0
1878	Lexus	Nx	Petrol	Nx 300H F Sport Cvt	174	0
1879	Lexus	Nx	Petrol	Nx 300H Premium Cvt	172.5	0
1880	Lexus	Nx	Petrol	Nx 300H Takumi Cvt	172	0
1881	Lexus	Rc	Petrol	Rc 300H Cvt	141	0
1882	Lexus	Rc	Petrol	Rc 300H F Sport Cvt	146	0
1883	Lexus	Rc	Petrol	Rc 300H Takumi Cvt	145	0
1884	Lexus	Rc	Petrol	Rc F Auto	268	0
1885	Lexus	Rc	Petrol	Rc F Track Edition Auto	268	0
1886	Lexus	Rx	Petrol	Rx 450H Cvt	179	0
1887	Lexus	Rx	Petrol	Rx 450H F Sport Cvt	180	0
1888	Lexus	Rx	Petrol	Rx 450H Takumi Cvt	180	0
1889	Lexus	Rxl	Petrol	Rxl 450H Cvt	186	0
1890	Lexus	Rxl	Petrol	Rxl 450H Takumi Cvt	186	0
1891	Lexus	Ux	Petrol	Ux 250H + Cvt	135	0
1892	Lexus	Ux	Petrol	Ux 250H 4X2 Cvt	125	0
1893	Lexus	Ux	Petrol	Ux 250H F Sport 4X2 Cvt	127	0
1894	Lexus	Ux	Petrol	Ux 250H F Sport Cvt	137	0
1895	Lexus	Ux	Petrol	Ux 250H Takumi 4X2 Cvt	127	0
1896	Lexus	Ux	Petrol	Ux 250H Takumi Cvt	136	0
1897	Lexus	Ux 300E	Electric	Ux 300E	0	170
1898	Mazda	2	Petrol	2 100Th Anniversary Ed Mhev	120	0
1899	Mazda	2	Petrol	2 Gt Sport Nav Mhev	120	0
1900	Mazda	2	Petrol	2 Se-L Mhev	121	0
1901	Mazda	2	Petrol	2 Se-L Nav Mhev	121	0
1902	Mazda	2	Petrol	2 Sport Nav Auto	133	0
1903	Mazda	2	Petrol	2 Sport Nav Mhev	120	0
1904	Mazda	3	Petrol	3 100Th Anniversary Ed Mhev	131	0
1905	Mazda	3	Petrol	3 Gt Sport Mhev	131	0
1906	Mazda	3	Petrol	3 Gt Sport Mhev Auto	142	0
1907	Mazda	3	Petrol	3 Gt Sport Tech Mhev	131	0
1908	Mazda	3	Petrol	3 Gt Sport Tech Mhev 4X4	142	0
1909	Mazda	3	Petrol	3 Gt Sport Tech Mhev 4X4 Auto	157	0
1910	Mazda	3	Petrol	3 Gt Sport Tech Mhev Auto	142	0
1911	Mazda	3	Petrol	3 Se-L Lux Mhev	136	0
1912	Mazda	3	Petrol	3 Se-L Lux Mhev Auto	148	0
1913	Mazda	3	Petrol	3 Se-L Mhev	136	0
1914	Mazda	3	Petrol	3 Se-L Mhev Auto	148	0
1915	Mazda	3	Diesel	3 Sport Lux D	133	0
1916	Mazda	3	Petrol	3 Sport Lux Mhev	138	0
1917	Mazda	3	Petrol	3 Sport Lux Mhev Auto	142	0
1918	Mazda	3	Petrol	3 Sport Mhev	125	0
1919	Mazda	3	Petrol	3 Sport Mhev Auto	140	0
1920	Mazda	6	Petrol	6 100Th Anniversary Edition A	167	0
1921	Mazda	6	Petrol	6 Gt Sport Nav + Auto	167	0
1922	Mazda	6	Diesel	6 Gt Sport Nav + D	140	0
1923	Mazda	6	Diesel	6 Gt Sport Nav + D Auto	155	0
1924	Mazda	6	Petrol	6 Se-L Lux Nav +	152	0
1925	Mazda	6	Diesel	6 Se-L Lux Nav + D	141	0
1926	Mazda	6	Petrol	6 Se-L Nav +	155	0
1927	Mazda	6	Petrol	6 Se-L Nav + Auto	159	0
1928	Mazda	6	Diesel	6 Se-L Nav + D	137	0
1929	Mazda	6	Diesel	6 Se-L Nav + D Auto	153.5	0
1930	Mazda	6	Petrol	6 Sport Nav +	152	0
1931	Mazda	6	Diesel	6 Sport Nav + D	141	0
1932	Mazda	6	Diesel	6 Sport Nav + D Auto	155	0
1933	Mazda	Cx-3	Petrol	Cx-3 Sport Nav +	140	0
1934	Mazda	Cx-3	Petrol	Cx-3 Sport Nav + Auto	160	0
1935	Mazda	Cx-30	Petrol	Cx-30 100Th Anniversry Ed Mhev	133	0
1936	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev	133	0
1937	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev 4X4	146	0
1938	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev 4X4 Auto	160	0
1939	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev Auto	146	0
1940	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev	133	0
1941	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev 4X4	146	0
1942	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev 4X4 A	160	0
1943	Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev Auto	146	0
1944	Mazda	Cx-30	Petrol	Cx-30 Se-L Lux Mhev	141	0
1945	Mazda	Cx-30	Petrol	Cx-30 Se-L Lux Mhev Auto	151	0
1946	Mazda	Cx-30	Petrol	Cx-30 Se-L Mhev	141	0
1947	Mazda	Cx-30	Petrol	Cx-30 Se-L Mhev Auto	151	0
1948	Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev	141	0
1949	Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev 4X4	146	0
1950	Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev 4X4 Auto	160	0
1951	Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev Auto	151	0
1952	Mazda	Cx-5	Petrol	Cx-5 100Th Anniversary Edition	153	0
1953	Mazda	Cx-5	Petrol	Cx-5 Gt Sport	160	0
1954	Mazda	Cx-5	Petrol	Cx-5 Gt Sport Auto	173	0
1955	Mazda	Cx-5	Diesel	Cx-5 Gt Sport D 4X4	175	0
1956	Mazda	Cx-5	Diesel	Cx-5 Gt Sport D 4X4 Auto	186	0
1957	Mazda	Cx-5	Petrol	Cx-5 Gt Sport Nav +	168	0
1958	Mazda	Cx-5	Petrol	Cx-5 Gt Sport Nav + Auto	173	0
1959	Mazda	Cx-5	Diesel	Cx-5 Gt Sport Nav + D 4X4 A	186	0
1960	Mazda	Cx-5	Diesel	Cx-5 Gt Sport Nav Plus D 4X4	175	0
1961	Mazda	Cx-5	Petrol	Cx-5 Kuro Edition	152	0
1962	Mazda	Cx-5	Petrol	Cx-5 Se-L	163	0
1963	Mazda	Cx-5	Petrol	Cx-5 Se-L Auto	173	0
1964	Mazda	Cx-5	Diesel	Cx-5 Se-L D	154	0
1965	Mazda	Cx-5	Diesel	Cx-5 Se-L D Auto	171	0
1966	Mazda	Cx-5	Petrol	Cx-5 Se-L Nav +	168	0
1967	Mazda	Cx-5	Petrol	Cx-5 Se-L Nav + Auto	173	0
1968	Mazda	Cx-5	Diesel	Cx-5 Se-L Nav + D	154	0
1969	Mazda	Cx-5	Diesel	Cx-5 Se-L Nav + D Auto	171	0
1970	Mazda	Cx-5	Petrol	Cx-5 Sport	160	0
1971	Mazda	Cx-5	Petrol	Cx-5 Sport Auto	173	0
1972	Mazda	Cx-5	Diesel	Cx-5 Sport D	151	0
1973	Mazda	Cx-5	Diesel	Cx-5 Sport D 4X4	175	0
1974	Mazda	Cx-5	Diesel	Cx-5 Sport D 4X4 Auto	186	0
1975	Mazda	Cx-5	Diesel	Cx-5 Sport D Auto	171	0
1976	Mazda	Cx-5	Petrol	Cx-5 Sport Nav +	168	0
1977	Mazda	Cx-5	Petrol	Cx-5 Sport Nav + Auto	173	0
1978	Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D	151	0
1979	Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D 4X4	175	0
1980	Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D 4X4 Auto	186	0
1981	Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D Auto	171	0
1982	Mazda	Mx-5	Petrol	Mx-5 100Th Anniversary Edition	155	0
1983	Mazda	Mx-5	Petrol	Mx-5 Gt Sport Tech	155	0
1984	Mazda	Mx-5	Petrol	Mx-5 R-Sport	142	0
1985	Mazda	Mx-5	Petrol	Mx-5 Rf Gt Sport Tech	155	0
1986	Mazda	Mx-5	Petrol	Mx-5 Rf Gt Sport Tech Auto	171	0
1987	Mazda	Mx-5	Petrol	Mx-5 Rf Se-L	142	0
1988	Mazda	Mx-5	Petrol	Mx-5 Rf Sport	142	0
1989	Mazda	Mx-5	Petrol	Mx-5 Rf Sport Tech	155	0
1990	Mazda	Mx-5	Petrol	Mx-5 Rf Sport Tech Auto	171	0
1991	Mazda	Mx-5	Petrol	Mx-5 Se-L	142	0
1992	Mazda	Mx-5	Petrol	Mx-5 Sport	142	0
1993	Mazda	Mx-5	Petrol	Mx-5 Sport Tech	155	0
1994	Mercedes	A-class	Petrol	A 180 Amg Line	136	0
1995	Mercedes	A-class	Petrol	A 180 Amg Line Auto	137	0
1996	Mercedes	A-class	Diesel	A 180 Amg Line D	122	0
1997	Mercedes	A-class	Diesel	A 180 Amg Line D Auto	119	0
1998	Mercedes	A-class	Petrol	A 180 Amg Line Executive	137	0
1999	Mercedes	A-class	Petrol	A 180 Amg Line Executive Auto	138	0
2000	Mercedes	A-class	Diesel	A 180 Amg Line Executive D	122	0
2001	Mercedes	A-class	Diesel	A 180 Amg Line Executive D A	119	0
2002	Mercedes	A-class	Petrol	A 180 Amg Line Premium	137	0
2003	Mercedes	A-class	Petrol	A 180 Amg Line Premium +	138	0
2004	Mercedes	A-class	Petrol	A 180 Amg Line Premium + A	140	0
2005	Mercedes	A-class	Diesel	A 180 Amg Line Premium + D	123	0
2006	Mercedes	A-class	Diesel	A 180 Amg Line Premium + D A	121	0
2007	Mercedes	A-class	Petrol	A 180 Amg Line Premium Auto	138	0
2008	Mercedes	A-class	Diesel	A 180 Amg Line Premium D	122	0
2009	Mercedes	A-class	Diesel	A 180 Amg Line Premium D Auto	122	0
2010	Mercedes	A-class	Diesel	A 180 D Se Executive Auto	118	0
2011	Mercedes	A-class	Diesel	A 180 D Sport Premium + Auto	123	0
2012	Mercedes	A-class	Diesel	A 180 D Sport Premium Auto	122	0
2013	Mercedes	A-class	Petrol	A 180 Se	134	0
2014	Mercedes	A-class	Petrol	A 180 Se Auto	135	0
2015	Mercedes	A-class	Diesel	A 180 Se D	120	0
2016	Mercedes	A-class	Diesel	A 180 Se D Auto	117	0
2017	Mercedes	A-class	Petrol	A 180 Se Executive	136	0
2018	Mercedes	A-class	Petrol	A 180 Se Executive Auto	136	0
2019	Mercedes	A-class	Diesel	A 180 Se Executive D	120	0
2020	Mercedes	A-class	Petrol	A 180 Sport	135	0
2021	Mercedes	A-class	Petrol	A 180 Sport Auto	136	0
2022	Mercedes	A-class	Diesel	A 180 Sport D	120	0
2023	Mercedes	A-class	Diesel	A 180 Sport D Auto	118	0
2024	Mercedes	A-class	Petrol	A 180 Sport Executive	135	0
2025	Mercedes	A-class	Petrol	A 180 Sport Executive Auto	136	0
2026	Mercedes	A-class	Diesel	A 180 Sport Executive D	120	0
2027	Mercedes	A-class	Diesel	A 180 Sport Executive D Auto	118	0
2028	Mercedes	A-class	Petrol	A 180 Sport Premium	139	0
2029	Mercedes	A-class	Petrol	A 180 Sport Premium +	140	0
2030	Mercedes	A-class	Petrol	A 180 Sport Premium Auto	140	0
2031	Mercedes	A-class	Petrol	A 200 Amg Line	137	0
2032	Mercedes	A-class	Petrol	A 200 Amg Line Auto	138	0
2033	Mercedes	A-class	Petrol	A 200 Amg Line Executive	137	0
2034	Mercedes	A-class	Petrol	A 200 Amg Line Executive Auto	139	0
2035	Mercedes	A-class	Petrol	A 200 Amg Line Premium	139	0
2036	Mercedes	A-class	Petrol	A 200 Amg Line Premium +	138	0
2037	Mercedes	A-class	Petrol	A 200 Amg Line Premium + Auto	140	0
2038	Mercedes	A-class	Petrol	A 200 Amg Line Premium Auto	139	0
2039	Mercedes	A-class	Diesel	A 200 Amg Line Premium D 4M A	137	0
2040	Mercedes	A-class	Diesel	A 200 Amg Line Premium+ D 4M A	138	0
2041	Mercedes	A-class	Diesel	A 200 D Amg Line Auto	129	0
2042	Mercedes	A-class	Diesel	A 200 D Amg Line Executive A	131	0
2043	Mercedes	A-class	Diesel	A 200 D Amg Line Premium + A	131	0
2044	Mercedes	A-class	Diesel	A 200 D Amg Line Premium Auto	129	0
2045	Mercedes	A-class	Diesel	A 200 D Sport Auto	126	0
2046	Mercedes	A-class	Diesel	A 200 D Sport Executive Auto	126	0
2047	Mercedes	A-class	Diesel	A 200 D Sport Premium + Auto	131	0
2048	Mercedes	A-class	Diesel	A 200 D Sport Premium Auto	131	0
2049	Mercedes	A-class	Petrol	A 200 Exclusive Edition Auto	146	0
2050	Mercedes	A-class	Diesel	A 200 Exclusive Edition D Auto	138	0
2051	Mercedes	A-class	Petrol	A 200 Sport	133	0
2052	Mercedes	A-class	Petrol	A 200 Sport Auto	138	0
2053	Mercedes	A-class	Petrol	A 200 Sport Executive	135	0
2054	Mercedes	A-class	Petrol	A 200 Sport Executive Auto	136	0
2055	Mercedes	A-class	Petrol	A 200 Sport Premium	139	0
2056	Mercedes	A-class	Petrol	A 200 Sport Premium +	140	0
2057	Mercedes	A-class	Petrol	A 200 Sport Premium + Auto	141	0
2058	Mercedes	A-class	Petrol	A 200 Sport Premium Auto	140	0
2059	Mercedes	A-class	Petrol	A 220 Amg Line 4Matic Auto	163	0
2060	Mercedes	A-class	Petrol	A 220 Amg Line Auto	158	0
2061	Mercedes	A-class	Petrol	A 220 Amg Line Executive Auto	158	0
2062	Mercedes	A-class	Petrol	A 220 Amg Line Prem + 4Matic A	167	0
2063	Mercedes	A-class	Petrol	A 220 Amg Line Premium + Auto	160	0
2064	Mercedes	A-class	Petrol	A 220 Amg Line Premium Auto	159	0
2065	Mercedes	A-class	Diesel	A 220 Amg Line Premium D 4M A	138	0
2066	Mercedes	A-class	Diesel	A 220 Amg Line Premium+ D 4M A	139	0
2067	Mercedes	A-class	Diesel	A 220 D Amg Line Auto	132	0
2068	Mercedes	A-class	Diesel	A 220 D Amg Line Executive A	131	0
2069	Mercedes	A-class	Diesel	A 220 D Amg Line Premium + A	133	0
2070	Mercedes	A-class	Diesel	A 220 D Amg Line Premium Auto	133	0
2071	Mercedes	A-class	Petrol	A 250 Amg Line Auto	155	0
2072	Mercedes	A-class	Hybrid	A 250 Amg Line E Auto	22	149
2073	Mercedes	A-class	Petrol	A 250 Amg Line Executive Auto	155	0
2074	Mercedes	A-class	Hybrid	A 250 Amg Line Executive E A	24	149
2075	Mercedes	A-class	Petrol	A 250 Amg Line Premium + A	157	0
2076	Mercedes	A-class	Hybrid	A 250 Amg Line Premium + E A	24	149
2077	Mercedes	A-class	Petrol	A 250 Amg Line Premium Auto	156	0
2078	Mercedes	A-class	Hybrid	A 250 Amg Line Premium E Auto	24	153
2079	Mercedes	A-class	Hybrid	A 250 Sport E Auto	25	147
2080	Mercedes	A-class	Diesel	A200 Special Edition A	108	0
2081	Mercedes	A-class	Petrol	Amg A 35 4Matic Auto	186	0
2082	Mercedes	A-class	Petrol	Amg A 35 4Matic Executive Auto	180	0
2083	Mercedes	A-class	Petrol	Amg A 35 4Matic Premium + Auto	188	0
2084	Mercedes	A-class	Petrol	Amg A 35 4Matic Premium Auto	186	0
2085	Mercedes	A-class	Petrol	Amg A 45 S 4Matic+ Auto	194	0
2086	Mercedes	A-class	Petrol	Amg A 45 S 4Matic+ Plus Auto	197	0
2087	Mercedes	C-class	Petrol	Amg C 43 4Matic Auto	220	0
2088	Mercedes	C-class	Petrol	Amg C 43 Edition 4Matic Auto	221	0
2089	Mercedes	C-class	Petrol	Amg C 43 Edition Prem + 4M A	227	0
2090	Mercedes	C-class	Petrol	Amg C 43 Edition Premium 4M A	221	0
2091	Mercedes	C-class	Petrol	Amg C 43 Night Ed Prem + 4M A	225	0
2092	Mercedes	C-class	Petrol	Amg C 43 Premium + 4Matic Auto	223	0
2093	Mercedes	C-class	Petrol	Amg C 43 Premium 4Matic Auto	228	0
2094	Mercedes	C-class	Petrol	Amg C 63 Auto	255	0
2095	Mercedes	C-class	Petrol	Amg C 63 Premium + Auto	260	0
2096	Mercedes	C-class	Petrol	Amg C 63 S Auto	254	0
2097	Mercedes	C-class	Petrol	Amg C 63 S Night Ed Prem + A	250	0
2098	Mercedes	C-class	Petrol	Amg C 63 S Premium + Auto	256	0
2099	Mercedes	C-class	Petrol	Amg C63 Auto	249	0
2100	Mercedes	C-class	Petrol	Amg C63 S Auto	250	0
2101	Mercedes	C-class	Petrol	Amg Cla 35 4Matic Auto	177	0
2102	Mercedes	C-class	Petrol	Amg Cla 35 Premium + 4Matic A	183	0
2103	Mercedes	C-class	Petrol	Amg Cla 35 Premium 4Matic Auto	180	0
2104	Mercedes	C-class	Petrol	Amg Cla 45 S 4Matic+ Auto	200	0
2105	Mercedes	C-class	Petrol	Amg Cla 45 S 4Matic+ Plus Auto	202	0
2106	Mercedes	C-class	Petrol	Amg Cls 53 4Matic Plus Auto	212	0
2107	Mercedes	E-class	Petrol	Amg E 53 4Matic Auto	215	0
2108	Mercedes	E-class	Petrol	Amg E 53 Ngt Ed Prm+ Mhev 4M+A	215	0
2109	Mercedes	E-class	Petrol	Amg E 53 Premium + 4Matic Auto	212	0
2110	Mercedes	E-class	Petrol	Amg E 53 Premium 4Matic Auto	213	0
2111	Mercedes	E-class	Petrol	Amg E 63 S 4Matic+ Auto	276	0
2112	Mercedes	E-class	Petrol	Amg E 63 S Ngt Ed Prem + 4M+ A	283	0
2113	Mercedes	G-class	Petrol	Amg G 63 4Matic Auto	343	0
2114	Mercedes	G-class	Petrol	Amg Gla 35 4Matic Auto	186	0
2115	Mercedes	G-class	Petrol	Amg Gla 35 Premium + 4Matic A	198	0
2116	Mercedes	G-class	Petrol	Amg Gla 35 Premium 4Matic Auto	188	0
2117	Mercedes	G-class	Petrol	Amg Gla 45 S 4Matic+ Auto	215	0
2118	Mercedes	G-class	Petrol	Amg Gla 45 S 4Matic+ Plus Auto	224	0
2119	Mercedes	G-class	Petrol	Amg Glb 35 Premium + 4Matic A	197	0
2120	Mercedes	G-class	Petrol	Amg Glb 35 Premium 4Matic Auto	196	0
2121	Mercedes	G-class	Petrol	Amg Glc 43 4Matic Auto	234	0
2122	Mercedes	G-class	Petrol	Amg Glc 43 Premium + 4Matic A	244	0
2123	Mercedes	G-class	Petrol	Amg Glc 43 Premium 4Matic Auto	234	0
2124	Mercedes	G-class	Petrol	Amg Glc 63 4Matic + Auto	289	0
2125	Mercedes	G-class	Petrol	Amg Glc 63 Premium 4Matic + A	290.5	0
2126	Mercedes	G-class	Petrol	Amg Glc 63 Premium 4Matic Auto	278	0
2127	Mercedes	G-class	Petrol	Amg Glc 63 S 4Matic + Auto	290	0
2128	Mercedes	G-class	Petrol	Amg Glc 63 S Premium + 4M+ A	292.5	0
2129	Mercedes	G-class	Petrol	Amg Glc 63 S Premium 4M + A	295	0
2130	Mercedes	G-class	Petrol	Amg Glc 63 S Premium 4Matic A	286	0
2131	Mercedes	G-class	Petrol	Amg Gle 43 Night Edition 4M A	272	0
2132	Mercedes	G-class	Petrol	Amg Gle 53 Mhev 4Matic+ Auto	246	0
2133	Mercedes	G-class	Petrol	Amg Gle 53 Premium+ Mhev 4M+ A	248	0
2134	Mercedes	G-class	Petrol	Amg Gle 63 Mhev 4Matic+ Auto	279	0
2135	Mercedes	G-class	Petrol	Amg Gle 63 S Night Ed 4M A	348	0
2136	Mercedes	G-class	Petrol	Amg Gls 63 Nt Ed Exec Mhev4M+A	292	0
2137	Mercedes	G-class	Petrol	Amg Gt 63 4Matic + Auto	294.5	0
2138	Mercedes	G-class	Petrol	Amg Gt 63 Premium + 4Matic + A	295	0
2139	Mercedes	G-class	Petrol	Amg Gt 63 S 4Matic + Auto	293	0
2140	Mercedes	G-class	Petrol	Amg Gt 63 S Edition 1 4M + A	295	0
2141	Mercedes	G-class	Petrol	Amg Gt 63 S Premium + 4M + A	296	0
2142	Mercedes	G-class	Petrol	Amg Gt C Auto	293	0
2143	Mercedes	G-class	Petrol	Amg Gt Edition + 476 Auto	277	0
2144	Mercedes	G-class	Petrol	Amg Gt Edition 476 Auto	276	0
2145	Mercedes	G-class	Petrol	Amg Gt Premium Auto	276	0
2146	Mercedes	G-class	Petrol	Amg Gt R Auto	292	0
2147	Mercedes	G-class	Petrol	Amg Gt R Premium Auto	291	0
2148	Mercedes	G-class	Petrol	Amg Gt R Pro Auto	291	0
2149	Mercedes	G-class	Petrol	Amg Gt S Auto	277	0
2150	Mercedes	G-class	Petrol	Amg Gt S Premium Auto	277	0
2151	Mercedes	G-class	Petrol	Amg S 63 Auto	265	0
2152	Mercedes	S-class	Petrol	Amg S 63 L Auto	274.5	0
2153	Mercedes	S-class	Petrol	Amg S 63 L Executive Auto	273	0
2154	Mercedes	S-class	Petrol	Amg Sl 63 Auto	273	0
2155	Mercedes	S-class	Petrol	Amg Slc 43 Auto	199	0
2156	Mercedes	S-class	Petrol	Amg Slc 43 Premium Auto	200	0
2157	Mercedes	B-class	Petrol	B 180 Amg Line	142	0
2158	Mercedes	B-class	Petrol	B 180 Amg Line Auto	144	0
2159	Mercedes	B-class	Diesel	B 180 Amg Line D Auto	126	0
2160	Mercedes	B-class	Petrol	B 180 Amg Line Executive	143	0
2161	Mercedes	B-class	Petrol	B 180 Amg Line Executive Auto	142	0
2162	Mercedes	B-class	Diesel	B 180 Amg Line Executive D A	123	0
2163	Mercedes	B-class	Petrol	B 180 Amg Line Premium + A	143	0
2164	Mercedes	B-class	Diesel	B 180 Amg Line Premium + D A	124	0
2165	Mercedes	B-class	Petrol	B 180 Amg Line Premium Auto	142	0
2166	Mercedes	B-class	Diesel	B 180 Amg Line Premium D Auto	123	0
2167	Mercedes	B-class	Petrol	B 180 Sport	141	0
2168	Mercedes	B-class	Petrol	B 180 Sport Auto	141	0
2169	Mercedes	B-class	Diesel	B 180 Sport D Auto	123	0
2170	Mercedes	B-class	Petrol	B 180 Sport Executive	142	0
2171	Mercedes	B-class	Petrol	B 180 Sport Executive Auto	141	0
2172	Mercedes	B-class	Petrol	B 180 Sport Premium	142	0
2173	Mercedes	B-class	Petrol	B 180 Sport Premium + Auto	144	0
2174	Mercedes	B-class	Diesel	B 180 Sport Premium D	127	0
2175	Mercedes	B-class	Petrol	B 200 Amg Line	143	0
2176	Mercedes	B-class	Petrol	B 200 Amg Line Auto	144	0
2177	Mercedes	B-class	Diesel	B 200 Amg Line D Auto	134	0
2178	Mercedes	B-class	Petrol	B 200 Amg Line Executive	143	0
2179	Mercedes	B-class	Petrol	B 200 Amg Line Executive Auto	142	0
2180	Mercedes	B-class	Diesel	B 200 Amg Line Executive D A	134	0
2181	Mercedes	B-class	Petrol	B 200 Amg Line Premium	143	0
2182	Mercedes	B-class	Petrol	B 200 Amg Line Premium + Auto	143	0
2183	Mercedes	B-class	Diesel	B 200 Amg Line Premium + D A	133	0
2184	Mercedes	B-class	Petrol	B 200 Amg Line Premium Auto	142	0
2185	Mercedes	B-class	Diesel	B 200 Amg Line Premium D Auto	134	0
2186	Mercedes	B-class	Petrol	B 200 Sport Auto	141	0
2187	Mercedes	B-class	Diesel	B 200 Sport D Auto	134	0
2188	Mercedes	B-class	Petrol	B 200 Sport Executive Auto	141	0
2189	Mercedes	B-class	Diesel	B 200 Sport Executive D Auto	134	0
2190	Mercedes	B-class	Petrol	B 200 Sport Premium + Auto	145	0
2191	Mercedes	B-class	Diesel	B 200 Sport Premium D Auto	134	0
2192	Mercedes	B-class	Petrol	B 220 Amg Line D Auto	169	0
2193	Mercedes	B-class	Petrol	B 220 Amg Line Executive 4M A	169	0
2194	Mercedes	B-class	Diesel	B 220 Amg Line Executive D A	136	0
2195	Mercedes	B-class	Diesel	B 220 Amg Line Premium + D A	134	0
2196	Mercedes	B-class	Petrol	B 220 Amg Line Premium 4M A	169	0
2197	Mercedes	B-class	Diesel	B 220 Amg Line Premium D Auto	133	0
2198	Mercedes	B-class	Petrol	B 250 Amg Line Executive Auto	160	0
2199	Mercedes	B-class	Hybrid	B 250 Amg Line Executive E A	27	147
2200	Mercedes	B-class	Petrol	B 250 Amg Line Premium + Auto	162	0
2201	Mercedes	B-class	Petrol	B 250 Amg Line Premium Auto	161	0
2202	Mercedes	B-class	Hybrid	B 250 Amg Line Premium E Auto	27	147
2203	Mercedes	B-class	Hybrid	B 250 Amg Line Premium+ E Auto	27	147
2204	Mercedes	C-class	Petrol	C 180 Amg Line	152	0
2205	Mercedes	C-class	Petrol	C 180 Amg Line Auto	163	0
2206	Mercedes	C-class	Petrol	C 180 Amg Line Premium Auto	163	0
2207	Mercedes	C-class	Petrol	C 180 Se	155	0
2208	Mercedes	C-class	Petrol	C 180 Se Auto	167	0
2209	Mercedes	C-class	Petrol	C 180 Sport	151	0
2210	Mercedes	C-class	Petrol	C 180 Sport Edition	151	0
2211	Mercedes	C-class	Petrol	C 200 Amg Line 4Matic Auto	166	0
2212	Mercedes	C-class	Petrol	C 200 Amg Line Auto	162	0
2213	Mercedes	C-class	Diesel	C 200 Amg Line D	126	0
2214	Mercedes	C-class	Diesel	C 200 Amg Line D Auto	136	0
2215	Mercedes	C-class	Diesel	C 200 Amg Line Ed Prem D A	136	0
2216	Mercedes	C-class	Petrol	C 200 Amg Line Ed Prem Mhev A	156	0
2217	Mercedes	C-class	Petrol	C 200 Amg Line Edition Mhev A	155	0
2218	Mercedes	C-class	Petrol	C 200 Amg Line Premium + Auto	167	0
2219	Mercedes	C-class	Diesel	C 200 Amg Line Premium + D A	142.5	0
2220	Mercedes	C-class	Petrol	C 200 Amg Line Premium 4Mat A	170	0
2221	Mercedes	C-class	Petrol	C 200 Amg Line Premium Auto	156	0
2222	Mercedes	C-class	Petrol	C 200 Amg Line Premium+ 4Mat A	168	0
2223	Mercedes	C-class	Petrol	C 200 Se Auto	156	0
2224	Mercedes	C-class	Diesel	C 200 Se D	130	0
2225	Mercedes	C-class	Diesel	C 200 Se D Auto	139	0
2226	Mercedes	C-class	Petrol	C 200 Sport Auto	154	0
2227	Mercedes	C-class	Diesel	C 200 Sport D	128.5	0
2228	Mercedes	C-class	Diesel	C 200 Sport Edition D Auto	135	0
2229	Mercedes	C-class	Diesel	C 200 Sport Edition Prem D A	135	0
2230	Mercedes	C-class	Petrol	C 200 Sport Premium + Auto	154	0
2231	Mercedes	C-class	Petrol	C 200 Sport Premium Auto	152	0
2232	Mercedes	C-class	Diesel	C 220 Amg Line D 4Matic Auto	139	0
2233	Mercedes	C-class	Diesel	C 220 Amg Line D Auto	139	0
2234	Mercedes	C-class	Diesel	C 220 Amg Line Ed Prem + D A	149	0
2235	Mercedes	C-class	Diesel	C 220 Amg Line Ed Prem D A	148	0
2236	Mercedes	C-class	Diesel	C 220 Amg Line Edition D 4M A	154	0
2237	Mercedes	C-class	Diesel	C 220 Amg Line Edition D Auto	144	0
2238	Mercedes	C-class	Diesel	C 220 Amg Line Premium + D A	141	0
2239	Mercedes	C-class	Diesel	C 220 Amg Line Premium D 4M A	149	0
2240	Mercedes	C-class	Diesel	C 220 Amg Line Premium D Auto	143	0
2241	Mercedes	C-class	Diesel	C 220 Amg Line Premium+ D 4M A	158	0
2242	Mercedes	C-class	Diesel	C 220 Amg Lne Ed Prem + D 4M A	156	0
2243	Mercedes	C-class	Diesel	C 220 Amg Lne Ngt Ed Prm + D A	145	0
2244	Mercedes	C-class	Diesel	C 220 Se D Auto	136	0
2245	Mercedes	C-class	Diesel	C 220 Sport D Auto	133	0
2246	Mercedes	C-class	Diesel	C 220 Sport Edition Prem + D A	139	0
2247	Mercedes	C-class	Diesel	C 220 Sport Edition Prem D A	139	0
2248	Mercedes	C-class	Diesel	C 220 Sport Premium + D Auto	145	0
2249	Mercedes	C-class	Petrol	C 300 Amg Line Auto	166	0
2250	Mercedes	C-class	Diesel	C 300 Amg Line D Auto	151	0
2251	Mercedes	C-class	Hybrid	C 300 Amg Line E 4Matic Auto	37	168
2252	Mercedes	C-class	Petrol	C 300 Amg Line Ed Prem + A	176	0
2253	Mercedes	C-class	Diesel	C 300 Amg Line Ed Prem + D A	153	0
2254	Mercedes	C-class	Hybrid	C 300 Amg Line Ed Prem + De A	34	157
2255	Mercedes	C-class	Hybrid	C 300 Amg Line Ed Prem + E A	38	151
2256	Mercedes	C-class	Diesel	C 300 Amg Line Ed Prem D A	152	0
2257	Mercedes	C-class	Petrol	C 300 Amg Line Ed Prem Mhev A	173	0
2258	Mercedes	C-class	Hybrid	C 300 Amg Line Ed Premium De A	39	180
2259	Mercedes	C-class	Hybrid	C 300 Amg Line Ed Premium E A	37	151
2260	Mercedes	C-class	Petrol	C 300 Amg Line Edition Auto	163	0
2261	Mercedes	C-class	Diesel	C 300 Amg Line Edition D 4M A	159	0
2262	Mercedes	C-class	Diesel	C 300 Amg Line Edition D Auto	151	0
2263	Mercedes	C-class	Hybrid	C 300 Amg Line Edition De Auto	33	157
2264	Mercedes	C-class	Hybrid	C 300 Amg Line Edition E Auto	37	151
2265	Mercedes	C-class	Petrol	C 300 Amg Line Edition Prem A	174	0
2266	Mercedes	C-class	Petrol	C 300 Amg Line Exec Mhev 4M A	168	0
2267	Mercedes	C-class	Petrol	C 300 Amg Line Ngt Ed Prem + A	171	0
2268	Mercedes	C-class	Petrol	C 300 Amg Line Night Ed Prem A	170	0
2269	Mercedes	C-class	Petrol	C 300 Amg Line Prem Mhev 4M A	170	0
2270	Mercedes	C-class	Petrol	C 300 Amg Line Premium + Auto	176	0
2271	Mercedes	C-class	Diesel	C 300 Amg Line Premium + D A	146	0
2272	Mercedes	C-class	Petrol	C 300 Amg Line Premium Auto	163	0
2273	Mercedes	C-class	Diesel	C 300 Amg Line Premium D 4M A	150	0
2274	Mercedes	C-class	Diesel	C 300 Amg Line Premium D Auto	153	0
2275	Mercedes	C-class	Hybrid	C 300 Amg Line Premium E 4M A	37	168
2276	Mercedes	C-class	Diesel	C 300 Amg Line Premium+ D 4M A	164	0
2277	Mercedes	C-class	Petrol	C 300 Amg Ln Nght Ed Mhev 4M A	174	0
2278	Mercedes	C-class	Hybrid	C 300 Amg Ln Ngt Ed Prm + De A	41	186.5
2279	Mercedes	C-class	Diesel	C 300 Amg Ln Ngt Ed Prm D 4M A	166	0
2280	Mercedes	C-class	Diesel	C 300 Amg Ln Ngt Ed Prm+D 4M A	167	0
2281	Mercedes	C-class	Diesel	C 300 Amg Lne Ngt Ed Prm + D A	164	0
2282	Mercedes	C-class	Hybrid	C 300 Sport Ed Premium + De A	35.5	165
2283	Mercedes	C-class	Hybrid	C 300 Sport Ed Premium De Auto	33	159.5
2284	Mercedes	C-class	Hybrid	C 300 Sport Edition De Auto	35	162
2285	Mercedes	C-class	Hybrid	C 300 Sport Edition E Auto	37	151
2286	Mercedes	C-class	Petrol	C 300 Sport Edition Prem + A	164.5	0
2287	Mercedes	C-class	Hybrid	C 300 Sport Edition Prem E A	37	145
2288	Mercedes	C-class	Petrol	C 300 Sport Mhev 4Matic Auto	179	0
2289	Mercedes	C-class	Petrol	C 300 Sport Premium Auto	167	0
2290	Mercedes	C-class	Petrol	C200 Amg Ln Ngt Ed Prem Mhev A	174	0
2291	Mercedes	C-class	Petrol	C200 Amg Ln Ngt Ed Prm+ Mhev A	175	0
2292	Mercedes	C-class	Diesel	C230 Esprit Komp Auto	174	0
2293	Mercedes	C-class	Petrol	C300 Amg Ln Ngt Ed Prm+ Mhev A	175	0
2294	Mercedes	Citan	Diesel	Citan 109 Pure Cdi	150	0
2295	Mercedes	Citan	Diesel	Citan Tourer Pro 109Cdi	147	0
2296	Mercedes	Citan	Diesel	Citan Tourer Pro 111Cdi	146	0
2297	Mercedes	C-class	Petrol	Cla 180 Amg Line	125.5	0
2298	Mercedes	C-class	Petrol	Cla 180 Amg Line Auto	138	0
2299	Mercedes	C-class	Diesel	Cla 180 Amg Line Executive D	125	0
2300	Mercedes	C-class	Petrol	Cla 180 Amg Line Premium + A	140	0
2301	Mercedes	C-class	Petrol	Cla 180 Amg Line Premium Auto	138	0
2302	Mercedes	C-class	Diesel	Cla 180 Sport Premium + D	128	0
2303	Mercedes	C-class	Petrol	Cla 200 Amg Line	140	0
2304	Mercedes	C-class	Petrol	Cla 200 Amg Line Auto	139	0
2305	Mercedes	C-class	Diesel	Cla 200 Amg Line D Auto	135	0
2306	Mercedes	C-class	Diesel	Cla 200 Amg Line Prem D 4M A	142	0
2307	Mercedes	C-class	Petrol	Cla 200 Amg Line Premium +	148	0
2308	Mercedes	C-class	Petrol	Cla 200 Amg Line Premium + A	140	0
2309	Mercedes	C-class	Diesel	Cla 200 Amg Line Premium + D	130	0
2310	Mercedes	C-class	Diesel	Cla 200 Amg Line Premium + D A	134	0
2311	Mercedes	C-class	Petrol	Cla 200 Amg Line Premium Auto	139	0
2312	Mercedes	C-class	Diesel	Cla 200 Amg Line Premium D	129	0
2313	Mercedes	C-class	Diesel	Cla 200 Amg Line Premium D A	134	0
2314	Mercedes	C-class	Petrol	Cla 200 Sport Premium + A	145	0
2315	Mercedes	C-class	Petrol	Cla 220 Amg Line Auto	157.5	0
2316	Mercedes	C-class	Diesel	Cla 220 Amg Line D Auto	132	0
2317	Mercedes	C-class	Diesel	Cla 220 Amg Line Prem + D 4M A	140	0
2318	Mercedes	C-class	Petrol	Cla 220 Amg Line Premium + A	160	0
2319	Mercedes	C-class	Diesel	Cla 220 Amg Line Premium + D A	133	0
2320	Mercedes	C-class	Petrol	Cla 220 Amg Line Premium Auto	161	0
2321	Mercedes	C-class	Diesel	Cla 220 Amg Line Premium D A	129	0
2322	Mercedes	C-class	Petrol	Cla 250 Amg Line Auto	154	0
2323	Mercedes	C-class	Hybrid	Cla 250 Amg Line E Auto	25.5	149.5
2324	Mercedes	C-class	Petrol	Cla 250 Amg Line Premium + A	155	0
2325	Mercedes	C-class	Hybrid	Cla 250 Amg Line Premium + E A	24	151
2326	Mercedes	C-class	Petrol	Cla 250 Amg Line Premium Auto	154	0
2327	Mercedes	C-class	Hybrid	Cla 250 Amg Line Premium E A	23	151
2328	Mercedes	C-class	Diesel	Cls 220 Amg Line Premium + D A	167	0
2329	Mercedes	C-class	Diesel	Cls 300 D Amg Line Auto	172	0
2330	Mercedes	C-class	Diesel	Cls 300 D Amg Line Premium + A	176	0
2331	Mercedes	C-class	Petrol	Cls 350 Amg Line Auto	186	0
2332	Mercedes	C-class	Petrol	Cls 350 Amg Line Premium + A	189	0
2333	Mercedes	C-class	Diesel	Cls 350 D Amg Line Prem + 4M A	192	0
2334	Mercedes	C-class	Diesel	Cls 400 D Amg Line 4Matic Auto	192	0
2335	Mercedes	C-class	Diesel	Cls 400 D Amg Line Prem + 4M A	192	0
2336	Mercedes	C-class	Petrol	Cls 450 Amg Line 4Matic Auto	203	0
2337	Mercedes	E-class	Petrol	E 200 Amg Line Edition Auto	193	0
2338	Mercedes	E-class	Petrol	E 200 Amg Line Edition Prem A	193	0
2339	Mercedes	E-class	Petrol	E 200 Se Auto	169	0
2340	Mercedes	E-class	Petrol	E 200 Se Premium + Auto	175	0
2341	Mercedes	E-class	Petrol	E 200 Sport Mhev Auto	174	0
2342	Mercedes	E-class	Diesel	E 220 Amg Line D 4Matic Auto	174	0
2421	Mercedes	Evito	Electric	Evito Tourer Pro	0	285
2343	Mercedes	E-class	Diesel	E 220 Amg Line Ed Prem + D A	164.5	0
2344	Mercedes	E-class	Diesel	E 220 Amg Line Ed Prem D A	163	0
2345	Mercedes	E-class	Diesel	E 220 Amg Line Edition D Auto	162	0
2346	Mercedes	E-class	Diesel	E 220 Amg Ln Ngt Ed Prm D 4M A	172	0
2347	Mercedes	E-class	Diesel	E 220 Amg Ln Ngt Ed Prm+D 4M A	168	0
2348	Mercedes	E-class	Diesel	E 220 Amg Lne Ngt Ed Prm + D A	164	0
2349	Mercedes	E-class	Diesel	E 220 Amg Lne Night Ed Prm D A	163	0
2350	Mercedes	E-class	Diesel	E 220 D Amg Line 4Matic Auto	169	0
2351	Mercedes	E-class	Diesel	E 220 D Amg Line Auto	170	0
2352	Mercedes	E-class	Diesel	E 220 D Amg Line Premium Auto	165	0
2353	Mercedes	E-class	Diesel	E 220 D Amg Line Premium+ Auto	167	0
2354	Mercedes	E-class	Petrol	E 220 D Se 4Matic Auto	190	0
2355	Mercedes	E-class	Diesel	E 220 D Se Auto	141	0
2356	Mercedes	E-class	Diesel	E 220 D Se Premium + 4Matic A	160	0
2357	Mercedes	E-class	Diesel	E 220 D Se Premium Auto	156	0
2358	Mercedes	E-class	Diesel	E 220 D Se Premium+ Auto	157	0
2359	Mercedes	E-class	Diesel	E 220 Sport D Auto	139	0
2360	Mercedes	E-class	Petrol	E 300 Amg Line Auto	206	0
2361	Mercedes	E-class	Diesel	E 300 Amg Line D Auto	172	0
2362	Mercedes	E-class	Hybrid	E 300 Amg Line De Auto	36	161
2363	Mercedes	E-class	Hybrid	E 300 Amg Line E Auto	42	138
2364	Mercedes	E-class	Diesel	E 300 Amg Line Ed Premium D A	170	0
2365	Mercedes	E-class	Diesel	E 300 Amg Line Edition D Auto	170	0
2366	Mercedes	E-class	Hybrid	E 300 Amg Line Edition De Auto	33	155
2367	Mercedes	E-class	Hybrid	E 300 Amg Line Edition E Auto	37	167
2368	Mercedes	E-class	Petrol	E 300 Amg Line Ngt Ed Prem + A	206	0
2369	Mercedes	E-class	Petrol	E 300 Amg Line Premium + Auto	206	0
2370	Mercedes	E-class	Hybrid	E 300 Amg Line Premium + De A	38.5	170.5
2371	Mercedes	E-class	Hybrid	E 300 Amg Line Premium + E A	45	138
2372	Mercedes	E-class	Petrol	E 300 Amg Line Premium Auto	206	0
2373	Mercedes	E-class	Diesel	E 300 Amg Line Premium D Auto	173	0
2374	Mercedes	E-class	Hybrid	E 300 Amg Line Premium De Auto	40	175
2375	Mercedes	E-class	Hybrid	E 300 Amg Line Premium E 4M A	40	159
2376	Mercedes	E-class	Hybrid	E 300 Amg Line Premium E Auto	42	138
2377	Mercedes	E-class	Hybrid	E 300 Amg Line Premium+ E 4M A	40	159
2378	Mercedes	E-class	Hybrid	E 300 Amg Ln Ngt Ed Prm + De A	34	155
2379	Mercedes	E-class	Diesel	E 300 Amg Ln Night Ed Prem+D A	172	0
2380	Mercedes	E-class	Hybrid	E 300 Amg Lne Ngt Ed Prem+ E A	38	167
2381	Mercedes	E-class	Diesel	E 300 D Amg Line Premium + A	175	0
2382	Mercedes	E-class	Hybrid	E 300 Se De Auto	39	182
2383	Mercedes	E-class	Hybrid	E 300 Se E Auto	39	132
2384	Mercedes	E-class	Hybrid	E 300 Se Premium + De Auto	42	195
2385	Mercedes	E-class	Hybrid	E 300 Se Premium + E Auto	44	138
2386	Mercedes	E-class	Hybrid	E 300 Se Premium De Auto	42	195
2387	Mercedes	E-class	Petrol	E 350 Amg Line Auto	199	0
2388	Mercedes	E-class	Diesel	E 350 Amg Line Ed Prem + D A	179	0
2389	Mercedes	E-class	Diesel	E 350 Amg Line Ed Premium D A	171	0
2390	Mercedes	E-class	Diesel	E 350 Amg Line Edition D Auto	171	0
2391	Mercedes	E-class	Petrol	E 350 Amg Line Premium + Auto	191	0
2392	Mercedes	E-class	Diesel	E 350 Amg Lne Nght Ed Prem D A	172	0
2393	Mercedes	E-class	Diesel	E 350 Amg Lne Ngt Ed Prem+ D A	173	0
2394	Mercedes	E-class	Hybrid	E 350 E Amg Line Auto	189	0
2395	Mercedes	E-class	Hybrid	E 350 E Amg Line Premium Auto	189	0
2396	Mercedes	E-class	Diesel	E 400 All Terrain Ed D 4M A	200	0
2397	Mercedes	E-class	Diesel	E 400 Amg Line D 4Matic Auto	189	0
2398	Mercedes	E-class	Diesel	E 400 Amg Line Ed Prm + D 4M A	189	0
2399	Mercedes	E-class	Diesel	E 400 Amg Line Edition D 4M A	194	0
2400	Mercedes	E-class	Diesel	E 400 Amg Line Prem + D 4M A	192	0
2401	Mercedes	E-class	Diesel	E 400 Amg Line Premium D 4M A	195	0
2402	Mercedes	E-class	Diesel	E 400 Amg Ln Ngt Ed Prm D 4M A	188	0
2403	Mercedes	E-class	Diesel	E 400 Amg Ln Ngt Ed Prm+D 4M A	195	0
2404	Mercedes	E-class	Petrol	E 450 Amg Line 4Matic Auto	220.5	0
2405	Mercedes	E-class	Petrol	E 450 Amg Line Ed Prem + 4M A	215	0
2406	Mercedes	E-class	Petrol	E 450 Amg Line Edition 4M A	213	0
2407	Mercedes	E-class	Petrol	E 450 Amg Line Premium + 4M A	216	0
2408	Mercedes	E-class	Petrol	E 450 Amg Ln Ngt Ed Prm + 4M A	201	0
2409	Mercedes	E-class	Petrol	E 450 Amg Lne Nght Ed Prem 4Ma	214	0
2410	Mercedes	E-class	Petrol	E 450 Amg Lne Ngt Ed Prm+ 4M A	216	0
2411	Mercedes	E-class	Diesel	E250 Cdi Coleman Milne Auto	146	0
2412	Mercedes	E-class	Electric	Eqc 400 Amg Line 4Matic	0	0
2413	Mercedes	E-class	Electric	Eqc 400 Amg Line Premium + 4M	0	0
2414	Mercedes	E-class	Electric	Eqc 400 Amg Line Premium 4M	0	0
2415	Mercedes	E-class	Electric	Eqc 400 Edition 1 4Matic	0	0
2416	Mercedes	E-class	Electric	Eqc 400 Edition 1886 4Matic	0	0
2417	Mercedes	E-class	Electric	Eqc 400 Sport 4Matic	0	0
2418	Mercedes	E-class	Electric	Eqv 300 Sport	0	289
2419	Mercedes	E-class	Electric	Eqv 300 Sport Premium	0	292
2420	Mercedes	Evito	Electric	Evito Tourer	0	275
2422	Mercedes	G-class	Diesel	G 350 Amg Line D 4Matic Auto	288	0
2423	Mercedes	G-class	Diesel	G 350 Amg Line Premium D 4M A	289	0
2424	Mercedes	G-class	Petrol	Gla 180 Amg Line Auto	154	0
2425	Mercedes	G-class	Petrol	Gla 180 Amg Line Edition	170	0
2426	Mercedes	G-class	Petrol	Gla 180 Amg Line Edition Auto	172	0
2427	Mercedes	G-class	Petrol	Gla 180 Amg Line Executive A	154	0
2428	Mercedes	G-class	Petrol	Gla 180 Amg Line Premium + A	155	0
2429	Mercedes	G-class	Petrol	Gla 180 Amg Line Premium Auto	154	0
2430	Mercedes	G-class	Petrol	Gla 180 Urban Edition	166	0
2431	Mercedes	G-class	Petrol	Gla 180 Urban Edition Auto	169	0
2432	Mercedes	G-class	Petrol	Gla 200 Amg Line Auto	154	0
2433	Mercedes	G-class	Diesel	Gla 200 Amg Line D 4Matic Auto	148	0
2434	Mercedes	G-class	Diesel	Gla 200 Amg Line D Auto	142	0
2435	Mercedes	G-class	Petrol	Gla 200 Amg Line Edition	170	0
2436	Mercedes	G-class	Petrol	Gla 200 Amg Line Edition +	171	0
2437	Mercedes	G-class	Petrol	Gla 200 Amg Line Edition + A	179	0
2438	Mercedes	G-class	Petrol	Gla 200 Amg Line Edition A	178	0
2439	Mercedes	G-class	Diesel	Gla 200 Amg Line Exec D 4M A	148	0
2440	Mercedes	G-class	Petrol	Gla 200 Amg Line Executive A	154	0
2441	Mercedes	G-class	Diesel	Gla 200 Amg Line Executive D A	142	0
2442	Mercedes	G-class	Diesel	Gla 200 Amg Line Prem + D 4M A	150	0
2443	Mercedes	G-class	Diesel	Gla 200 Amg Line Prem D 4M A	148	0
2444	Mercedes	G-class	Petrol	Gla 200 Amg Line Premium + A	155	0
2445	Mercedes	G-class	Diesel	Gla 200 Amg Line Premium + D A	144	0
2446	Mercedes	G-class	Petrol	Gla 200 Amg Line Premium Auto	154	0
2447	Mercedes	G-class	Diesel	Gla 200 Amg Line Premium D A	143	0
2448	Mercedes	G-class	Petrol	Gla 200 Sport Auto	151	0
2449	Mercedes	G-class	Diesel	Gla 200 Sport D Auto	140	0
2450	Mercedes	G-class	Petrol	Gla 200 Sport Executive Auto	151	0
2451	Mercedes	G-class	Diesel	Gla 200 Sport Executive D Auto	141	0
2452	Mercedes	G-class	Petrol	Gla 200 Urban Edition + A	175	0
2453	Mercedes	G-class	Diesel	Gla 220 Amg Line D 4Matic Auto	149	0
2454	Mercedes	G-class	Diesel	Gla 220 Amg Line Exec D 4M A	149	0
2455	Mercedes	G-class	Diesel	Gla 220 Amg Line Prem + D 4M A	151	0
2456	Mercedes	G-class	Diesel	Gla 220 Amg Line Prem D 4M A	150	0
2457	Mercedes	G-class	Petrol	Gla 250 Amg Line Auto	172	0
2458	Mercedes	G-class	Petrol	Gla 250 Amg Line Executive A	172	0
2459	Mercedes	G-class	Hybrid	Gla 250 Amg Line Executive E A	32	155
2460	Mercedes	G-class	Petrol	Gla 250 Amg Line Premium + A	174	0
2461	Mercedes	G-class	Petrol	Gla 250 Amg Line Premium Auto	173	0
2462	Mercedes	G-class	Hybrid	Gla 250 Exclsive Ed Prem + E A	33	155
2463	Mercedes	G-class	Hybrid	Gla 250 Exclusive Ed Prem E A	32	155
2464	Mercedes	G-class	Hybrid	Gla 250 Exclusive Edition E A	32	155
2465	Mercedes	G-class	Petrol	Glb 200 Amg Line Auto	163	0
2466	Mercedes	G-class	Diesel	Glb 200 Amg Line D Auto	155	0
2467	Mercedes	G-class	Diesel	Glb 200 Amg Line Prem + D 4M A	158.5	0
2468	Mercedes	G-class	Diesel	Glb 200 Amg Line Prem D 4M A	155	0
2469	Mercedes	G-class	Petrol	Glb 200 Amg Line Premium + A	165	0
2470	Mercedes	G-class	Petrol	Glb 200 Amg Line Premium Auto	171	0
2471	Mercedes	G-class	Diesel	Glb 200 Amg Line Premium D A	155	0
2472	Mercedes	G-class	Petrol	Glb 200 Sport Auto	160	0
2473	Mercedes	G-class	Petrol	Glb 200 Sport Premium + Auto	163	0
2474	Mercedes	G-class	Diesel	Glb 220 Amg Line Prem + D 4M A	166	0
2475	Mercedes	G-class	Diesel	Glb 220 Amg Line Prem D 4M A	161	0
2476	Mercedes	G-class	Diesel	Glc 220 Amg Night Ed D 4M A	189	0
2477	Mercedes	G-class	Diesel	Glc 220 D 4M Amg Line Prem + A	174.5	0
2478	Mercedes	G-class	Diesel	Glc 220 D 4M Amg Line Prem A	168	0
2479	Mercedes	G-class	Diesel	Glc 220 D 4Matic Amg Line Auto	165	0
2480	Mercedes	G-class	Diesel	Glc 220 D 4Matic Sport Auto	156	0
2481	Mercedes	G-class	Diesel	Glc 220 Urban Edition D 4M A	186	0
2482	Mercedes	G-class	Petrol	Glc 300 Amg Line 4Matic Auto	194	0
2483	Mercedes	G-class	Hybrid	Glc 300 Amg Line De 4Matic A	49	150
2484	Mercedes	G-class	Hybrid	Glc 300 Amg Line E 4Matic Auto	59	171
2485	Mercedes	G-class	Petrol	Glc 300 Amg Line Prem + 4M A	202	0
2486	Mercedes	G-class	Diesel	Glc 300 Amg Line Prem + D 4M A	178	0
2487	Mercedes	G-class	Diesel	Glc 300 Amg Line Prem D 4M A	181	0
2488	Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem De 4M A	50	150
2489	Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem E 4Mat A	60	177
2490	Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem+ E 4M A	62	177
2491	Mercedes	G-class	Petrol	Glc 300 Amg Line Premium 4M A	200	0
2492	Mercedes	G-class	Petrol	Glc 300 Amg Line Ultimate 4M A	198	0
2493	Mercedes	G-class	Diesel	Glc 300 Amg Ln Ultimate D 4M A	179	0
2494	Mercedes	G-class	Hybrid	Glc 300 Amg Ln Ultimate E 4M A	65	177
2495	Mercedes	G-class	Hybrid	Glc 300 Amg Lne Prem + De 4M A	48	146
2496	Mercedes	G-class	Petrol	Glc 300 Sport 4Matic Auto	188	0
2497	Mercedes	G-class	Diesel	Glc 400 Amg Line Prem + D 4M A	196	0
2498	Mercedes	G-class	Diesel	Gle 300 Amg Line D 4Matic Auto	202	0
2499	Mercedes	G-class	Diesel	Gle 300 Amg Line Exec D 4Mat A	210	0
2500	Mercedes	G-class	Diesel	Gle 300 Amg Line Prem + D 4M A	208	0
2501	Mercedes	G-class	Diesel	Gle 300 Amg Line Prem D 4M A	203	0
2502	Mercedes	G-class	Diesel	Gle 350 Amg Line D 4Matic Auto	220	0
2503	Mercedes	G-class	Hybrid	Gle 350 Amg Line De 4Matic A	19	254
2504	Mercedes	G-class	Diesel	Gle 350 Amg Line Prem + D 4M A	220	0
2505	Mercedes	G-class	Diesel	Gle 350 Amg Line Prem D 4M A	220	0
2506	Mercedes	G-class	Hybrid	Gle 350 Amg Line Prem De 4M A	19	254
2507	Mercedes	G-class	Hybrid	Gle 350 Amg Line Prem+ De 4M A	19	254
2508	Mercedes	G-class	Diesel	Gle 350 Amg Night Ed D 4M A	237	0
2509	Mercedes	G-class	Diesel	Gle 400 Amg Line D 4Matic Auto	234	0
2510	Mercedes	G-class	Diesel	Gle 400 Amg Line Prem + D 4M A	221	0
2511	Mercedes	G-class	Diesel	Gle 400 Amg Line Prem D 4M A	222	0
2512	Mercedes	G-class	Petrol	Gle 450 Amg Line 4Matic Auto	218	0
2513	Mercedes	G-class	Petrol	Gle 450 Amg Line Prem + 4M A	222	0
2514	Mercedes	G-class	Petrol	Gle 450 Amg Line Premium 4M A	218	0
2515	Mercedes	G-class	Petrol	Gle 580 Amg Lne Exec Mhev 4M A	267	0
2516	Mercedes	G-class	Diesel	Gls 350 D Amg Line 4Matic Auto	269	0
2517	Mercedes	G-class	Diesel	Gls 400 Amg Line Prem D 4Mat A	242	0
2518	Mercedes	G-class	Diesel	Gls 400 Amg Ln Prem + D 4Mat A	242	0
2519	Mercedes	G-class	Diesel	Gls 400 Amg Ln Prem+Exe D 4M A	246	0
2520	Mercedes	S-class	Diesel	S 350 D Amg Line Executive A	179	0
2521	Mercedes	S-class	Diesel	S 350 D L Amg Line Auto	178	0
2522	Mercedes	S-class	Diesel	S 350 D L Amg Line Exec Prem A	177	0
2523	Mercedes	S-class	Diesel	S 350 D L Amg Line Exec Prem+A	181.5	0
2524	Mercedes	S-class	Diesel	S 350 D L Amg Line Executive A	178	0
2525	Mercedes	S-class	Diesel	S 350 D L Amg Line Premium A	174	0
2526	Mercedes	S-class	Diesel	S 350 Grand Ed Executive D A	183	0
2527	Mercedes	S-class	Diesel	S 350 Grand Edition D Auto	180	0
2528	Mercedes	S-class	Diesel	S 350 L Grand Ed Executive D A	184	0
2529	Mercedes	S-class	Diesel	S 400 L Grand Ed Executive D A	183	0
2530	Mercedes	S-class	Petrol	S 450 L Amg Line Executive A	186	0
2531	Mercedes	S-class	Petrol	S 450 L Grand Ed Exec Mhev A	188.5	0
2532	Mercedes	S-class	Petrol	S 450 L Grand Edition Mhev A	187	0
2533	Mercedes	S-class	Petrol	S 500 L Amg Line Exec Prem + A	189	0
2534	Mercedes	S-class	Petrol	S 500 L Amg Line Executive A	188	0
2535	Mercedes	S-class	Petrol	S 500 L Grand Edition Mhev A	187	0
2536	Mercedes	S-class	Petrol	S 560 Amg Line Premium Auto	237	0
2537	Mercedes	S-class	Hybrid	S 560 E L Amg Line Auto	52	200
2538	Mercedes	S-class	Hybrid	S 560 E L Amg Line Executive A	58	203
2539	Mercedes	S-class	Hybrid	S 560 E L Se Auto	51	200
2540	Mercedes	S-class	Petrol	S 560 Grand Edition Auto	251	0
2541	Mercedes	S-class	Petrol	S 650 Maybach Auto	328	0
2542	Mercedes	S-class	Petrol	S65 Amg L Auto	345	0
2543	Mercedes	S-class	Petrol	Sl 400 Amg Line Auto	206	0
2544	Mercedes	S-class	Petrol	Sl 400 Amg Line Premium Auto	212	0
2545	Mercedes	S-class	Petrol	Sl 400 Grand Edition Auto	217	0
2546	Mercedes	S-class	Petrol	Sl 400 Grand Edition Premium A	217	0
2547	Mercedes	S-class	Petrol	Sl 500 Grand Edition Auto	237	0
2548	Mercedes	S-class	Petrol	Sl 500 Grand Edition Premium A	237	0
2549	Mercedes	S-class	Petrol	Slc 200 Final Edition	167	0
2550	Mercedes	S-class	Petrol	Slc 200 Final Edition Auto	173	0
2551	Mercedes	S-class	Petrol	Slc 200 Final Edition Premium	167	0
2552	Mercedes	S-class	Petrol	Slc 300 Amg Line Auto	178	0
2553	Mercedes	S-class	Petrol	Slc 300 Final Edition Prem A	178	0
2554	Mercedes	S-class	Diesel	Slk 230 Kompressor Auto	153	0
2555	Mercedes	Sprinter	Diesel	Sprinter 315 Progressive Cdi	252	0
2556	Mercedes	Sprinter	Diesel	Sprinter 316Cdi Blueefficiency	235	0
2557	Mercedes	V-class	Diesel	V 220 D Amg Line Auto	207	0
2558	Mercedes	V-class	Diesel	V 220 D Amg Ln Marcopolo Hzn A	209	0
2559	Mercedes	V-class	Diesel	V 220 D Sport Marco Polo Auto	208	0
2560	Mercedes	V-class	Diesel	V 220 D Sprt Marco Polo Hrzn A	209	0
2561	Mercedes	V-class	Diesel	V 220 Sport D Auto	206	0
2562	Mercedes	V-class	Diesel	V 250 D Amg Line Auto	207	0
2563	Mercedes	V-class	Diesel	V 250 D Sprt Marco Polo Hrzn A	209	0
2564	Mercedes	V-class	Diesel	V 300 Amg Line D Auto	207	0
2565	Mercedes	V-class	Diesel	V 300 Amg Line Marco Polo D A	214	0
2566	Mercedes	V-class	Diesel	V 300 Amg Ln Marcopolo Hrn D A	211	0
2567	Mercedes	V-class	Diesel	V 300 Sport D Auto	203.5	0
2568	Mercedes	V-class	Diesel	V 300 Sport Marco Polo Hrz D A	205	0
2569	Mercedes	V-class	Diesel	V220 D Sport Auto	209	0
2570	Mercedes	V-class	Diesel	V220 Sport Bluetec Auto	208	0
2571	Mercedes	V-class	Diesel	V250 D Sport Auto	208	0
2572	Mercedes	V-class	Diesel	V250 Se Bluetec Auto	208	0
2573	Mercedes	Vito	Diesel	Vito 110Cdi Tourer Pro	197	0
2574	Mercedes	Vito	Diesel	Vito 114 Bluetec Tourer Pro	197	0
2575	Mercedes	Vito	Diesel	Vito 114 Bluetec Tourer Select	202	0
2576	Mercedes	Vito	Diesel	Vito 114Cdi Tourer Pro	196	0
2577	Mercedes	Vito	Diesel	Vito 114Cdi Tourer Pro Auto	189	0
2578	Mercedes	Vito	Diesel	Vito 114Cdi Tourer Select Auto	193	0
2579	Mercedes	Vito	Diesel	Vito 116 Bluetec Tourer Pro	199	0
2580	Mercedes	Vito	Diesel	Vito 116 Bluetec Tourer Select	201	0
2581	Mercedes	Vito	Diesel	Vito 116Cdi Tourer Pro Auto	189	0
2582	Mercedes	Vito	Diesel	Vito 116Cdi Tourer Select Auto	193	0
2583	Mercedes	Vito	Diesel	Vito 119 B-Tec Tourer Select A	203	0
2584	Mercedes	Vito	Diesel	Vito 119Cdi Tourer Pro Auto	188	0
2585	Mercedes	Vito	Diesel	Vito 119Cdi Tourer Select Auto	203	0
2586	Mercedes	Vito	Diesel	Vito 119Cdi Tourer Sport Auto	211	0
2587	Mercedes	Vito	Diesel	Vito Taxi+ Compact 114Cdi Auto	192	0
2588	MG	3	Petrol	3 Excite Vti-Tech	152	0
2589	MG	3	Petrol	3 Exclusive Nav Vti-Tech	152	0
2590	MG	3	Petrol	3 Exclusive Vti-Tech	152	0
2591	MG	3	Petrol	3 Explore Vti-Tech	152	0
2592	MG	Hs	Petrol	Hs Excite	172	0
2593	MG	Hs	Hybrid	Hs Excite Phev Auto	41	240
2594	MG	Hs	Petrol	Hs Excite S-A	177	0
2595	MG	Hs	Petrol	Hs Exclusive	172	0
2596	MG	Hs	Hybrid	Hs Exclusive Phev Auto	41	240
2597	MG	Hs	Petrol	Hs Exclusive S-A	177	0
2598	MG	Hs	Petrol	Hs Explore	172	0
2599	MG	Mg	Electric	Mg 5 Excite Ev	0	175
2600	MG	Mg	Electric	Mg 5 Exclusive Ev	0	175
2601	MG	Zs	Petrol	Zs Excite	155	0
2602	MG	Zs	Electric	Zs Excite Ev	0	186
2603	MG	Zs	Petrol	Zs Excite T-Gdi Auto	166	0
2604	MG	Zs	Petrol	Zs Excite Turbo Auto	166	0
2605	MG	Zs	Petrol	Zs Excite Vti-Tech	155	0
2606	MG	Zs	Petrol	Zs Exclusive	155	0
2607	MG	Zs	Electric	Zs Exclusive Ev	0	186
2608	MG	Zs	Petrol	Zs Exclusive T-Gdi Auto	166	0
2609	MG	Zs	Petrol	Zs Exclusive Turbo Auto	166	0
2610	MG	Zs	Petrol	Zs Exclusive Vti-Tech	155	0
2611	MG	Zs	Petrol	Zs Limited Edition	155	0
2612	MG	Zs	Petrol	Zs Limited Edition Auto	166	0
2613	MINI	Cooper	Petrol	Cooper	147	0
2614	MINI	Cooper	Petrol	Cooper ALL4	168	0
2615	MINI	Cooper D	Diesel	Cooper D	141	0
2616	MINI	Cooper D	Diesel	Cooper D ALL4	154	0
2617	MINI	Cooper S	Petrol	Cooper S	160	0
2618	MINI	Cooper S	Petrol	Cooper S ALL4	179	0
2619	MINI	Cooper S	Hybrid	Cooper S E ALL4	67	139
2620	MINI	Cooper S	Diesel	Cooper SD	153	0
2621	MINI	Cooper S	Diesel	Cooper SD ALL4	158.5	0
2622	MINI	Cooper S	Electric	Cooper SE	0	157
2623	MINI	JCW	Petrol	JCW ALL4	189	0
2624	MINI	John Cooper Works	Petrol	John Cooper Works	164	0
2625	MINI	John Cooper Works	Petrol	John Cooper Works ALL4	168	0
2626	MINI	One	Petrol	One	138	0
2627	MINI	One	Diesel	One D	125	0
2628	Mitsubishi	ASX	Petrol	Asx Black	169	0
2629	Mitsubishi	ASX	Petrol	Asx Dynamic	171	0
2630	Mitsubishi	ASX	Petrol	Asx Exceed	185	0
2631	Mitsubishi	ASX	Petrol	Asx Exceed 4X4 Cvt	185	0
2632	Mitsubishi	ASX	Petrol	Asx Juro	169	0
2633	Mitsubishi	Eclipse	Petrol	Eclipse Cross 2 4X2	170	0
2634	Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 4X2	177	0
2635	Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 4X2 Cvt	192	0
2636	Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 Cvt	196	0
2637	Mitsubishi	Eclipse	Petrol	Eclipse Cross 4 4X2	177	0
2638	Mitsubishi	Eclipse	Petrol	Eclipse Cross 4 Cvt	196	0
2639	Mitsubishi	Eclipse	Petrol	Eclipse Cross Black 4X2	177	0
2640	Mitsubishi	Eclipse	Petrol	Eclipse Cross Black 4X4 Cvt	196	0
2641	Mitsubishi	Eclipse	Petrol	Eclipse Cross Design Se 4X2	177	0
2642	Mitsubishi	Eclipse	Petrol	Eclipse Cross Dsign Se 4X2 Cvt	185	0
2643	Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X2	170	0
2644	Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X2 Cvt	170	0
2645	Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X4 Cvt	170	0
2646	Mitsubishi	Eclipse	Petrol	Eclipse Cross Exceed 4X2	177	0
2647	Mitsubishi	Eclipse	Petrol	Eclipse Cross Exceed 4X4 Cvt	196	0
2648	Mitsubishi	Eclipse	Petrol	Eclipse Cross Verve 4X2	170	0
2649	Mitsubishi	Mirage	Petrol	Mirage 3	115	0
2650	Mitsubishi	Mirage	Petrol	Mirage Design	121	0
2651	Mitsubishi	Mirage	Petrol	Mirage Design Cvt	127	0
2652	Mitsubishi	Mirage	Petrol	Mirage Design Pro	116	0
2653	Mitsubishi	Mirage	Petrol	Mirage Design Pro Cvt	125	0
2654	Mitsubishi	Mirage	Petrol	Mirage First Edition	121	0
2655	Mitsubishi	Mirage	Petrol	Mirage First Edition Cvt	127	0
2656	Mitsubishi	Mirage	Petrol	Mirage Verve	113	0
2657	Mitsubishi	Outlander	Petrol	Outlander 4 Cvt	196	0
2658	Mitsubishi	Outlander	Hybrid	Outlander 4H Phev Cvt	46	169
2659	Mitsubishi	Outlander	Hybrid	Outlander 4Hs Phev Cvt	46	169
2660	Mitsubishi	Outlander	Petrol	Outlander Black Cvt	196	0
2661	Mitsubishi	Outlander	Petrol	Outlander Design Cvt	196	0
2662	Mitsubishi	Outlander	Hybrid	Outlander Design Phev Cvt	46	169
2663	Mitsubishi	Outlander	Hybrid	Outlander Dyn Safety Phev Cvt	46	169
2664	Mitsubishi	Outlander	Hybrid	Outlander Dynamic Phev Cvt	46	169
2665	Mitsubishi	Outlander	Hybrid	Outlander Excd Safety Phev Cvt	46	169
2666	Mitsubishi	Outlander	Petrol	Outlander Exceed Cvt	196	0
2667	Mitsubishi	Outlander	Hybrid	Outlander Exceed Phev Cvt	46	169
2668	Mitsubishi	Outlander	Hybrid	Outlander Juro Phev Cvt	46	169
2669	Mitsubishi	Outlander	Hybrid	Outlander Verve Phev Cvt	46	169
2670	Nissan	370Z	Petrol	370Z 50Th Anniversary V6	274	0
2671	Nissan	370Z	Petrol	370Z 50Th Anniversary V6 Auto	271	0
2672	Nissan	370Z	Petrol	370Z Gt V6	274	0
2673	Nissan	370Z	Petrol	370Z Gt V6 Auto	271	0
2674	Nissan	370Z	Petrol	370Z Nismo V6	276	0
2675	Nissan	370Z	Petrol	370Z V6	274	0
2676	Nissan	Dynamo	Electric	Dynamo Taxi E-Nv200	0	259
2677	Nissan	E-Nv200	Electric	E-Nv200 Acenta	0	259
2678	Nissan	E-Nv200	Electric	E-Nv200 Evalia	0	259
2679	Nissan	E-Nv200	Electric	E-Nv200 Visia	0	259
2680	Nissan	Gt-R	Petrol	Gt-R 50Th Anniversary S-A	316	0
2681	Nissan	Gt-R	Petrol	Gt-R Nismo S-A	325	0
2682	Nissan	Gt-R	Petrol	Gt-R Prestige S-A	316	0
2683	Nissan	Gt-R	Petrol	Gt-R Recaro S-A	316	0
2684	Nissan	Gt-R	Petrol	Gt-R Track Edition S-A	316	0
2685	Nissan	Juke	Petrol	Juke Acenta	185	0
2686	Nissan	Juke	Petrol	Juke Acenta Dig-T	135	0
2687	Nissan	Juke	Petrol	Juke Acenta Dig-T S-A	138	0
2688	Nissan	Juke	Diesel	Juke Bose Personal Edition Dci	149	0
2689	Nissan	Juke	Petrol	Juke Enigma Dig-T S-A	144	0
2690	Nissan	Juke	Petrol	Juke N-Connecta Dig-T	135	0
2691	Nissan	Juke	Petrol	Juke N-Connecta Dig-T S-A	138	0
2692	Nissan	Juke	Petrol	Juke Premiere Edition Dig-T	142	0
2693	Nissan	Juke	Petrol	Juke Premiere Edition Dig-T Sa	145	0
2694	Nissan	Juke	Petrol	Juke Tekna + Dig-T	141	0
2695	Nissan	Juke	Petrol	Juke Tekna + Dig-T S-A	145	0
2696	Nissan	Juke	Petrol	Juke Tekna Dig-T	140	0
2697	Nissan	Juke	Petrol	Juke Tekna Dig-T S-A	143	0
2698	Nissan	Juke	Petrol	Juke Visia Dig-T	135	0
2699	Nissan	Leaf	Electric	Leaf 3Zero	0	206
2700	Nissan	Leaf	Electric	Leaf Acenta	0	171
2701	Nissan	Leaf	Electric	Leaf E + 3Zero	0	185
2702	Nissan	Leaf	Electric	Leaf E + N-Connecta	0	185
2703	Nissan	Leaf	Electric	Leaf E + N-Tec	0	185
2704	Nissan	Leaf	Electric	Leaf E + Tekna	0	185
2705	Nissan	Leaf	Electric	Leaf N-Connecta	0	206
2706	Nissan	Leaf	Electric	Leaf Tekna	0	206
2707	Nissan	Micra	Petrol	Micra Acenta	139	0
2708	Nissan	Micra	Diesel	Micra Acenta Dci	141	0
2709	Nissan	Micra	Petrol	Micra Acenta Dig-T	133	0
2710	Nissan	Micra	Petrol	Micra Acenta Ig-T	127	0
2711	Nissan	Micra	Petrol	Micra Acenta Ig-T Cvt	140	0
2712	Nissan	Micra	Petrol	Micra Acenta Limited Ed Ig-T	129	0
2713	Nissan	Micra	Petrol	Micra Acenta Limited Edition	139	0
2714	Nissan	Micra	Petrol	Micra N-Connecta Ig-T	129	0
2715	Nissan	Micra	Petrol	Micra N-Sport Dig-T	133	0
2716	Nissan	Micra	Petrol	Micra N-Sport Ig-T	132	0
2717	Nissan	Micra	Petrol	Micra N-Sport Ig-T Cvt	145	0
2718	Nissan	Micra	Petrol	Micra N-Tec Dig-T	133	0
2719	Nissan	Micra	Petrol	Micra N-Tec Ig-T	132	0
2720	Nissan	Micra	Petrol	Micra N-Tec Ig-T Cvt	145	0
2721	Nissan	Micra	Diesel	Micra Tekna Dci	141	0
2722	Nissan	Micra	Petrol	Micra Tekna Dig-T	133	0
2723	Nissan	Micra	Petrol	Micra Tekna Ig-T	127	0
2724	Nissan	Micra	Petrol	Micra Tekna Ig-T Cvt	140	0
2725	Nissan	Micra	Petrol	Micra Visia + Ig-T	126	0
2726	Nissan	Micra	Petrol	Micra Visia + Ig-T Cvt	139	0
2727	Nissan	Nv300	Diesel	Nv300 Tekna Dci	192	0
2728	Nissan	Nv400	Diesel	Nv400 Tekna Dci	327	0
2729	Nissan	Qashqai	Diesel	Qashqai Acenta Dci	139	0
2730	Nissan	Qashqai	Petrol	Qashqai Acenta Dig-T	154	0
2731	Nissan	Qashqai	Petrol	Qashqai Acenta Prem Dig-T S-A	156	0
2732	Nissan	Qashqai	Diesel	Qashqai Acenta Premium Dci	139	0
2733	Nissan	Qashqai	Diesel	Qashqai Acenta Premium Dci S-A	138	0
2734	Nissan	Qashqai	Petrol	Qashqai Acenta Premium Dig-T	153	0
2735	Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci	140	0
2736	Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci 4X4	156	0
2737	Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci 4X4 Cvt	180	0
2738	Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci S-A	139	0
2739	Nissan	Qashqai	Petrol	Qashqai N-Connecta Dig-T	155	0
2740	Nissan	Qashqai	Petrol	Qashqai N-Connecta Dig-T S-A	157	0
2741	Nissan	Qashqai	Diesel	Qashqai N-Motion Dci	146	0
2742	Nissan	Qashqai	Petrol	Qashqai N-Motion Dig-T	153	0
2743	Nissan	Qashqai	Petrol	Qashqai N-Motion Dig-T S-A	152	0
2744	Nissan	Qashqai	Diesel	Qashqai N-Tec Dci	145	0
2745	Nissan	Qashqai	Diesel	Qashqai N-Tec Dci S-A	143	0
2746	Nissan	Qashqai	Petrol	Qashqai N-Tec Dig-T	161	0
2747	Nissan	Qashqai	Petrol	Qashqai N-Tec Dig-T S-A	161	0
2748	Nissan	Qashqai	Diesel	Qashqai Tekna + Dci	146	0
2749	Nissan	Qashqai	Diesel	Qashqai Tekna + Dci 4X4	160	0
2750	Nissan	Qashqai	Diesel	Qashqai Tekna + Dci 4X4 Cvt	182	0
2751	Nissan	Qashqai	Diesel	Qashqai Tekna + Dci S-A	143	0
2752	Nissan	Qashqai	Petrol	Qashqai Tekna + Dig-T	161	0
2753	Nissan	Qashqai	Petrol	Qashqai Tekna + Dig-T S-A	161	0
2754	Nissan	Qashqai	Diesel	Qashqai Tekna Dci	145	0
2755	Nissan	Qashqai	Diesel	Qashqai Tekna Dci 4X4	160	0
2756	Nissan	Qashqai	Diesel	Qashqai Tekna Dci 4X4 Cvt	182	0
2757	Nissan	Qashqai	Diesel	Qashqai Tekna Dci S-A	142	0
2758	Nissan	Qashqai	Petrol	Qashqai Tekna Dig-T	161	0
2759	Nissan	Qashqai	Petrol	Qashqai Tekna Dig-T S-A	160	0
2760	Nissan	Qashqai	Diesel	Qashqai Visia Dci	139	0
2761	Nissan	Qashqai	Petrol	Qashqai Visia Dig-T	154	0
2762	Nissan	X-Trail	Diesel	X-Trail Acenta Dci	174	0
2763	Nissan	X-Trail	Diesel	X-Trail Acenta Dci 4X4	172.5	0
2764	Nissan	X-Trail	Diesel	X-Trail Acenta Dci 4X4 Cvt	200	0
2765	Nissan	X-Trail	Diesel	X-Trail Acenta Dci Cvt	187	0
2766	Nissan	X-Trail	Petrol	X-Trail Acenta Dig-T S-A	185	0
2767	Nissan	X-Trail	Diesel	X-Trail Acenta Pre Dci 4X4 Cvt	200	0
2768	Nissan	X-Trail	Petrol	X-Trail Acenta Prem Dig-T Sa	169	0
2769	Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci	158	0
2770	Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci 4X4	167	0
2771	Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci Cvt	183	0
2772	Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci	158	0
2773	Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci 4X4	172	0
2774	Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci 4X4 Cvt	199	0
2775	Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci Cvt	184	0
2776	Nissan	X-Trail	Petrol	X-Trail N-Connecta Dig-T S-A	168	0
2777	Nissan	X-Trail	Diesel	X-Trail N-Tec Dci	158	0
2778	Nissan	X-Trail	Diesel	X-Trail N-Tec Dci Cvt	188	0
2779	Nissan	X-Trail	Diesel	X-Trail Tekna Dci	163	0
2780	Nissan	X-Trail	Diesel	X-Trail Tekna Dci 4X4	173	0
2781	Nissan	X-Trail	Diesel	X-Trail Tekna Dci 4X4 Cvt	207	0
2782	Nissan	X-Trail	Diesel	X-Trail Tekna Dci Cvt	192	0
2783	Nissan	X-Trail	Petrol	X-Trail Tekna Dig-T S-A	175	0
2784	Nissan	X-Trail	Diesel	X-Trail Visia Dci	171	0
2785	Peugeot	108	Petrol	108 Active	110	0
2786	Peugeot	108	Petrol	108 Active Top	111	0
2787	Peugeot	108	Petrol	108 Allure	111	0
2788	Peugeot	108	Petrol	108 Allure Top	112	0
2789	Peugeot	108	Petrol	108 Collection	111	0
2790	Peugeot	108	Petrol	108 Collection S-A	120	0
2791	Peugeot	108	Petrol	108 Collection Top	111	0
2792	Peugeot	2008	Diesel	2008 Active Bluehdi S S	118	0
2793	Peugeot	2008	Electric	2008 Active Ev	0	174
2794	Peugeot	2008	Diesel	2008 Active Premium Bluehdi Ss	118	0
2795	Peugeot	2008	Electric	2008 Active Premium Ev	0	174
2796	Peugeot	2008	Petrol	2008 Active Premium Ptech S S	123	0
2797	Peugeot	2008	Petrol	2008 Active Premium Ptech Ss A	138	0
2798	Peugeot	2008	Petrol	2008 Active Puretech S S	125	0
2799	Peugeot	2008	Petrol	2008 Active Puretech S S Auto	137	0
2800	Peugeot	2008	Diesel	2008 Allure Bluehdi S S	120	0
2801	Peugeot	2008	Electric	2008 Allure Ev	0	177
2802	Peugeot	2008	Diesel	2008 Allure Premium Bluehdi Ss	120	0
2803	Peugeot	2008	Electric	2008 Allure Premium Ev	0	177
2804	Peugeot	2008	Petrol	2008 Allure Premium Ptech S S	127	0
2805	Peugeot	2008	Petrol	2008 Allure Premium Ptech Ss A	140	0
2806	Peugeot	2008	Petrol	2008 Allure Puretech S S	127	0
2807	Peugeot	2008	Petrol	2008 Allure Puretech S S Auto	140	0
2808	Peugeot	2008	Diesel	2008 Gt Bluehdi S S	117	0
2809	Peugeot	2008	Electric	2008 Gt Ev	0	176
2810	Peugeot	2008	Diesel	2008 Gt Line Bluehdi S S	121	0
2811	Peugeot	2008	Electric	2008 Gt Line Ev	0	176
2812	Peugeot	2008	Petrol	2008 Gt Line Puretech S S	132	0
2813	Peugeot	2008	Petrol	2008 Gt Line Puretech S S Auto	139	0
2814	Peugeot	2008	Electric	2008 Gt Premium Ev	0	176
2815	Peugeot	2008	Petrol	2008 Gt Premium Puretech S S A	136	0
2816	Peugeot	2008	Petrol	2008 Gt Puretech S S	127	0
2817	Peugeot	2008	Petrol	2008 Gt Puretech S S Auto	141	0
2818	Peugeot	206	Diesel	206 Zest 3 Hdi	146	0
2819	Peugeot	208	Diesel	208 Active Bluehdi S S	109	0
2820	Peugeot	208	Electric	208 Active Ev	0	164
2821	Peugeot	208	Electric	208 Active Premium Ev	0	164
2822	Peugeot	208	Petrol	208 Active Premium Ptech S S A	132	0
2823	Peugeot	208	Petrol	208 Active Premium Puretech Ss	124	0
2824	Peugeot	208	Petrol	208 Active Puretech S S	124	0
2825	Peugeot	208	Petrol	208 Active Puretech S S Auto	132	0
2826	Peugeot	208	Diesel	208 Allure Bluehdi S S	109	0
2827	Peugeot	208	Electric	208 Allure Ev	0	164
2828	Peugeot	208	Diesel	208 Allure Premium Bluehdi S S	109	0
2829	Peugeot	208	Electric	208 Allure Premium Ev	0	164
2830	Peugeot	208	Petrol	208 Allure Premium Ptech S S A	133	0
2831	Peugeot	208	Petrol	208 Allure Premium Puretech Ss	125	0
2832	Peugeot	208	Petrol	208 Allure Puretech S S	125	0
2833	Peugeot	208	Petrol	208 Allure Puretech S S Auto	133	0
2834	Peugeot	208	Electric	208 Gt Ev	0	165
2835	Peugeot	208	Diesel	208 Gt Line Bluehdi S S	110	0
2836	Peugeot	208	Electric	208 Gt Line Ev	0	165
2837	Peugeot	208	Petrol	208 Gt Line Puretech S S	126	0
2838	Peugeot	208	Petrol	208 Gt Line Puretech S S Auto	129	0
2839	Peugeot	208	Electric	208 Gt Premium Ev	0	165
2840	Peugeot	208	Petrol	208 Gt Puretech S S	120	0
2841	Peugeot	208	Petrol	208 Gt Puretech S S Auto	125	0
2842	Peugeot	3008	Diesel	3008 Active Bluehdi S S	137	0
2843	Peugeot	3008	Diesel	3008 Active Bluehdi S S Auto	135	0
2844	Peugeot	3008	Diesel	3008 Active Premium Bluehdi Ss	130	0
2845	Peugeot	3008	Petrol	3008 Active Premium P-Tech S S	141	0
2846	Peugeot	3008	Petrol	3008 Active Puretech S S Auto	152	0
2847	Peugeot	3008	Petrol	3008 Active Purtech S S	146	0
2848	Peugeot	3008	Diesel	3008 Allure Bluehdi S S	137	0
2849	Peugeot	3008	Diesel	3008 Allure Bluehdi S S Auto	136	0
2850	Peugeot	3008	Petrol	3008 Allure Prem P-Tech S S A	146	0
2851	Peugeot	3008	Hybrid	3008 Allure Prem S S Phev A	31	0
2852	Peugeot	3008	Diesel	3008 Allure Premium B-Hdi Ss A	136	0
2853	Peugeot	3008	Diesel	3008 Allure Premium Bluehdi Ss	130	0
2854	Peugeot	3008	Petrol	3008 Allure Premium P-Tech S S	141	0
2855	Peugeot	3008	Petrol	3008 Allure Puretech S S	146	0
2856	Peugeot	3008	Petrol	3008 Allure Puretech S S Auto	152	0
2857	Peugeot	3008	Hybrid	3008 Allure S S Phev Auto	30	0
2858	Peugeot	3008	Diesel	3008 Gt Bluehdi S S	131	0
2859	Peugeot	3008	Diesel	3008 Gt Bluehdi S S Auto	163	0
2860	Peugeot	3008	Diesel	3008 Gt Line Bluehdi S S	137	0
2861	Peugeot	3008	Diesel	3008 Gt Line Bluehdi S S Auto	136	0
2862	Peugeot	3008	Petrol	3008 Gt Line Prem P-Tech S S A	154	0
2863	Peugeot	3008	Diesel	3008 Gt Line Premium B-Hdi S S	139	0
2864	Peugeot	3008	Diesel	3008 Gt Line Premium Bhdi Ss A	138	0
2865	Peugeot	3008	Petrol	3008 Gt Line Premium P-Tech Ss	149	0
2866	Peugeot	3008	Petrol	3008 Gt Line Puretech S S	147	0
2867	Peugeot	3008	Petrol	3008 Gt Line Puretech S S Auto	152	0
2868	Peugeot	3008	Hybrid	3008 Gt Line S S Phev 4X4 Auto	29	0
2869	Peugeot	3008	Hybrid	3008 Gt Line S S Phev Auto	31	0
2870	Peugeot	3008	Petrol	3008 Gt Prem P-Tech S S A	157	0
2871	Peugeot	3008	Diesel	3008 Gt Premium Bluehdi S S A	139	0
2872	Peugeot	3008	Hybrid	3008 Gt Premium S S Phev Auto	31	0
2873	Peugeot	3008	Petrol	3008 Gt Puretech S S	142	0
2874	Peugeot	3008	Petrol	3008 Gt Puretech S S Auto	147	0
2875	Peugeot	3008	Hybrid	3008 Gt S S Phev 4X4 Auto	31	0
2876	Peugeot	3008	Hybrid	3008 Gt S S Phev Auto	32	0
2877	Peugeot	308	Diesel	308 Access Bluehdi S S	118	0
2878	Peugeot	308	Petrol	308 Access Puretech S S	125	0
2879	Peugeot	308	Diesel	308 Access Sw Bluehdi S S	123	0
2880	Peugeot	308	Diesel	308 Active Bluehdi S S	119	0
2881	Peugeot	308	Diesel	308 Active Bluehdi S S Auto	122	0
2882	Peugeot	308	Diesel	308 Active Prem Dig Sw Bhdi Ss	122	0
2883	Peugeot	308	Diesel	308 Active Premium Dig Bhdi Ss	121	0
2884	Peugeot	308	Petrol	308 Active Puretech S S	132	0
2885	Peugeot	308	Petrol	308 Active Puretech S S Auto	133	0
2886	Peugeot	308	Diesel	308 Active Sw Bluehdi S S	122	0
2887	Peugeot	308	Diesel	308 Active Sw Bluehdi S S Auto	126	0
2888	Peugeot	308	Petrol	308 Active Sw Puretech S S	132	0
2889	Peugeot	308	Petrol	308 Active Sw Puretech S S A	138	0
2890	Peugeot	308	Petrol	308 Actve Prem Dig Sw Ptech Ss	134	0
2891	Peugeot	308	Diesel	308 Actve Prm Dig Sw Bhdi Ss A	126	0
2892	Peugeot	308	Diesel	308 Allure Bluehdi S S	122	0
2893	Peugeot	308	Diesel	308 Allure Bluehdi S S Auto	123	0
2894	Peugeot	308	Diesel	308 Allure Dig Sw Bhdi S S A	124	0
2895	Peugeot	308	Petrol	308 Allure Dig Sw Ptech S S	133	0
2896	Peugeot	308	Petrol	308 Allure Dig Sw Ptech S S A	140	0
2897	Peugeot	308	Diesel	308 Allure Digital B-Hdi S S A	121	0
2898	Peugeot	308	Diesel	308 Allure Digital Bluehdi S S	120	0
2899	Peugeot	308	Petrol	308 Allure Digital Ptech S S	132	0
2900	Peugeot	308	Petrol	308 Allure Digital Ptech S S A	134	0
2901	Peugeot	308	Diesel	308 Allure Digital Sw Bhdi S S	122	0
2902	Peugeot	308	Petrol	308 Allure Prem Dig P-Tech S S	127	0
2903	Peugeot	308	Diesel	308 Allure Prem Dig Sw Bhdi Ss	122	0
2904	Peugeot	308	Diesel	308 Allure Premium Dig Bhdi Ss	120	0
2905	Peugeot	308	Petrol	308 Allure Puretech S S	128	0
2906	Peugeot	308	Petrol	308 Allure Puretech S S Auto	135	0
2907	Peugeot	308	Diesel	308 Allure Sw Bluehdi S S	125	0
2908	Peugeot	308	Diesel	308 Allure Sw Bluehdi S S Auto	127	0
2909	Peugeot	308	Petrol	308 Allure Sw Puretech S S	133	0
2910	Peugeot	308	Petrol	308 Allure Sw Puretech S S A	139	0
2911	Peugeot	308	Petrol	308 Alure Prem Dig Sw Ptech Ss	135	0
2912	Peugeot	308	Petrol	308 Alure Prm Dig Sw Ptch Ss A	140	0
2913	Peugeot	308	Diesel	308 Gt Bluehdi S S Auto	156	0
2914	Peugeot	308	Diesel	308 Gt Digital Bluehdi Ss Auto	124	0
2915	Peugeot	308	Petrol	308 Gt Digital Puretech S S	135	0
2916	Peugeot	308	Petrol	308 Gt Digital Puretech S S A	138	0
2917	Peugeot	308	Diesel	308 Gt Digital Sw Bluehdi Ss A	128	0
2918	Peugeot	308	Petrol	308 Gt Digital Sw P-Tech S S A	143	0
2919	Peugeot	308	Diesel	308 Gt Line Bluehdi S S	123	0
2920	Peugeot	308	Diesel	308 Gt Line Bluehdi S S Auto	124	0
2921	Peugeot	308	Petrol	308 Gt Line Puretech S S	129	0
2922	Peugeot	308	Petrol	308 Gt Line Puretech S S Auto	136	0
2923	Peugeot	308	Diesel	308 Gt Line Sw Bluehdi S S	126.5	0
2924	Peugeot	308	Diesel	308 Gt Line Sw Bluehdi S S A	128	0
2925	Peugeot	308	Petrol	308 Gt Line Sw Puretech S S	134	0
2926	Peugeot	308	Petrol	308 Gt Line Sw Puretech S S A	140	0
2927	Peugeot	308	Petrol	308 Gt Prem Dig Sw Ptech S S A	141.5	0
2928	Peugeot	308	Diesel	308 Gt Premium Dig Bhdi S S A	127	0
2929	Peugeot	308	Petrol	308 Gt Premium Dig P-Tech Ss A	138	0
2930	Peugeot	308	Diesel	308 Gt Sw Bluehdi S S Auto	161	0
2931	Peugeot	308	Diesel	308 Gti By Peugeotsport Thp Ss	119	0
2932	Peugeot	308	Petrol	308 Gti Puretech S S	169	0
2933	Peugeot	308	Diesel	308 Tech Ed Sw Bluehdi S S	126	0
2934	Peugeot	308	Diesel	308 Tech Ed Sw Bluehdi S S A	127	0
2935	Peugeot	308	Petrol	308 Tech Ed Sw Ptech S S A	139	0
2936	Peugeot	308	Petrol	308 Tech Ed Sw Puretech S S	132	0
2937	Peugeot	308	Diesel	308 Tech Edition Bluehdi S S	122	0
2938	Peugeot	308	Diesel	308 Tech Edition Bluehdi S S A	123	0
2939	Peugeot	308	Petrol	308 Tech Edition Ptech S S A	135	0
2940	Peugeot	308	Petrol	308 Tech Edition Puretech S S	127	0
2941	Peugeot	5008	Diesel	5008 Active Bluehdi S S	140	0
2942	Peugeot	5008	Diesel	5008 Active Bluehdi S S Auto	139	0
2943	Peugeot	5008	Diesel	5008 Active Premium Bluehdi Ss	133	0
2944	Peugeot	5008	Petrol	5008 Active Premium P-Tech Ss	144	0
2945	Peugeot	5008	Petrol	5008 Active Puretech S S	151	0
2946	Peugeot	5008	Petrol	5008 Active Puretech S S Auto	154	0
2947	Peugeot	5008	Diesel	5008 Allure Bluehdi S S	140	0
2948	Peugeot	5008	Diesel	5008 Allure Bluehdi S S Auto	140	0
2949	Peugeot	5008	Diesel	5008 Allure Premium B-Hdi Ss A	142	0
2950	Peugeot	5008	Diesel	5008 Allure Premium Bluehdi Ss	134	0
2951	Peugeot	5008	Petrol	5008 Allure Premium P-Tech S S	145	0
2952	Peugeot	5008	Petrol	5008 Allure Premium Ptech Ss A	151	0
2953	Peugeot	5008	Petrol	5008 Allure Puretech S S	151	0
2954	Peugeot	5008	Petrol	5008 Allure Puretech S S Auto	156	0
2955	Peugeot	5008	Diesel	5008 Gt Bluehdi S S	135	0
2956	Peugeot	5008	Diesel	5008 Gt Bluehdi S S Auto	166	0
2957	Peugeot	5008	Diesel	5008 Gt Line Bluehdi S S	141	0
2958	Peugeot	5008	Diesel	5008 Gt Line Bluehdi S S Auto	141	0
2959	Peugeot	5008	Petrol	5008 Gt Line Prem P-Tech S S A	158	0
2960	Peugeot	5008	Diesel	5008 Gt Line Premium B-Hdi S S	142	0
2961	Peugeot	5008	Diesel	5008 Gt Line Premium Bhdi Ss A	142	0
2962	Peugeot	5008	Petrol	5008 Gt Line Premium P-Tech Ss	153	0
2963	Peugeot	5008	Petrol	5008 Gt Line Puretech S S	152	0
2964	Peugeot	5008	Petrol	5008 Gt Line Puretech S S Auto	158	0
2965	Peugeot	5008	Petrol	5008 Gt Prem P-Tech S S Auto	158	0
2966	Peugeot	5008	Diesel	5008 Gt Premium Bluehdi S S A	155	0
2967	Peugeot	5008	Petrol	5008 Gt Puretech S S	146	0
2968	Peugeot	5008	Petrol	5008 Gt Puretech S S Auto	152	0
2969	Peugeot	508	Diesel	508 Active Bluehdi S S	120	0
2970	Peugeot	508	Diesel	508 Active Bluehdi S S Auto	124	0
2971	Peugeot	508	Diesel	508 Active Sw Bluehdi S S	124	0
2972	Peugeot	508	Diesel	508 Allure Bluehdi S S	121	0
2973	Peugeot	508	Diesel	508 Allure Bluehdi S S Auto	124	0
2974	Peugeot	508	Petrol	508 Allure Puretech S S Auto	146	0
2975	Peugeot	508	Hybrid	508 Allure S S Phev Auto	29	0
2976	Peugeot	508	Diesel	508 Allure Sw Bluehdi S S	124	0
2977	Peugeot	508	Diesel	508 Allure Sw Bluehdi S S A	127	0
2978	Peugeot	508	Petrol	508 Allure Sw Puretech S S A	151.5	0
2979	Peugeot	508	Hybrid	508 Allure Sw S S Phev Auto	30	0
2980	Peugeot	508	Diesel	508 First Ed Sw Bluehdi S S A	158	0
2981	Peugeot	508	Petrol	508 First Ed Sw Puretech S S A	168	0
2982	Peugeot	508	Diesel	508 First Edition Bhdi S S A	153	0
2983	Peugeot	508	Diesel	508 Gt Bluehdi S S Auto	152	0
2984	Peugeot	508	Diesel	508 Gt Line Bluehdi S S	129	0
2985	Peugeot	508	Diesel	508 Gt Line Bluehdi S S Auto	135	0
2986	Peugeot	508	Petrol	508 Gt Line Puretech S S Auto	152	0
2987	Peugeot	508	Hybrid	508 Gt Line S S Phev Auto	32	0
2988	Peugeot	508	Diesel	508 Gt Line Sw Bluehdi S S	125	0
2989	Peugeot	508	Diesel	508 Gt Line Sw Bluehdi S S A	135	0
2990	Peugeot	508	Petrol	508 Gt Line Sw Puretech S S A	155	0
2991	Peugeot	508	Hybrid	508 Gt Line Sw S S Phev Auto	34	0
2992	Peugeot	508	Petrol	508 Gt Puretech S S Auto	163.5	0
2993	Peugeot	508	Hybrid	508 Gt S S Phev Auto	33	0
2994	Peugeot	508	Diesel	508 Gt Sw Bluehdi S S Auto	154	0
2995	Peugeot	508	Petrol	508 Gt Sw Puretech S S Auto	162	0
2996	Peugeot	508	Hybrid	508 Gt Sw S S Phev Auto	35	0
2997	Peugeot	Bailey	Diesel	Bailey Advance 662	146	0
2998	Peugeot	Bailey	Petrol	Bailey Approach Autograph 625	166	0
2999	Peugeot	Boxer	Diesel	Boxer 335 Bluehdi	291	0
3000	Peugeot	Boxer	Diesel	Boxer 335 L3 Bluehdi	265	0
3001	Peugeot	Boxer	Diesel	Boxer 335 Pro L2H2 Bhdi	320	0
3002	Peugeot	Boxer	Diesel	Boxer 435 Pro L4H2 Bluehdi	255	0
3003	Peugeot	E-Traveller	Electric	E-Traveller Active	0	251
3004	Peugeot	Elddis	Diesel	Elddis Accordo Envy 120	146	0
3005	Peugeot	Elddis	Diesel	Elddis Accordo Envy 135	146	0
3006	Peugeot	Expert	Diesel	Expert Combi Bluehdi S S	169	0
3007	Peugeot	Expert	Diesel	Expert Professional L1 Bluehdi	190	0
3008	Peugeot	Expert	Diesel	Expert S L1 Bluehdi	191	0
3009	Peugeot	Horizon	Diesel	Horizon Re	146	0
3010	Peugeot	Horizon	Diesel	Horizon Rs	155	0
3011	Peugeot	Partner	Diesel	Partner S L2 Bluehdi	149	0
3012	Peugeot	Partner	Petrol	Partner Tepee Outdoor Blue Hdi	124	0
3013	Peugeot	Rifter	Diesel	Rifter Active Bluehdi	157	0
3014	Peugeot	Rifter	Diesel	Rifter Active Bluehdi S S	148	0
3015	Peugeot	Rifter	Diesel	Rifter Active Bluehdi S S Auto	157	0
3016	Peugeot	Rifter	Petrol	Rifter Active Puretech S S	158	0
3017	Peugeot	Rifter	Diesel	Rifter Allure Bluehdi	154.5	0
3018	Peugeot	Rifter	Diesel	Rifter Allure Bluehdi S S	147	0
3019	Peugeot	Rifter	Diesel	Rifter Allure Bluehdi S S Auto	150	0
3020	Peugeot	Rifter	Petrol	Rifter Allure Puretech S S	163	0
3021	Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi	166	0
3022	Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi S S	148	0
3023	Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi S S A	153	0
3024	Peugeot	Rifter	Petrol	Rifter Gt Line Puretech S S	134	0
3025	Peugeot	Rifter	Diesel	Rifter Horizon Re	146	0
3026	Peugeot	Rifter	Diesel	Rifter Horizon Re Td	146	0
3027	Peugeot	Rifter	Diesel	Rifter Horizon Re Td Auto	150	0
3028	Peugeot	Rifter	Diesel	Rifter Horizon Rs	150	0
3029	Peugeot	Rifter	Diesel	Rifter Horizon Rs Td	152	0
3030	Peugeot	Rifter	Diesel	Rifter Horizon Rs Td Auto	155	0
3031	Peugeot	Rifter	Diesel	Rifter Premier Rs Td	151	0
3032	Peugeot	Rifter	Diesel	Rifter Premier Rs Td Auto	156	0
3033	Peugeot	Rifter	Diesel	Rifter Premier Rx Td	152	0
3034	Peugeot	Rifter	Diesel	Rifter Premier Rx Td Auto	153	0
3035	Peugeot	Traveller	Diesel	Traveller Active Bluehdi	188	0
3036	Peugeot	Traveller	Diesel	Traveller Active Bluehdi S S	169	0
3037	Peugeot	Traveller	Diesel	Traveller Active Bluehdi S S A	192	0
3038	Peugeot	Traveller	Diesel	Traveller Active C Bhdi Ss A	192	0
3039	Peugeot	Traveller	Diesel	Traveller Active Cpact Bhdi Ss	166	0
3040	Peugeot	Traveller	Diesel	Traveller Actv Stand Bhdi Ss A	190	0
3041	Peugeot	Traveller	Diesel	Traveller Allure Bluehdi	189	0
3042	Peugeot	Traveller	Diesel	Traveller Allure Bluehdi Auto	195	0
3043	Peugeot	Traveller	Diesel	Traveller Allure Bluehdi S S	184	0
3044	Peugeot	Traveller	Diesel	Traveller Allure Bluehdi S S A	193	0
3045	Peugeot	Traveller	Diesel	Traveller Allure C Bhdi Ss A	189	0
3046	Peugeot	Traveller	Diesel	Traveller Allure Cpact Bhdi Ss	184	0
3047	Peugeot	Traveller	Diesel	Traveller Bness Stnd Bhdi Ss A	191	0
3048	Peugeot	Traveller	Diesel	Traveller Bness Vip Bhdi S S A	198	0
3049	Peugeot	Traveller	Diesel	Traveller Business Bluehdi	189	0
3050	Peugeot	Traveller	Diesel	Traveller Business Bluehdi S S	169	0
3051	Polestar	Polestar	Hybrid	Polestar 1 Phev Awd Auto	15	275
3052	Polestar	Polestar	Electric	Polestar 2 Pilot Plus Ev Awd	0	192
3053	Porsche	718	Petrol	718 Boxster	198	0
3054	Porsche	718	Petrol	718 Boxster Gts	247	0
3055	Porsche	718	Petrol	718 Boxster Gts S-A	210	0
3056	Porsche	718	Petrol	718 Boxster S	222	0
3057	Porsche	718	Petrol	718 Boxster S S-A	209	0
3058	Porsche	718	Petrol	718 Boxster S-A	197	0
3059	Porsche	718	Petrol	718 Boxster T	199	0
3060	Porsche	718	Petrol	718 Boxster T S-A	195	0
3061	Porsche	718	Petrol	718 Cayman	197.5	0
3062	Porsche	718	Petrol	718 Cayman Gt4	251	0
3063	Porsche	718	Petrol	718 Cayman Gt4 S-A	242	0
3064	Porsche	718	Petrol	718 Cayman Gts	247	0
3065	Porsche	718	Petrol	718 Cayman Gts S-A	209	0
3066	Porsche	718	Petrol	718 Cayman S	222	0
3067	Porsche	718	Petrol	718 Cayman S S-A	209	0
3068	Porsche	718	Petrol	718 Cayman S-A	196	0
3069	Porsche	718	Petrol	718 Cayman T	198	0
3070	Porsche	718	Petrol	718 Cayman T S-A	195	0
3071	Porsche	718	Petrol	718 Spyder	251	0
3072	Porsche	718	Petrol	718 Spyder S-A	242	0
3073	Porsche	911	Petrol	911 Carrera 4 Auto	236	0
3074	Porsche	911	Petrol	911 Carrera 4 S-A	232	0
3075	Porsche	911	Petrol	911 Carrera 4S Auto	242	0
3076	Porsche	911	Petrol	911 Carrera 4S S-A	242	0
3077	Porsche	911	Petrol	911 Carrera Auto	235	0
3078	Porsche	911	Petrol	911 Carrera S	232	0
3079	Porsche	911	Petrol	911 Carrera S Auto	241	0
3080	Porsche	911	Petrol	911 Carrera S S-A	229	0
3081	Porsche	911	Petrol	911 Carrera S-A	229	0
3082	Porsche	911	Petrol	911 Gt3 Rs S-A	308	0
3083	Porsche	911	Petrol	911 Speedster	310	0
3084	Porsche	911	Petrol	911 Targa 4 Auto	239	0
3085	Porsche	911	Petrol	911 Targa 4S	245	0
3086	Porsche	911	Petrol	911 Targa 4S Heritage	246	0
3087	Porsche	911	Petrol	911 Turbo S S-A	273	0
3088	Porsche	911	Petrol	911 Turbo S-A	272	0
3089	Porsche	Cayenne	Petrol	Cayenne Gts Auto	300	0
3090	Porsche	Cayenne	Hybrid	Cayenne Turbo S E-Hybrid Auto	112	196
3091	Porsche	Cayenne	Petrol	Cayenne V6 Auto	266	0
3092	Porsche	Cayenne	Hybrid	Cayenne V6 E-Hybrid Auto	89	185
3093	Porsche	Cayenne	Petrol	Cayenne V6 S Auto	274	0
3094	Porsche	Cayenne	Petrol	Cayenne V8 Turbo Auto	311	0
3095	Porsche	Macan	Petrol	Macan Gts S-A	256	0
3096	Porsche	Macan	Petrol	Macan S S-A	252	0
3097	Porsche	Macan	Petrol	Macan S-A	232	0
3098	Porsche	Macan	Petrol	Macan Turbo S-A	260	0
3099	Porsche	Panamera	Hybrid	Panamera 4 10 Years Ed Phev Sa	77.5	161
3100	Porsche	Panamera	Petrol	Panamera 4 10 Years Edition Sa	247	0
3101	Porsche	Panamera	Hybrid	Panamera 4 E-Hybrid S-A	77	175
3102	Porsche	Panamera	Petrol	Panamera 4 S-A	242	0
3103	Porsche	Panamera	Petrol	Panamera 4 Sport Turismo S-A	250.5	0
3104	Porsche	Panamera	Hybrid	Panamera 4S E-Hybrid S-A	59	182
3105	Porsche	Panamera	Hybrid	Panamera 4S Ehyb Spt Tour Sa	62	193
3106	Porsche	Panamera	Petrol	Panamera 4S S-A	256	0
3107	Porsche	Panamera	Hybrid	Panamera 4Spt Turismo E-Hyb Sa	81	215
3108	Porsche	Panamera	Hybrid	Panamera E-Hybrid Exec 4 S-A	79	213
3109	Porsche	Panamera	Petrol	Panamera Executive 4 S-A	251	0
3110	Porsche	Panamera	Petrol	Panamera Gts S-A	276	0
3111	Porsche	Panamera	Petrol	Panamera Gts Sport Turismo S-A	280	0
3112	Porsche	Panamera	Petrol	Panamera S-A	248	0
3113	Porsche	Panamera	Petrol	Panamera Sport Turismo 4S S-A	261	0
3114	Porsche	Panamera	Hybrid	Panamera Turbo S E-Hyb Sp Tour	84.5	181
3115	Porsche	Panamera	Hybrid	Panamera Turbo S E-Hybrid S-A	80.5	204
3116	Porsche	Panamera	Petrol	Panamera Turbo S S-A	291	0
3117	Porsche	Panamera	Petrol	Panamera Turbo S Spt Tursmo Sa	295	0
3118	Porsche	Panamera	Petrol	Panamera Turbo S-A	280	0
3119	Porsche	Panamera	Petrol	Panamera Turbo Spt Turismo S-A	282.5	0
3120	Porsche	Taycan	Electric	Taycan 4S 79Kwh	0	262
3121	Porsche	Taycan	Electric	Taycan 4S 93Kwh	0	270
3122	Porsche	Taycan	Electric	Taycan Turbo	0	260
3123	Porsche	Taycan	Electric	Taycan Turbo S	0	285
3124	Renault	Captur	Diesel	Captur Bose Launch Ed Dci Auto	132	0
3125	Renault	Captur	Petrol	Captur Bose Launch Ed Tce Auto	146	0
3126	Renault	Captur	Diesel	Captur Bose Launch Edition Dci	130	0
3127	Renault	Captur	Petrol	Captur Bose Launch Edition Tce	141	0
3128	Renault	Captur	Petrol	Captur Gt Line Tce	146	0
3129	Renault	Captur	Petrol	Captur Gt Line Tce Auto	147	0
3130	Renault	Captur	Diesel	Captur Iconic Dci	125	0
3131	Renault	Captur	Diesel	Captur Iconic Dci Auto	126	0
3132	Renault	Captur	Petrol	Captur Iconic Tce	137	0
3133	Renault	Captur	Petrol	Captur Iconic Tce Auto	142	0
3134	Renault	Captur	Hybrid	Captur Launch Edition E-Tech A	36	0
3135	Renault	Captur	Diesel	Captur Play Dci	125	0
3136	Renault	Captur	Diesel	Captur Play Dci Auto	125	0
3137	Renault	Captur	Petrol	Captur Play Tce	146	0
3138	Renault	Captur	Petrol	Captur Play Tce Auto	141	0
3139	Renault	Captur	Diesel	Captur S Edition Bose Dci	127	0
3140	Renault	Captur	Diesel	Captur S Edition Bose Dci Auto	126.5	0
3141	Renault	Captur	Hybrid	Captur S Edition Bose E-Tech A	33	0
3142	Renault	Captur	Petrol	Captur S Edition Bose Tce	144	0
3143	Renault	Captur	Petrol	Captur S Edition Bose Tce Auto	143	0
3144	Renault	Captur	Diesel	Captur S Edition Dci	126	0
3145	Renault	Captur	Diesel	Captur S Edition Dci Auto	126	0
3146	Renault	Captur	Hybrid	Captur S Edition E-Tech Auto	35	0
3147	Renault	Captur	Petrol	Captur S Edition Tce	141	0
3148	Renault	Captur	Petrol	Captur S Edition Tce Auto	142	0
3149	Renault	Clio	Petrol	Clio Gt Line Tce	137	0
3150	Renault	Clio	Diesel	Clio Iconic Bose Blue Dci	110	0
3151	Renault	Clio	Petrol	Clio Iconic Bose Sce	121	0
3152	Renault	Clio	Petrol	Clio Iconic Bose Tce	119	0
3153	Renault	Clio	Diesel	Clio Iconic Dci	110	0
3154	Renault	Clio	Hybrid	Clio Iconic E-Tech Auto	99	0
3155	Renault	Clio	Petrol	Clio Iconic Sce	121	0
3156	Renault	Clio	Petrol	Clio Iconic Tce	117	0
3157	Renault	Clio	Petrol	Clio Iconic Tce Cvt	131	0
3158	Renault	Clio	Hybrid	Clio Launch Edition E-Tech A	99	0
3159	Renault	Clio	Diesel	Clio Play Dci	109	0
3160	Renault	Clio	Petrol	Clio Play Sce	121	0
3161	Renault	Clio	Petrol	Clio Play Tce	117	0
3162	Renault	Clio	Petrol	Clio Play Tce Cvt	131	0
3163	Renault	Clio	Diesel	Clio Rs Line Bose Blue Dci	111	0
3164	Renault	Clio	Petrol	Clio Rs Line Bose Edition Tce	120	0
3165	Renault	Clio	Petrol	Clio Rs Line Bose Tce	120	0
3166	Renault	Clio	Petrol	Clio Rs Line Bose Tce Auto	131	0
3167	Renault	Clio	Petrol	Clio Rs Line Bose Tce Cvt	134	0
3168	Renault	Clio	Diesel	Clio Rs Line Dci	111	0
3169	Renault	Clio	Hybrid	Clio Rs Line E-Tech Auto	99	0
3170	Renault	Clio	Petrol	Clio Rs Line Tce	120	0
3171	Renault	Clio	Petrol	Clio Rs Line Tce Auto	131	0
3172	Renault	Clio	Petrol	Clio Rs Line Tce Cvt	133	0
3173	Renault	Clio	Diesel	Clio S Edition Blue Dci	110	0
3174	Renault	Clio	Diesel	Clio S Edition Bose Blue Dci	110	0
3175	Renault	Clio	Petrol	Clio S Edition Bose Tce	120	0
3176	Renault	Clio	Petrol	Clio S Edition Bose Tce Auto	130.5	0
3177	Renault	Clio	Petrol	Clio S Edition Bose Tce Cvt	132	0
3178	Renault	Clio	Hybrid	Clio S Edition E-Tech Auto	99	0
3179	Renault	Clio	Petrol	Clio S Edition Tce	120	0
3180	Renault	Clio	Petrol	Clio S Edition Tce Auto	130	0
3181	Renault	Clio	Petrol	Clio S Edition Tce Cvt	132	0
3182	Renault	Grand	Diesel	Grand Scenic Iconic Blue Dci	146	0
3183	Renault	Grand	Diesel	Grand Scenic Iconic Blue Dci A	158	0
3184	Renault	Grand	Petrol	Grand Scenic Iconic Tce	156	0
3185	Renault	Grand	Petrol	Grand Scenic Iconic Tce Auto	161	0
3186	Renault	Grand	Diesel	Grand Scenic Play Blue Dci	146	0
3187	Renault	Grand	Diesel	Grand Scenic Play Blue Dci A	158	0
3188	Renault	Grand	Petrol	Grand Scenic Play Tce	156	0
3189	Renault	Grand	Diesel	Grand Scenic Sign Blue Dci A	159	0
3190	Renault	Grand	Diesel	Grand Scenic Signature Dci	147	0
3191	Renault	Grand	Petrol	Grand Scenic Signature Tce	157	0
3192	Renault	Grand	Petrol	Grand Scenic Signature Tce A	162	0
3193	Renault	Kadjar	Petrol	Kadjar Dynamique Nav Tce	145	0
3194	Renault	Kadjar	Petrol	Kadjar Dynamique S Nav Tce	149	0
3195	Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci	136	0
3196	Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci 4X4	159	0
3197	Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci Auto	135	0
3198	Renault	Kadjar	Petrol	Kadjar Gt Line Tce	152	0
3199	Renault	Kadjar	Petrol	Kadjar Gt Line Tce Auto	154	0
3200	Renault	Kadjar	Diesel	Kadjar Iconic Blue Dci	135	0
3201	Renault	Kadjar	Diesel	Kadjar Iconic Blue Dci Auto	133	0
3202	Renault	Kadjar	Petrol	Kadjar Iconic Tce	151	0
3203	Renault	Kadjar	Petrol	Kadjar Iconic Tce Auto	152	0
3204	Renault	Kadjar	Diesel	Kadjar Play Blue Dci	131	0
3205	Renault	Kadjar	Diesel	Kadjar Play Blue Dci Auto	128	0
3206	Renault	Kadjar	Petrol	Kadjar Play Tce	147	0
3207	Renault	Kadjar	Petrol	Kadjar Play Tce Auto	147	0
3208	Renault	Kadjar	Diesel	Kadjar S Edition Blue Dci	136	0
3209	Renault	Kadjar	Diesel	Kadjar S Edition Blue Dci Auto	134	0
3210	Renault	Kadjar	Petrol	Kadjar S Edition Tce	151	0
3211	Renault	Kadjar	Petrol	Kadjar S Edition Tce Auto	153	0
3212	Renault	Kangoo	Electric	Kangoo Business Ml20 I Ze 33	0	0
3213	Renault	Kangoo	Diesel	Kangoo Ll21 B-Ness Energy Dci	157	0
3214	Renault	Koleos	Diesel	Koleos Gt Line Blue Dci 4X4Cvt	183	0
3215	Renault	Koleos	Diesel	Koleos Gt Line Blue Dci Cvt	162	0
3216	Renault	Koleos	Diesel	Koleos Gt Line Dci 4X4 Cvt	203	0
3217	Renault	Koleos	Diesel	Koleos Iconic Blue Dci 4X4 Cvt	181	0
3218	Renault	Koleos	Diesel	Koleos Iconic Blue Dci Cvt	161	0
3219	Renault	Koleos	Diesel	Koleos Iconic Dci Cvt	194	0
3220	Renault	Master	Diesel	Master Ll35 Business Dci	327	0
3221	Renault	Master	Diesel	Master Ml35 Business Dci	327	0
3222	Renault	Master	Diesel	Master Mm33 Business Dci	236	0
3223	Renault	Master	Diesel	Master Sl28 Bness Engy Dci S-A	236	0
3224	Renault	Megane	Diesel	Megane Gt Line Blue Dci	126	0
3225	Renault	Megane	Diesel	Megane Gt Line Blue Dci Auto	135	0
3226	Renault	Megane	Diesel	Megane Gt Line Dci	128	0
3227	Renault	Megane	Petrol	Megane Gt Line Tce	145	0
3228	Renault	Megane	Petrol	Megane Gt Line Tce Auto	151	0
3229	Renault	Megane	Diesel	Megane Iconic Blue Dci	119	0
3230	Renault	Megane	Diesel	Megane Iconic Blue Dci Auto	130	0
3231	Renault	Megane	Diesel	Megane Iconic Dci	119	0
3232	Renault	Megane	Diesel	Megane Iconic Dci Auto	130	0
3233	Renault	Megane	Hybrid	Megane Iconic E-Tech Auto	30	0
3234	Renault	Megane	Petrol	Megane Iconic Tce	140	0
3235	Renault	Megane	Petrol	Megane Iconic Tce Auto	145	0
3236	Renault	Megane	Diesel	Megane Play Blue Dci	119	0
3237	Renault	Megane	Diesel	Megane Play Blue Dci Auto	130	0
3238	Renault	Megane	Diesel	Megane Play Dci	119	0
3239	Renault	Megane	Petrol	Megane Play Tce	139	0
3240	Renault	Megane	Petrol	Megane Play Tce Auto	144	0
3241	Renault	Megane	Petrol	Megane Renaultsport	179	0
3242	Renault	Megane	Petrol	Megane Renaultsport Auto	189	0
3243	Renault	Megane	Petrol	Megane Renaultsport Trophy	185	0
3244	Renault	Megane	Petrol	Megane Renaultsport Trophy A	190	0
3245	Renault	Megane	Diesel	Megane Rs Line Blue Dci	117	0
3246	Renault	Megane	Hybrid	Megane Rs Line E-Tech Auto	29	0
3247	Renault	Megane	Petrol	Megane Rs Line Tce	136	0
3248	Renault	Megane	Petrol	Megane Rs Line Tce Auto	139	0
3249	Renault	Megane	Petrol	Megane Rs Trophy-R Tce	183	0
3250	Renault	Scenic	Petrol	Scenic Iconic Tce	154	0
3251	Renault	Scenic	Petrol	Scenic Play Tce Auto	157	0
3252	Renault	Scenic	Diesel	Scenic Signature Blue Dci	144	0
3253	Renault	Trafic	Diesel	Trafic Business Energy Dci	190	0
3254	Renault	Trafic	Diesel	Trafic Business Energy Dci A	191	0
3255	Renault	Trafic	Diesel	Trafic Ll29 Business Dci	187	0
3256	Renault	Trafic	Diesel	Trafic Ll29 Sport Nav Dci	187	0
3257	Renault	Trafic	Diesel	Trafic Sl27 Business Dci	187	0
3258	Renault	Trafic	Diesel	Trafic Sl28 B-Ness+ Energy Dci	187	0
3259	Renault	Trafic	Diesel	Trafic Spaceclass Energy Dci	196	0
3260	Renault	Trafic	Diesel	Trafic Spaceclass Energy Dci A	200	0
3261	Renault	Trafic	Diesel	Trafic Sport Energy Dci	192	0
3262	Renault	Trafic	Diesel	Trafic Sport Energy Dci Auto	194	0
3263	Renault	Zoe	Electric	Zoe Dynamique Nav Ze 40 Auto	0	165
3264	Renault	Zoe	Electric	Zoe I Dynamique Nav Ze 40 Auto	0	165
3265	Renault	Zoe	Electric	Zoe I Gt Line Ze 50	0	176
3266	Renault	Zoe	Electric	Zoe I Gt Ln Rapid Charge Ze 50	0	177
3267	Renault	Zoe	Electric	Zoe I Iconc Rapid Charge Ze 50	0	180
3268	Renault	Zoe	Electric	Zoe I Iconic Ze 50	0	176
3269	Renault	Zoe	Electric	Zoe I Play Ze 50	0	173
3270	Renault	Zoe	Electric	Zoe S Edition Nav Ze 40 Auto	0	165
3271	Renault	Zoe	Electric	Zoe Signature Nav Ze 40 Auto	0	176
3272	Rolls-Royce	Cullinan	Petrol	Cullinan	368	0
3273	Rolls-Royce	Cullinan	Petrol	Cullinan Black Badge	373	0
3274	Rolls-Royce	Dawn	Petrol	Dawn	374	0
3275	Rolls-Royce	Ghost	Petrol	Ghost	366.5	0
3276	Rolls-Royce	Phantom	Petrol	Phantom	352	0
3277	Rolls-Royce	Wraith	Petrol	Wraith	360	0
3278	Seat	Alhambra	Diesel	Alhambra S Tdi S-A	177	0
3279	Seat	Alhambra	Petrol	Alhambra S Tsi	180	0
3280	Seat	Alhambra	Diesel	Alhambra Se L Tdi	168	0
3281	Seat	Alhambra	Diesel	Alhambra Se L Tdi S-A	178	0
3282	Seat	Alhambra	Petrol	Alhambra Se L Tsi	179	0
3283	Seat	Alhambra	Diesel	Alhambra Se Tdi	167	0
3284	Seat	Alhambra	Diesel	Alhambra Se Tdi S-A	177	0
3285	Seat	Alhambra	Petrol	Alhambra Se Tsi	178	0
3286	Seat	Alhambra	Diesel	Alhambra Xcellence Tdi	169	0
3287	Seat	Alhambra	Diesel	Alhambra Xcellence Tdi S-A	180	0
3288	Seat	Arona	Petrol	Arona Fr Ecotsi	121	0
3289	Seat	Arona	Petrol	Arona Fr Ecotsi S-A	134	0
3290	Seat	Arona	Petrol	Arona Fr Sport Ecotsi	124	0
3291	Seat	Arona	Petrol	Arona Fr Sport Ecotsi S-A	137	0
3292	Seat	Arona	Petrol	Arona Fr Sport Tsi	135	0
3293	Seat	Arona	Petrol	Arona Fr Sport Tsi Evo	133	0
3294	Seat	Arona	Petrol	Arona Fr Sport Tsi S-A	137	0
3295	Seat	Arona	Petrol	Arona Fr Tsi	131	0
3296	Seat	Arona	Petrol	Arona Fr Tsi Evo	130	0
3297	Seat	Arona	Petrol	Arona Fr Tsi S-A	135	0
3298	Seat	Arona	Diesel	Arona Se Tdi	125	0
3299	Seat	Arona	Petrol	Arona Se Technology Ecotsi S-A	134	0
3300	Seat	Arona	Diesel	Arona Se Technology Lux Tdi	130	0
3301	Seat	Arona	Diesel	Arona Se Technology Tdi	125	0
3302	Seat	Arona	Petrol	Arona Se Technology Tsi	129	0
3303	Seat	Arona	Petrol	Arona Se Technology Tsi S-A	134	0
3304	Seat	Arona	Petrol	Arona Se Tsi	129	0
3305	Seat	Arona	Petrol	Arona Se Tsi S-A	134	0
3306	Seat	Arona	Petrol	Arona Xcellence Ecotsi	120	0
3307	Seat	Arona	Petrol	Arona Xcellence Ecotsi S-A	134	0
3308	Seat	Arona	Petrol	Arona Xcellence Lux Ecotsi	125	0
3309	Seat	Arona	Petrol	Arona Xcellence Lux Ecotsi S-A	138	0
3310	Seat	Arona	Diesel	Arona Xcellence Lux Tdi	129	0
3311	Seat	Arona	Diesel	Arona Xcellence Lux Tdi Auto	138	0
3312	Seat	Arona	Petrol	Arona Xcellence Lux Tsi	135	0
3313	Seat	Arona	Petrol	Arona Xcellence Lux Tsi S-A	138	0
3314	Seat	Arona	Diesel	Arona Xcellence Tdi	125	0
3315	Seat	Arona	Diesel	Arona Xcellence Tdi Auto	135	0
3316	Seat	Arona	Petrol	Arona Xcellence Tsi	131	0
3317	Seat	Arona	Petrol	Arona Xcellence Tsi S-A	134	0
3318	Seat	Ateca	Petrol	Ateca Cup 300 Ltd Ed Tsi 4D Sa	198	0
3319	Seat	Ateca	Petrol	Ateca Cup Ltd Ed Akr Tsi 4D Sa	198	0
3320	Seat	Ateca	Petrol	Ateca Cup300 C&S+ Design 4D Sa	198	0
3321	Seat	Ateca	Petrol	Ateca Cupra 300 C&S 4Drive S-A	198	0
3322	Seat	Ateca	Petrol	Ateca Cupra 300 Dsgn Tsi 4D Sa	197	0
3323	Seat	Ateca	Petrol	Ateca Cupra 300 Tsi 4Drive S-A	197	0
3324	Seat	Ateca	Diesel	Ateca Fr Black Ed Tdi 4D S-A	181.5	0
3325	Seat	Ateca	Petrol	Ateca Fr Black Ed Tsi 4D S-A	191	0
3326	Seat	Ateca	Petrol	Ateca Fr Black Ed Tsi Evo S-A	160	0
3327	Seat	Ateca	Diesel	Ateca Fr Black Edition Tdi	150	0
3328	Seat	Ateca	Diesel	Ateca Fr Black Edition Tdi S-A	156	0
3329	Seat	Ateca	Petrol	Ateca Fr Black Edition Tsi Evo	154	0
3330	Seat	Ateca	Diesel	Ateca Fr Sport Tdi	150	0
3331	Seat	Ateca	Diesel	Ateca Fr Sport Tdi 4Drive Auto	171	0
3332	Seat	Ateca	Diesel	Ateca Fr Sport Tdi 4Drive S-A	181	0
3333	Seat	Ateca	Diesel	Ateca Fr Sport Tdi S-A	156	0
3334	Seat	Ateca	Petrol	Ateca Fr Sport Tsi 4Drive S-A	191	0
3335	Seat	Ateca	Petrol	Ateca Fr Sport Tsi Evo	153	0
3336	Seat	Ateca	Petrol	Ateca Fr Sport Tsi Evo S-A	160	0
3337	Seat	Ateca	Diesel	Ateca Fr Tdi	148	0
3338	Seat	Ateca	Diesel	Ateca Fr Tdi 4Drive Auto	170	0
3339	Seat	Ateca	Diesel	Ateca Fr Tdi 4Drive S-A	154	0
3340	Seat	Ateca	Diesel	Ateca Fr Tdi S-A	153	0
3341	Seat	Ateca	Petrol	Ateca Fr Tsi 4Drive S-A	190	0
3342	Seat	Ateca	Petrol	Ateca Fr Tsi Evo	150	0
3343	Seat	Ateca	Petrol	Ateca Fr Tsi Evo S-A	156	0
3344	Seat	Ateca	Petrol	Ateca Se Ecomotive Tsi	153	0
3345	Seat	Ateca	Diesel	Ateca Se Tdi	140	0
3346	Seat	Ateca	Diesel	Ateca Se Tdi S-A	156	0
3347	Seat	Ateca	Petrol	Ateca Se Tech Ecomotive Tsi	153	0
3348	Seat	Ateca	Petrol	Ateca Se Tech Tsi Evo	151	0
3349	Seat	Ateca	Petrol	Ateca Se Tech Tsi Evo S-A	157	0
3350	Seat	Ateca	Diesel	Ateca Se Technology Tdi	145	0
3351	Seat	Ateca	Diesel	Ateca Se Technology Tdi 4D A	169	0
3352	Seat	Ateca	Diesel	Ateca Se Technology Tdi S-A	156	0
3353	Seat	Ateca	Petrol	Ateca Se Technology Tsi	154	0
3354	Seat	Ateca	Petrol	Ateca Se Technology Tsi Evo	149	0
3355	Seat	Ateca	Petrol	Ateca Se Technology Tsi Evo Sa	154	0
3356	Seat	Ateca	Petrol	Ateca Se Tsi Evo	145	0
3357	Seat	Ateca	Petrol	Ateca Se Tsi Evo S-A	156	0
3358	Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi	149	0
3359	Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi 4D A	171	0
3360	Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi 4D Sa	181	0
3361	Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi S-A	157	0
3362	Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi 4D Sa	191	0
3363	Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi Evo	154	0
3364	Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi Evo Sa	160	0
3365	Seat	Ateca	Diesel	Ateca Xcellence Tdi	147	0
3366	Seat	Ateca	Diesel	Ateca Xcellence Tdi 4Drive A	170	0
3367	Seat	Ateca	Diesel	Ateca Xcellence Tdi 4Drive S-A	180	0
3368	Seat	Ateca	Diesel	Ateca Xcellence Tdi S-A	158	0
3369	Seat	Ateca	Petrol	Ateca Xcellence Tsi 4Drive S-A	190	0
3370	Seat	Ateca	Petrol	Ateca Xcellence Tsi Evo	152	0
3371	Seat	Ateca	Petrol	Ateca Xcellence Tsi Evo S-A	158	0
3372	Seat	Ateca	Diesel	Ateca Xperience Lux Tdi	141.5	0
3373	Seat	Ateca	Diesel	Ateca Xperience Lux Tdi 4D Sa	167	0
3374	Seat	Ateca	Diesel	Ateca Xperience Lux Tdi S-A	138	0
3375	Seat	Ateca	Petrol	Ateca Xperience Lux Tsi 4D Sa	188	0
3376	Seat	Ateca	Petrol	Ateca Xperience Lux Tsi Evo	152	0
3377	Seat	Ateca	Petrol	Ateca Xperience Lux Tsi Evo Sa	156	0
3378	Seat	Ateca	Diesel	Ateca Xperience Tdi	147	0
3379	Seat	Ateca	Diesel	Ateca Xperience Tdi 4Drive S-A	165	0
3380	Seat	Ateca	Diesel	Ateca Xperience Tdi S-A	137	0
3381	Seat	Ateca	Petrol	Ateca Xperience Tsi 4Drive S-A	187	0
3382	Seat	Ateca	Petrol	Ateca Xperience Tsi Evo	149	0
3383	Seat	Ateca	Petrol	Ateca Xperience Tsi Evo S-A	154	0
3384	Seat	Ibiza	Petrol	Ibiza Fr Mpi	127	0
3385	Seat	Ibiza	Petrol	Ibiza Fr Sport Mpi	132	0
3386	Seat	Ibiza	Diesel	Ibiza Fr Sport Tdi	127	0
3387	Seat	Ibiza	Petrol	Ibiza Fr Sport Tsi	129	0
3388	Seat	Ibiza	Petrol	Ibiza Fr Sport Tsi S-A	139	0
3389	Seat	Ibiza	Diesel	Ibiza Fr Tdi	128	0
3390	Seat	Ibiza	Petrol	Ibiza Fr Tsi	125	0
3391	Seat	Ibiza	Petrol	Ibiza Fr Tsi S-A	140	0
3392	Seat	Ibiza	Petrol	Ibiza Se Mpi	122	0
3393	Seat	Ibiza	Diesel	Ibiza Se Tdi	121.5	0
3394	Seat	Ibiza	Petrol	Ibiza Se Technology Mpi	123	0
3395	Seat	Ibiza	Diesel	Ibiza Se Technology Tdi	121	0
3396	Seat	Ibiza	Petrol	Ibiza Se Technology Tsi	124	0
3397	Seat	Ibiza	Petrol	Ibiza Se Tsi	124	0
3398	Seat	Ibiza	Diesel	Ibiza Xcellence Lux Tdi	130	0
3399	Seat	Ibiza	Petrol	Ibiza Xcellence Lux Tsi	130	0
3400	Seat	Ibiza	Petrol	Ibiza Xcellence Lux Tsi S-A	141	0
3401	Seat	Ibiza	Petrol	Ibiza Xcellence Mpi	127	0
3402	Seat	Ibiza	Diesel	Ibiza Xcellence Tdi	129	0
3403	Seat	Ibiza	Petrol	Ibiza Xcellence Tsi	126	0
3404	Seat	Ibiza	Petrol	Ibiza Xcellence Tsi S-A	141	0
3405	Seat	Leon	Petrol	Leon Cupra 290 Tsi S-A	170	0
3406	Seat	Leon	Petrol	Leon Cupra 300 Tsi 4Drive S-A	189	0
3407	Seat	Leon	Petrol	Leon Cupra Lux 290 Tsi S-A	170	0
3408	Seat	Leon	Petrol	Leon Cupra Lux 300 Tsi 4D Sa	190	0
3409	Seat	Leon	Petrol	Leon Cupra St R Tsi 4Drive S-A	191	0
3410	Seat	Leon	Petrol	Leon First Edition Etsi Evo Sa	135	0
3411	Seat	Leon	Petrol	Leon Fr Black Ed Tsi Evo S-A	142	0
3412	Seat	Leon	Diesel	Leon Fr Black Edition Tdi	133	0
3413	Seat	Leon	Diesel	Leon Fr Black Edition Tdi S-A	137	0
3414	Seat	Leon	Petrol	Leon Fr Black Edition Tsi Evo	135	0
3415	Seat	Leon	Petrol	Leon Fr Etsi S-A	133	0
3416	Seat	Leon	Hybrid	Leon Fr First Edition Phev S-A	28	152
3417	Seat	Leon	Hybrid	Leon Fr Phev S-A	27	149
3418	Seat	Leon	Hybrid	Leon Fr Sport Phev S-A	28	151
3419	Seat	Leon	Diesel	Leon Fr Sport Tdi	137	0
3420	Seat	Leon	Diesel	Leon Fr Sport Tdi S-A	142	0
3421	Seat	Leon	Petrol	Leon Fr Sport Tsi Evo	137	0
3422	Seat	Leon	Petrol	Leon Fr Sport Tsi Evo S-A	147	0
3423	Seat	Leon	Petrol	Leon Fr Sport Tsi S-A	161	0
3424	Seat	Leon	Diesel	Leon Fr Tdi	133	0
3425	Seat	Leon	Diesel	Leon Fr Tdi S-A	135	0
3426	Seat	Leon	Petrol	Leon Fr Tsi Evo	130	0
3427	Seat	Leon	Petrol	Leon Fr Tsi Evo S-A	141	0
3428	Seat	Leon	Petrol	Leon Fr Tsi S-A	157	0
3429	Seat	Leon	Diesel	Leon Se Dynamic Tdi	129	0
3430	Seat	Leon	Diesel	Leon Se Dynamic Tdi S-A	137	0
3431	Seat	Leon	Petrol	Leon Se Dynamic Tsi	125	0
3432	Seat	Leon	Petrol	Leon Se Dynamic Tsi Evo	126	0
3433	Seat	Leon	Diesel	Leon Se Tdi	127	0
3434	Seat	Leon	Diesel	Leon Se Tdi S-A	136	0
3435	Seat	Leon	Petrol	Leon Se Tsi	124	0
3436	Seat	Leon	Petrol	Leon Se Tsi Evo	125	0
3437	Seat	Leon	Diesel	Leon Xcellence Lux Tdi	132.5	0
3438	Seat	Leon	Diesel	Leon Xcellence Lux Tdi S-A	138	0
3439	Seat	Leon	Petrol	Leon Xcellence Lux Tsi Evo	132	0
3440	Seat	Leon	Petrol	Leon Xcellence Lux Tsi Evo S-A	143	0
3441	Seat	Leon	Diesel	Leon Xcellence Tdi	136	0
3442	Seat	Leon	Diesel	Leon Xcellence Tdi S-A	138	0
3443	Seat	Leon	Petrol	Leon Xcellence Tsi Evo	133	0
3444	Seat	Leon	Petrol	Leon Xcellence Tsi Evo S-A	145	0
3445	Seat	Leon	Petrol	Leon Xcellence Tsi S-A	160	0
3446	Seat	Malaga	Diesel	Malaga Premier	180	0
3447	Seat	Mii	Electric	Mii Ev	0	149
3448	Seat	Taracco	Petrol	Taracco Fr Tsi Evo S-A	169	0
3449	Seat	Taracco	Petrol	Taracco Se Tech Tsi Evo Sa	166	0
3450	Seat	Taracco	Petrol	Taracco X-Lnc Lux Tsi Evo Sa	171	0
3451	Seat	Taracco	Petrol	Taracco Xcellence Tsi Evo S-A	172	0
3452	Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi	154	0
3453	Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi 4Drive Sa	177	0
3454	Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi S-A	148	0
3455	Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi	166	0
3456	Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi 4Drive Sa	202	0
3457	Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi Evo	161	0
3458	Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi Evo S-A	171	0
3459	Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi S-A	170	0
3460	Seat	Tarraco	Diesel	Tarraco Fr Tdi	154	0
3461	Seat	Tarraco	Diesel	Tarraco Fr Tdi 4Drive S-A	183	0
3462	Seat	Tarraco	Petrol	Tarraco Fr Tsi	166	0
3463	Seat	Tarraco	Petrol	Tarraco Fr Tsi 4Drive S-A	202	0
3464	Seat	Tarraco	Petrol	Tarraco Fr Tsi Evo	160	0
3465	Seat	Tarraco	Petrol	Tarraco Fr Tsi S-A	170	0
3466	Seat	Tarraco	Petrol	Tarraco Se First Ed Tsi Evo	174	0
3467	Seat	Tarraco	Diesel	Tarraco Se Tdi	151	0
3468	Seat	Tarraco	Diesel	Tarraco Se Tdi 4Drive S-A	186	0
3469	Seat	Tarraco	Diesel	Tarraco Se Tech Tdi 4Drive Sa	187	0
3470	Seat	Tarraco	Diesel	Tarraco Se Technology Tdi	156	0
3471	Seat	Tarraco	Petrol	Tarraco Se Technology Tsi Evo	164	0
3472	Seat	Tarraco	Petrol	Tarraco Se Tsi Evo	163	0
3473	Seat	Tarraco	Petrol	Tarraco Se Tsi Evo S-A	165	0
3474	Seat	Tarraco	Petrol	Tarraco X-Lnc 1St Ed Tsi Evo	175	0
3475	Seat	Tarraco	Diesel	Tarraco X-Lnc 1St Ed+Tdi 4D Sa	196	0
3476	Seat	Tarraco	Petrol	Tarraco X-Lnc 1St Ed+Tsi 4D Sa	209	0
3477	Seat	Tarraco	Petrol	Tarraco X-Lnc Lux Tsi 4D Sa	207	0
3478	Seat	Tarraco	Diesel	Tarraco Xcellenc Lux Tdi 4D Sa	188	0
3479	Seat	Tarraco	Diesel	Tarraco Xcellence First Ed Tdi	159	0
3480	Seat	Tarraco	Diesel	Tarraco Xcellence Lux Tdi	156	0
3481	Seat	Tarraco	Petrol	Tarraco Xcellence Lux Tsi Evo	167	0
3482	Seat	Tarraco	Diesel	Tarraco Xcellence Tdi	157	0
3483	Seat	Tarraco	Diesel	Tarraco Xcellence Tdi 4D S-A	188	0
3484	Seat	Tarraco	Diesel	Tarraco Xcellence Tdi S-A	151	0
3485	Seat	Tarraco	Petrol	Tarraco Xcellence Tsi 4D Sa	206	0
3486	Seat	Tarraco	Petrol	Tarraco Xcellence Tsi Evo	169	0
3487	Skoda	Citigo	Petrol	Citigo Colour Ed Greentech Mpi	117	0
3488	Skoda	Citigo	Electric	Citigo E Se Iv	0	145
3489	Skoda	Citigo	Electric	Citigo E Se L Iv	0	148
3490	Skoda	Fabia	Petrol	Fabia Colour Edition Mpi	125	0
3491	Skoda	Fabia	Petrol	Fabia Colour Edition Tsi	126	0
3492	Skoda	Fabia	Petrol	Fabia Colour Edition Tsi S-A	133	0
3493	Skoda	Fabia	Petrol	Fabia Monte Carlo Tsi	128	0
3494	Skoda	Fabia	Petrol	Fabia Monte Carlo Tsi S-A	135	0
3495	Skoda	Fabia	Petrol	Fabia S Mpi	132	0
3496	Skoda	Fabia	Petrol	Fabia S Tsi	122	0
3497	Skoda	Fabia	Petrol	Fabia S Tsi S-A	128	0
3498	Skoda	Fabia	Petrol	Fabia Se Drive Mpi	125	0
3499	Skoda	Fabia	Petrol	Fabia Se Drive Tsi	126	0
3500	Skoda	Fabia	Petrol	Fabia Se Drive Tsi S-A	133	0
3501	Skoda	Fabia	Petrol	Fabia Se L Mpi	130	0
3502	Skoda	Fabia	Petrol	Fabia Se L Tsi	126	0
3503	Skoda	Fabia	Petrol	Fabia Se L Tsi S-A	133	0
3504	Skoda	Fabia	Petrol	Fabia Se Mpi	122	0
3505	Skoda	Fabia	Petrol	Fabia Se Tsi	124	0
3506	Skoda	Fabia	Petrol	Fabia Se Tsi S-A	129	0
3507	Skoda	Kamiq	Petrol	Kamiq Monte Carlo Tsi	137	0
3508	Skoda	Kamiq	Petrol	Kamiq Monte Carlo Tsi S-A	142	0
3509	Skoda	Kamiq	Petrol	Kamiq S Tsi	129	0
3510	Skoda	Kamiq	Diesel	Kamiq Se L Tdi	134	0
3511	Skoda	Kamiq	Diesel	Kamiq Se L Tdi S-A	143	0
3512	Skoda	Kamiq	Petrol	Kamiq Se L Tsi	136	0
3513	Skoda	Kamiq	Petrol	Kamiq Se L Tsi S-A	142	0
3514	Skoda	Kamiq	Diesel	Kamiq Se Tdi	132	0
3515	Skoda	Kamiq	Diesel	Kamiq Se Tdi S-A	140	0
3516	Skoda	Kamiq	Petrol	Kamiq Se Tsi	131	0
3517	Skoda	Kamiq	Petrol	Kamiq Se Tsi S-A	138	0
3518	Skoda	Karoq	Diesel	Karoq Edition Tdi Scr	150	0
3519	Skoda	Karoq	Diesel	Karoq Edition Tdi Scr 4X4	168	0
3520	Skoda	Karoq	Diesel	Karoq Edition Tdi Scr 4X4 S-A	175	0
3521	Skoda	Karoq	Petrol	Karoq Edition Tsi	152	0
3522	Skoda	Karoq	Petrol	Karoq Edition Tsi 4X4 S-A	187	0
3523	Skoda	Karoq	Petrol	Karoq Edition Tsi S-A	155	0
3524	Skoda	Karoq	Diesel	Karoq Scout Tdi Scr 4X4	168	0
3525	Skoda	Karoq	Diesel	Karoq Scout Tdi Scr 4X4 S-A	175	0
3526	Skoda	Karoq	Diesel	Karoq Se Drive Tdi	142	0
3527	Skoda	Karoq	Diesel	Karoq Se Drive Tdi S-A	155	0
3528	Skoda	Karoq	Diesel	Karoq Se Drive Tdi Scr	142	0
3529	Skoda	Karoq	Petrol	Karoq Se Drive Tsi	143	0
3530	Skoda	Karoq	Petrol	Karoq Se Drive Tsi S-A	145	0
3531	Skoda	Karoq	Diesel	Karoq Se L Tdi	153	0
3532	Skoda	Karoq	Diesel	Karoq Se L Tdi S-A	158	0
3533	Skoda	Karoq	Diesel	Karoq Se L Tdi Scr	151	0
3534	Skoda	Karoq	Diesel	Karoq Se L Tdi Scr 4X4	169	0
3535	Skoda	Karoq	Diesel	Karoq Se L Tdi Scr 4X4 S-A	176	0
3536	Skoda	Karoq	Petrol	Karoq Se L Tsi	152	0
3537	Skoda	Karoq	Petrol	Karoq Se L Tsi S-A	156	0
3538	Skoda	Karoq	Diesel	Karoq Se Tdi	142	0
3539	Skoda	Karoq	Diesel	Karoq Se Tdi S-A	155	0
3540	Skoda	Karoq	Diesel	Karoq Se Tdi Scr	147	0
3541	Skoda	Karoq	Diesel	Karoq Se Tdi Scr 4X4	165.5	0
3542	Skoda	Karoq	Diesel	Karoq Se Tdi Scr 4X4 S-A	171	0
3543	Skoda	Karoq	Diesel	Karoq Se Tech Tdi Scr 4X4 S-A	172	0
3544	Skoda	Karoq	Diesel	Karoq Se Technology Tdi	142	0
3545	Skoda	Karoq	Diesel	Karoq Se Technology Tdi S-A	155	0
3546	Skoda	Karoq	Diesel	Karoq Se Technology Tdi Scr	143	0
3547	Skoda	Karoq	Petrol	Karoq Se Technology Tsi	142	0
3548	Skoda	Karoq	Petrol	Karoq Se Technology Tsi S-A	149	0
3549	Skoda	Karoq	Petrol	Karoq Se Tsi	142	0
3550	Skoda	Karoq	Petrol	Karoq Se Tsi S-A	150	0
3551	Skoda	Karoq	Diesel	Karoq Sportline Tdi Scr	149	0
3552	Skoda	Karoq	Diesel	Karoq Sportline Tdi Scr 4X4	169	0
3553	Skoda	Karoq	Petrol	Karoq Sportline Tsi	150	0
3554	Skoda	Karoq	Petrol	Karoq Sportline Tsi 4X4 S-A	192	0
3555	Skoda	Karoq	Petrol	Karoq Sportline Tsi S-A	151	0
3556	Skoda	Karoq	Diesel	Karoq Sportlne Tdi Scr 4X4 Sa	175	0
3557	Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr 4X4	172	0
3558	Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr 4X4 S-A	185	0
3559	Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr S-A	162	0
3560	Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi	171	0
3561	Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi 4X4 S-A	198	0
3562	Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi S-A	172	0
3563	Skoda	Kodiaq	Diesel	Kodiaq L And K Tdi Scr 4X4 S-A	186	0
3564	Skoda	Kodiaq	Petrol	Kodiaq L And K Tsi 4X4 S-A	200	0
3565	Skoda	Kodiaq	Diesel	Kodiaq Laurin And Klem Tdi 4X4	173	0
3566	Skoda	Kodiaq	Petrol	Kodiaq S Tsi	171	0
3567	Skoda	Kodiaq	Diesel	Kodiaq Scout Tdi Scr 4X4	179	0
3568	Skoda	Kodiaq	Diesel	Kodiaq Scout Tdi Scr 4X4 S-A	187	0
3569	Skoda	Kodiaq	Petrol	Kodiaq Scout Tsi 4X4 S-A	200	0
3570	Skoda	Kodiaq	Diesel	Kodiaq Se Drive Tdi Scr S-A	161	0
3571	Skoda	Kodiaq	Petrol	Kodiaq Se Drive Tsi	170	0
3572	Skoda	Kodiaq	Petrol	Kodiaq Se Drive Tsi S-A	171	0
3573	Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr 4X4	172	0
3574	Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr 4X4 S-A	175	0
3575	Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr S-A	161	0
3576	Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi	170	0
3577	Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi 4X4 S-A	197	0
3578	Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi S-A	171	0
3579	Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr 4X4	166	0
3580	Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr 4X4 S-A	167	0
3581	Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr S-A	157	0
3582	Skoda	Kodiaq	Diesel	Kodiaq Se Technology Tdi 4X4	177	0
3583	Skoda	Kodiaq	Diesel	Kodiaq Se Technology Tdi S-A	165	0
3584	Skoda	Kodiaq	Petrol	Kodiaq Se Tsi	166	0
3585	Skoda	Kodiaq	Petrol	Kodiaq Se Tsi S-A	166	0
3586	Skoda	Kodiaq	Diesel	Kodiaq Sportline Tdi 4X4	178	0
3587	Skoda	Kodiaq	Diesel	Kodiaq Sportline Tdi Scr 4X4	173	0
3588	Skoda	Kodiaq	Petrol	Kodiaq Sportline Tsi 4X4 S-A	199	0
3589	Skoda	Kodiaq	Petrol	Kodiaq Sportline Tsi S-A	172	0
3590	Skoda	Kodiaq	Diesel	Kodiaq Sportlne Tdi Scr 4X4 Sa	186	0
3591	Skoda	Kodiaq	Diesel	Kodiaq Vrs Tdi 4X4 S-A	209	0
3592	Skoda	Octavia	Diesel	Octavia Laurin And Klem Tdi Sa	140	0
3593	Skoda	Octavia	Petrol	Octavia Laurin And Klem Tsi Sa	157	0
3594	Skoda	Octavia	Diesel	Octavia S Tdi	126	0
3595	Skoda	Octavia	Diesel	Octavia S Tdi S-A	128	0
3596	Skoda	Octavia	Petrol	Octavia S Tsi	122	0
3597	Skoda	Octavia	Petrol	Octavia S Tsi S-A	137.5	0
3598	Skoda	Octavia	Diesel	Octavia Scout Tdi 4X4 S-A	164	0
3599	Skoda	Octavia	Diesel	Octavia Se Drive Tdi	136	0
3600	Skoda	Octavia	Diesel	Octavia Se Drive Tdi S-A	139	0
3601	Skoda	Octavia	Petrol	Octavia Se Drive Tsi	127	0
3602	Skoda	Octavia	Petrol	Octavia Se Drive Tsi S-A	141	0
3603	Skoda	Octavia	Diesel	Octavia Se First Edition Tdi	117	0
3604	Skoda	Octavia	Petrol	Octavia Se First Edition Tsi	127	0
3605	Skoda	Octavia	Petrol	Octavia Se Frst Ed Tsi Mhev Sa	116	0
3606	Skoda	Octavia	Diesel	Octavia Se L First Ed Tdi S-A	123	0
3607	Skoda	Octavia	Diesel	Octavia Se L First Edition Tdi	118	0
3608	Skoda	Octavia	Petrol	Octavia Se L First Edition Tsi	130	0
3609	Skoda	Octavia	Diesel	Octavia Se L Tdi	137	0
3610	Skoda	Octavia	Diesel	Octavia Se L Tdi S-A	140	0
3611	Skoda	Octavia	Petrol	Octavia Se L Tsi	128	0
3612	Skoda	Octavia	Petrol	Octavia Se L Tsi 4X4 S-A	178	0
3613	Skoda	Octavia	Hybrid	Octavia Se L Tsi Iv S-A	24	143
3614	Skoda	Octavia	Petrol	Octavia Se L Tsi S-A	142	0
3615	Skoda	Octavia	Diesel	Octavia Se Tdi	132	0
3616	Skoda	Octavia	Diesel	Octavia Se Tdi S-A	137.5	0
3617	Skoda	Octavia	Diesel	Octavia Se Tech First Ed Tdi	118	0
3618	Skoda	Octavia	Petrol	Octavia Se Tech First Ed Tsi	129	0
3619	Skoda	Octavia	Hybrid	Octavia Se Tech Tsi Iv S-A	23	143
3620	Skoda	Octavia	Petrol	Octavia Se Tech Tsi Mhev S-A	118	0
3621	Skoda	Octavia	Diesel	Octavia Se Technology Tdi	135	0
3622	Skoda	Octavia	Diesel	Octavia Se Technology Tdi S-A	140	0
3623	Skoda	Octavia	Petrol	Octavia Se Technology Tsi	126	0
3624	Skoda	Octavia	Petrol	Octavia Se Technology Tsi S-A	136	0
3625	Skoda	Octavia	Petrol	Octavia Se Tsi	124.5	0
3626	Skoda	Octavia	Petrol	Octavia Se Tsi S-A	136	0
3627	Skoda	Octavia	Diesel	Octavia Sportline Tdi	140	0
3628	Skoda	Octavia	Diesel	Octavia Sportline Tdi S-A	140	0
3629	Skoda	Octavia	Petrol	Octavia Sportline Tsi	133	0
3630	Skoda	Octavia	Petrol	Octavia Sportline Tsi S-A	141	0
3631	Skoda	Octavia	Petrol	Octavia Vrs 245 Tsi	165	0
3632	Skoda	Octavia	Petrol	Octavia Vrs 245 Tsi S-A	169	0
3633	Skoda	Octavia	Petrol	Octavia Vrs Challenge Tsi	165	0
3634	Skoda	Octavia	Petrol	Octavia Vrs Challenge Tsi S-A	169	0
3635	Skoda	Octavia	Diesel	Octavia Vrs Tdi 4X4 S-A	163	0
3636	Skoda	Octavia	Diesel	Octavia Vrs Tdi S-A	132.5	0
3637	Skoda	Octavia	Petrol	Octavia Vrs Tsi	158	0
3638	Skoda	Octavia	Hybrid	Octavia Vrs Tsi Iv S-A	26	145
3639	Skoda	Octavia	Petrol	Octavia Vrs Tsi S-A	170	0
3640	Skoda	Scala	Petrol	Scala Monte Carlo Tsi	128	0
3641	Skoda	Scala	Petrol	Scala Monte Carlo Tsi S-A	141	0
3642	Skoda	Scala	Petrol	Scala S Tsi	126	0
3643	Skoda	Scala	Diesel	Scala Se L Tdi	129	0
3644	Skoda	Scala	Diesel	Scala Se L Tdi S-A	136	0
3645	Skoda	Scala	Petrol	Scala Se L Tsi	129	0
3646	Skoda	Scala	Petrol	Scala Se L Tsi S-A	137	0
3647	Skoda	Scala	Diesel	Scala Se Tdi	128	0
3648	Skoda	Scala	Diesel	Scala Se Tdi S-A	133	0
3649	Skoda	Scala	Petrol	Scala Se Technology Tsi	125	0
3650	Skoda	Scala	Petrol	Scala Se Technology Tsi S-A	135	0
3651	Skoda	Scala	Petrol	Scala Se Tsi	127	0
3652	Skoda	Scala	Petrol	Scala Se Tsi S-A	136	0
3653	Skoda	Superb	Hybrid	Superb L And K Iv Phev S-A	32	166
3654	Skoda	Superb	Diesel	Superb Laurin &Klem Tdi 4X4 Sa	167.5	0
3655	Skoda	Superb	Petrol	Superb Laurin &Klem Tsi 4X4 Sa	195.5	0
3656	Skoda	Superb	Diesel	Superb Laurin &Klement Tdi S-A	153	0
3657	Skoda	Superb	Petrol	Superb Laurin &Klement Tsi S-A	168	0
3658	Skoda	Superb	Diesel	Superb S Tdi	131	0
3659	Skoda	Superb	Diesel	Superb S Tdi S-A	146	0
3660	Skoda	Superb	Diesel	Superb Se L Exec Tdi 4X4 S-A	166	0
3661	Skoda	Superb	Petrol	Superb Se L Exec Tsi 4X4 Sa	197	0
3662	Skoda	Superb	Diesel	Superb Se L Executive Tdi S-A	152	0
3663	Skoda	Superb	Petrol	Superb Se L Executive Tsi S-A	157	0
3664	Skoda	Superb	Hybrid	Superb Se L Iv Phev S-A	33	167
3665	Skoda	Superb	Diesel	Superb Se L Tdi	135	0
3666	Skoda	Superb	Diesel	Superb Se L Tdi 4X4 S-A	167	0
3667	Skoda	Superb	Diesel	Superb Se L Tdi S-A	140	0
3668	Skoda	Superb	Petrol	Superb Se L Tsi	150	0
3669	Skoda	Superb	Petrol	Superb Se L Tsi S-A	157	0
3670	Skoda	Superb	Diesel	Superb Se Tdi	133	0
3671	Skoda	Superb	Diesel	Superb Se Tdi S-A	153	0
3672	Skoda	Superb	Hybrid	Superb Se Tech Iv Phev S-A	31	163
3673	Skoda	Superb	Diesel	Superb Se Technology Tdi	133	0
3674	Skoda	Superb	Diesel	Superb Se Technology Tdi S-A	141	0
3675	Skoda	Superb	Petrol	Superb Se Technology Tsi	147	0
3676	Skoda	Superb	Petrol	Superb Se Technology Tsi S-A	153	0
3677	Skoda	Superb	Petrol	Superb Se Tsi	147	0
3678	Skoda	Superb	Petrol	Superb Se Tsi S-A	153	0
3679	Skoda	Superb	Hybrid	Superb Sportline + Iv Phev S-A	34	169
3680	Skoda	Superb	Diesel	Superb Sportline + Tdi	140	0
3681	Skoda	Superb	Diesel	Superb Sportline + Tdi 4X4 S-A	171	0
3682	Skoda	Superb	Diesel	Superb Sportline + Tdi S-A	154	0
3683	Skoda	Superb	Petrol	Superb Sportline + Tsi 4X4 S-A	194	0
3684	Skoda	Superb	Petrol	Superb Sportline + Tsi S-A	168	0
3685	Skoda	Superb	Diesel	Superb Sportline Tdi S-A	153	0
3686	Skoda	Superb	Petrol	Superb Sportline Tsi S-A	157	0
3687	Smart	Eq	Electric	Eq Forfour Passion Advanced	0	0
3688	Smart	Eq	Electric	Eq Forfour Prime Exclusive	0	0
3689	Smart	Eq	Electric	Eq Forfour Prime Premium 22 Kw	0	0
3690	Smart	Eq	Electric	Eq Forfour Pulse Premium	0	0
3691	Smart	Eq	Electric	Eq Fortwo Edition One	0	0
3692	Smart	Eq	Electric	Eq Fortwo Passion Advanced	0	0
3693	Smart	Eq	Electric	Eq Fortwo Prime Exclusive	0	0
3694	Smart	Eq	Electric	Eq Fortwo Prime Premium 22 Kw	0	0
3695	Smart	Eq	Electric	Eq Fortwo Prime Premium+ 22 Kw	0	0
3696	Smart	Eq	Electric	Eq Fortwo Pulse Premium	0	0
3697	Suzuki	Across	Hybrid	Across E-Four	22	166
3698	Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet	120	0
3699	Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Auto	126	0
3700	Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Mhev	114	0
3701	Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Mhev Cvt	124	0
3702	Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Shvs	117	0
3703	Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet	120	0
3704	Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet Mhev	114	0
3705	Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet Shvs	117	0
3706	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Auto	126	0
3707	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev	114	0
3708	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev Allgrip	123	0
3709	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev Cvt	124	0
3710	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Shvs	117	0
3711	Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Shvs Allgrip	127	0
3712	Suzuki	Jimny	Petrol	Jimny Sz4 4X4	178	0
3713	Suzuki	Jimny	Petrol	Jimny Sz5 4X4	178	0
3714	Suzuki	Jimny	Petrol	Jimny Sz5 4X4 Auto	198	0
3715	Suzuki	Swace	Petrol	Swace Sz-T Hev Cvt	103	0
3716	Suzuki	Swace	Petrol	Swace Sz5 Hev Cvt	103	0
3717	Suzuki	Swift	Petrol	Swift Attitude Dualjet	124	0
3718	Suzuki	Swift	Petrol	Swift Attitude Dualjet Shvs	121	0
3719	Suzuki	Swift	Petrol	Swift Sport Boosterjet	135	0
3720	Suzuki	Swift	Petrol	Swift Sport Boosterjet Mhev	127	0
3721	Suzuki	Swift	Petrol	Swift Sz-L Dualjet Mhev	111	0
3722	Suzuki	Swift	Petrol	Swift Sz-T Boosterjet	124	0
3723	Suzuki	Swift	Petrol	Swift Sz-T Dualjet Mhev	111	0
3724	Suzuki	Swift	Petrol	Swift Sz-T Dualjet Mhev Cvt	121	0
3725	Suzuki	Swift	Petrol	Swift Sz-T Dualjet Shvs	113	0
3726	Suzuki	Swift	Petrol	Swift Sz3 Dualjet	115	0
3727	Suzuki	Swift	Petrol	Swift Sz3 Dualjet Shvs	113	0
3728	Suzuki	Swift	Petrol	Swift Sz5 Boosterjet Auto	136	0
3729	Suzuki	Swift	Petrol	Swift Sz5 Boosterjet Shvs	123	0
3730	Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev	111	0
3731	Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev Allgrip	123	0
3732	Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev Cvt	121	0
3733	Suzuki	Swift	Petrol	Swift Sz5 Dualjet Shvs Allgrip	128	0
3734	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T B-Jet Allgrip	163	0
3735	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T B-Jet Mhev	128	0
3736	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T Boosterjet	142	0
3737	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T Boosterjet A	158	0
3738	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz4 B-Jet Mhev	127	0
3739	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz4 Boosterjet	142	0
3740	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Agrip A	169	0
3741	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Allgrip	164	0
3742	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Mhev	128	0
3743	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 Bjet Mhev Agrp	140	0
3744	Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 Boosterjet A	157	0
3745	Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet	148	0
3746	Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Allgrip	162	0
3747	Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Auto	156	0
3748	Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Mhev	129	0
3749	Suzuki	Vitara	Petrol	Vitara Sz4 Boosterjet Mhev	129	0
3750	Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet	148	0
3751	Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Agrip A	172	0
3752	Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Allgrip	167	0
3753	Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Auto	156	0
3754	Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Mhev	129	0
3755	Suzuki	Vitara	Petrol	Vitara Sz5 Boostjet Mhev Agrip	141	0
3756	Tesla	Model 3	Electric	Model 3 Long Range Awd	0	160
3757	Tesla	Model 3	Electric	Model 3 Performance Awd	0	166
3758	Tesla	Model 3	Electric	Model 3 Standard Range +	0	149
3759	Tesla	Model S	Electric	Model S Long Range Awd	0	190
3760	Tesla	Model S	Electric	Model S Perform Ludicrous Awd	0	193
3761	Tesla	Model S	Electric	Model S Performance Awd	0	193
3762	Tesla	Model S	Electric	Model S Standard Range Awd	0	194
3763	Tesla	Model X	Electric	Model X Long Range Awd	0	226
3764	Tesla	Model X	Electric	Model X Perform Ludicrous Awd	0	236
3765	Tesla	Model X	Electric	Model X Performance Awd	0	236
3766	Tesla	Model X	Electric	Model X Standard Range Awd	0	228
3767	Toyota	Aygo	Petrol	Aygo Jbl Edition Tss Vvt-I	114	0
3768	Toyota	Aygo	Petrol	Aygo Jbl Edition Tss Vvt-I Cvt	118	0
3769	Toyota	Aygo	Petrol	Aygo X Vvt-I	113	0
3770	Toyota	Aygo	Petrol	Aygo X-Cite Tss Vvt-I	114	0
3771	Toyota	Aygo	Petrol	Aygo X-Cite Tss Vvt-I Cvt	119	0
3772	Toyota	Aygo	Petrol	Aygo X-Cite Vvt-I	114	0
3773	Toyota	Aygo	Petrol	Aygo X-Cite Vvt-I Cvt	119	0
3774	Toyota	Aygo	Petrol	Aygo X-Clusiv Vvt-I	114	0
3775	Toyota	Aygo	Petrol	Aygo X-Clusiv Vvt-I Cvt	119	0
3776	Toyota	Aygo	Petrol	Aygo X-Play Tss Vvt-I	114	0
3777	Toyota	Aygo	Petrol	Aygo X-Play Tss Vvt-I Cvt	118	0
3778	Toyota	Aygo	Petrol	Aygo X-Play Vvt-I	114	0
3779	Toyota	Aygo	Petrol	Aygo X-Play Vvt-I Cvt	118	0
3780	Toyota	Aygo	Petrol	Aygo X-Trend Tss Vvt-I	114	0
3781	Toyota	Aygo	Petrol	Aygo X-Trend Tss Vvt-I Cvt	119	0
3782	Toyota	Aygo	Petrol	Aygo X-Trend Vvt-I	114	0
3783	Toyota	Aygo	Petrol	Aygo X-Trend Vvt-I Cvt	119	0
3784	Toyota	C-Hr	Petrol	C-Hr Design	156	0
3785	Toyota	C-Hr	Petrol	C-Hr Design Hev Cvt	110	0
3786	Toyota	C-Hr	Petrol	C-Hr Dynamic	156	0
3787	Toyota	C-Hr	Petrol	C-Hr Dynamic Awd Cvt	188	0
3788	Toyota	C-Hr	Petrol	C-Hr Dynamic Hev Cvt	110	0
3789	Toyota	C-Hr	Petrol	C-Hr Excel	155	0
3790	Toyota	C-Hr	Petrol	C-Hr Excel Awd Cvt	186	0
3791	Toyota	C-Hr	Petrol	C-Hr Excel Hev Cvt	110	0
3792	Toyota	C-Hr	Petrol	C-Hr Icon Hev Cvt	109	0
3793	Toyota	C-Hr	Petrol	C-Hr Lime Edition Hev Cvt	112	0
3794	Toyota	C-Hr	Petrol	C-Hr Orange Edition Hev Cvt	119	0
3795	Toyota	Camry	Petrol	Camry Design Vvt-I Cvt	120	0
3796	Toyota	Camry	Petrol	Camry Excel Vvt-I Cvt	126	0
3797	Toyota	Corolla	Petrol	Corolla Design Hev Cvt	112	0
3798	Toyota	Corolla	Petrol	Corolla Design Vvt-I	151	0
3799	Toyota	Corolla	Petrol	Corolla Design Vvt-I Hev Cvt	111	0
3800	Toyota	Corolla	Petrol	Corolla Excel Hev Cvt	113	0
3801	Toyota	Corolla	Petrol	Corolla Excel Vvt-I Hev Cvt	120	0
3802	Toyota	Corolla	Petrol	Corolla Gr Sport Hev Cvt	119	0
3803	Toyota	Corolla	Petrol	Corolla Icon Hev Cvt	102	0
3804	Toyota	Corolla	Petrol	Corolla Icon Tech Hev Cvt	103	0
3805	Toyota	Corolla	Petrol	Corolla Icon Tech Vvt-I	143	0
3806	Toyota	Corolla	Petrol	Corolla Icon Tech Vvti Hev Cvt	102	0
3807	Toyota	Corolla	Petrol	Corolla Icon Vvt-I	143	0
3808	Toyota	Corolla	Petrol	Corolla Icon Vvt-I Hev Cvt	102	0
3809	Toyota	Corolla	Petrol	Corolla Trek Hev Cvt	113	0
3810	Toyota	Gr	Petrol	Gr Yaris 4Wd	186	0
3811	Toyota	Gr	Petrol	Gr Yaris Circuit 4Wd	186	0
3812	Toyota	Gt86	Petrol	Gt86 Club Series Blue Ed D4S A	193	0
3813	Toyota	Gt86	Petrol	Gt86 D-4S	191	0
3814	Toyota	Gt86	Petrol	Gt86 Pro D-4S Auto	193	0
3815	Toyota	Hilux	Diesel	Hilux Active D-4D 4Wd Dcb	247	0
3816	Toyota	Hilux	Diesel	Hilux Active D-4D 4Wd Ecb	234	0
3817	Toyota	Land	Diesel	Land Cruiser Active D-4D Auto	246	0
3818	Toyota	Land	Diesel	Land Cruiser Icon D-4D Auto	254	0
3819	Toyota	Land	Diesel	Land Cruiser Invincible D-4D A	256	0
3820	Toyota	Land	Diesel	Land Cruiser Utility D-4D	235.5	0
3821	Toyota	Land	Diesel	Land Cruiser Utility D-4D Auto	255	0
3822	Toyota	Mirai	Hydrogen	Mirai Fuel Cell Cvt	0	0
3823	Toyota	Prius	Petrol	Prius Active Vvt-I Cvt	94	0
3824	Toyota	Prius	Petrol	Prius Bness Ed + Vvt-I Awd Cvt	109	0
3825	Toyota	Prius	Hybrid	Prius Business Ed + Phev Cvt	103	0
3826	Toyota	Prius	Petrol	Prius Business Ed + Vvt-I Cvt	94	0
3827	Toyota	Prius	Petrol	Prius Business Edtn Vvt-I Cvt	94	0
3828	Toyota	Prius	Hybrid	Prius Excel Phev Cvt	103	0
3829	Toyota	Prius	Petrol	Prius Excel Vvt-I Cvt	104	0
3830	Toyota	Prius	Petrol	Prius Plus Excel Tss Hev Cvt	135	0
3831	Toyota	Prius	Petrol	Prius Plus Icon Tss Hev Cvt	132	0
3832	Toyota	Proace	Diesel	Proace Verso Combi L1 D-4D	168	0
3833	Toyota	Proace	Diesel	Proace Verso Family L0 D-4D	185	0
3834	Toyota	Proace	Diesel	Proace Verso Family L0 D-4D A	190	0
3835	Toyota	Proace	Diesel	Proace Verso Family L1 D-4D	188	0
3836	Toyota	Proace	Diesel	Proace Verso Family L1 D-4D A	192	0
3837	Toyota	Proace	Diesel	Proace Verso Shuttle L1 D-4D	170	0
3838	Toyota	Proace	Diesel	Proace Verso Shuttle L2 D-4D	192	0
3839	Toyota	Proace	Diesel	Proace Verso Vip L2 D-4D Auto	199	0
3840	Toyota	Rav4	Petrol	Rav4 Black Edition Hev 4X2 Cvt	131	0
3841	Toyota	Rav4	Petrol	Rav4 Black Edition Hev Cvt	133	0
3842	Toyota	Rav4	Petrol	Rav4 Design Hev 4X2 Cvt	129	0
3843	Toyota	Rav4	Petrol	Rav4 Design Hev Cvt	131	0
3844	Toyota	Rav4	Petrol	Rav4 Dynamic Hev 4X2 Cvt	129	0
3845	Toyota	Rav4	Petrol	Rav4 Dynamic Hev Cvt	131	0
3846	Toyota	Rav4	Hybrid	Rav4 Dynamic Phev Auto	149	0
3847	Toyota	Rav4	Petrol	Rav4 Excel Hev 4X2 Cvt	129	0
3848	Toyota	Rav4	Petrol	Rav4 Excel Hev Cvt	131	0
3849	Toyota	Rav4	Petrol	Rav4 Icon Hev 4X2 Cvt	126	0
3850	Toyota	Supra	Petrol	Supra A90 Auto	188	0
3851	Toyota	Supra	Petrol	Supra Fuji Speedway Auto	167	0
3852	Toyota	Supra	Petrol	Supra Pro Auto	188	0
3853	Toyota	Yaris	Petrol	Yaris Active Vvt-I	130	0
3854	Toyota	Yaris	Petrol	Yaris Active Vvt-I Hev Cvt	108	0
3855	Toyota	Yaris	Petrol	Yaris Design Hev Cvt	92	0
3856	Toyota	Yaris	Petrol	Yaris Dynamic Hev Cvt	98	0
3857	Toyota	Yaris	Petrol	Yaris Excel Hev Cvt	98	0
3858	Toyota	Yaris	Petrol	Yaris Excel Vvt-I Hev Cvt	112	0
3859	Toyota	Yaris	Petrol	Yaris Gr-Sport Vvt-I Hev Cvt	112	0
3860	Toyota	Yaris	Petrol	Yaris Icon Hev Cvt	92	0
3861	Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I	136	0
3862	Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I Cvt	135	0
3863	Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I Hev Cvt	108	0
3864	Toyota	Yaris	Petrol	Yaris Icon Vvt-I	136	0
3865	Toyota	Yaris	Petrol	Yaris Icon Vvt-I Cvt	135	0
3866	Toyota	Yaris	Petrol	Yaris Icon Vvt-I Hev Cvt	108	0
3867	Toyota	Yaris	Petrol	Yaris Launch Edition Hev Cvt	98	0
3868	Toyota	Yaris	Petrol	Yaris Y20 Vvt-I	141	0
3869	Toyota	Yaris	Petrol	Yaris Y20 Vvt-I Cvt	139	0
3870	Toyota	Yaris	Petrol	Yaris Y20 Vvt-I Hev Cvt	112	0
3871	Vauxhall	Astra	Petrol	Astra Business Ed Nav T Cvt	129	0
3872	Vauxhall	Astra	Diesel	Astra Business Ed Nav T D A	131	0
3873	Vauxhall	Astra	Petrol	Astra Business Edition Nav T	120	0
3874	Vauxhall	Astra	Diesel	Astra Business Edition Nav T D	113	0
3875	Vauxhall	Astra	Petrol	Astra Elite Nav Premium T	121	0
3876	Vauxhall	Astra	Petrol	Astra Elite Nav Premium T Cvt	131.5	0
3877	Vauxhall	Astra	Diesel	Astra Elite Nav Premium Td	117	0
3878	Vauxhall	Astra	Diesel	Astra Elite Nav Premium Td A	133	0
3879	Vauxhall	Astra	Petrol	Astra Elite Nav Turbo	121	0
3880	Vauxhall	Astra	Petrol	Astra Elite Nav Turbo Cvt	131	0
3881	Vauxhall	Astra	Diesel	Astra Elite Nav Turbo D	117	0
3882	Vauxhall	Astra	Diesel	Astra Elite Nav Turbo D Auto	132	0
3883	Vauxhall	Astra	Petrol	Astra Se Turbo	120	0
3884	Vauxhall	Astra	Petrol	Astra Se Turbo Cvt	130	0
3885	Vauxhall	Astra	Diesel	Astra Se Turbo D	113	0
3886	Vauxhall	Astra	Diesel	Astra Se Turbo D Auto	131	0
3887	Vauxhall	Astra	Petrol	Astra Sport	149	0
3888	Vauxhall	Astra	Petrol	Astra Sri Nav Turbo	121	0
3889	Vauxhall	Astra	Petrol	Astra Sri Nav Turbo Cvt	134	0
3890	Vauxhall	Astra	Diesel	Astra Sri Nav Turbo D	114	0
3891	Vauxhall	Astra	Diesel	Astra Sri Nav Turbo D Auto	133	0
3892	Vauxhall	Astra	Petrol	Astra Sri Turbo	121	0
3893	Vauxhall	Astra	Petrol	Astra Sri Turbo Cvt	131	0
3894	Vauxhall	Astra	Diesel	Astra Sri Turbo D	117	0
3895	Vauxhall	Astra	Diesel	Astra Sri Turbo D Auto	133	0
3896	Vauxhall	Astra	Petrol	Astra Sri Vx Line Nav T Cvt	133	0
3897	Vauxhall	Astra	Diesel	Astra Sri Vx Line Nav T D A	134	0
3898	Vauxhall	Astra	Petrol	Astra Sri Vx Line Nav Turbo	123	0
3899	Vauxhall	Astra	Diesel	Astra Sri Vx Line Nav Turbo D	118	0
3900	Vauxhall	Astra	Diesel	Astra Ulitmate Nav Turbo D	119	0
3901	Vauxhall	Astra	Petrol	Astra Ultimate Nav Turbo	124	0
3902	Vauxhall	Astra	Petrol	Astra Ultimate Nav Turbo Cvt	134	0
3903	Vauxhall	Astra	Diesel	Astra Ultimate Nav Turbo D A	135	0
3904	Vauxhall	Combo	Diesel	Combo 2300 Sportive Td S S	150	0
3905	Vauxhall	Combo	Diesel	Combo Life Design Cdti S S	160	0
3906	Vauxhall	Combo	Petrol	Combo Life Design S S	159	0
3907	Vauxhall	Combo	Diesel	Combo Life Design Turbo D S S	154	0
3908	Vauxhall	Combo	Petrol	Combo Life Edition S S	145	0
3909	Vauxhall	Combo	Petrol	Combo Life Elite S S Auto	160	0
3910	Vauxhall	Combo	Diesel	Combo Life Elite Turbo D S S A	153	0
3911	Vauxhall	Combo	Diesel	Combo Life Energy Cdti S S	150	0
3912	Vauxhall	Combo	Diesel	Combo Life Energy Cdti Ss Auto	148	0
3913	Vauxhall	Combo	Petrol	Combo Life Energy S S	159	0
3914	Vauxhall	Combo	Petrol	Combo Life Energy S S Auto	157	0
3915	Vauxhall	Combo	Diesel	Combo Life Energy Turbo D S S	147	0
3916	Vauxhall	Combo	Diesel	Combo Life Se Turbo D S S	146	0
3917	Vauxhall	Corsa	Electric	Corsa E Elite Nav	0	165
3918	Vauxhall	Corsa	Electric	Corsa E Se Nav	0	165
3919	Vauxhall	Corsa	Petrol	Corsa Elite	119	0
3920	Vauxhall	Corsa	Diesel	Corsa Elite Cdti Ecotec S S	109	0
3921	Vauxhall	Corsa	Petrol	Corsa Elite Nav Premium Trbo A	134	0
3922	Vauxhall	Corsa	Diesel	Corsa Elite Nav Premium Trbo D	109	0
3923	Vauxhall	Corsa	Petrol	Corsa Elite Nav Premium Turbo	126	0
3924	Vauxhall	Corsa	Petrol	Corsa Elite Nav Turbo	125	0
3925	Vauxhall	Corsa	Petrol	Corsa Elite Nav Turbo Auto	133	0
3926	Vauxhall	Corsa	Diesel	Corsa Elite Nav Turbo D	108	0
3927	Vauxhall	Corsa	Petrol	Corsa Elite Turbo Auto	123	0
3928	Vauxhall	Corsa	Petrol	Corsa Se	125	0
3929	Vauxhall	Corsa	Petrol	Corsa Se Nav	125	0
3930	Vauxhall	Corsa	Petrol	Corsa Se Nav Premium	124	0
3931	Vauxhall	Corsa	Petrol	Corsa Se Nav Premium Turbo	126	0
3932	Vauxhall	Corsa	Petrol	Corsa Se Nav Premium Turbo A	134	0
3933	Vauxhall	Corsa	Diesel	Corsa Se Nav Premium Turbo D	109	0
3934	Vauxhall	Corsa	Petrol	Corsa Se Nav Turbo	126	0
3935	Vauxhall	Corsa	Petrol	Corsa Se Nav Turbo Auto	134	0
3936	Vauxhall	Corsa	Diesel	Corsa Se Nav Turbo D	109	0
3937	Vauxhall	Corsa	Petrol	Corsa Se Premium	125	0
3938	Vauxhall	Corsa	Petrol	Corsa Se Premium Turbo	126	0
3939	Vauxhall	Corsa	Petrol	Corsa Se Premium Turbo Auto	134	0
3940	Vauxhall	Corsa	Diesel	Corsa Se Premium Turbo D	109	0
3941	Vauxhall	Corsa	Petrol	Corsa Se Turbo	126	0
3942	Vauxhall	Corsa	Petrol	Corsa Se Turbo Auto	134	0
3943	Vauxhall	Corsa	Diesel	Corsa Se Turbo D	109	0
3944	Vauxhall	Corsa	Petrol	Corsa Sport	149	0
3945	Vauxhall	Corsa	Petrol	Corsa Sri	148	0
3946	Vauxhall	Corsa	Petrol	Corsa Sri Nav Premium Turbo	126	0
3947	Vauxhall	Corsa	Diesel	Corsa Sri Nav Premium Turbo D	110	0
3948	Vauxhall	Corsa	Petrol	Corsa Sri Nav Turbo	125	0
3949	Vauxhall	Corsa	Petrol	Corsa Sri Premium Turbo	126	0
3950	Vauxhall	Corsa	Petrol	Corsa Sri Premium Turbo Auto	123	0
3951	Vauxhall	Corsa	Diesel	Corsa Sri Premium Turbo D	107	0
3952	Vauxhall	Corsa	Petrol	Corsa Sri Turbo	125	0
3953	Vauxhall	Corsa	Diesel	Corsa Sri Turbo D	108	0
3954	Vauxhall	Corsa	Petrol	Corsa Ultimate Nav Turbo Auto	134	0
3955	Vauxhall	Crossland	Petrol	Crossland X B-Ness Ed Nav T A	146	0
3956	Vauxhall	Crossland	Diesel	Crossland X B-Ness Ed Nav Td A	136	0
3957	Vauxhall	Crossland	Petrol	Crossland X Business Ed Nav	141	0
3958	Vauxhall	Crossland	Petrol	Crossland X Business Ed Nav T	137	0
3959	Vauxhall	Crossland	Diesel	Crossland X Business Ed Nav Td	124	0
3960	Vauxhall	Crossland	Petrol	Crossland X Design Ln Eco S S	144	0
3961	Vauxhall	Crossland	Petrol	Crossland X Elite	142	0
3962	Vauxhall	Crossland	Diesel	Crossland X Elite Ecotec D S S	128	0
3963	Vauxhall	Crossland	Petrol	Crossland X Elite Ecotec S S	140	0
3964	Vauxhall	Crossland	Petrol	Crossland X Elite Nav	142	0
3965	Vauxhall	Crossland	Diesel	Crossland X Elite Nav Eco D Ss	129	0
3966	Vauxhall	Crossland	Petrol	Crossland X Elite Nav Eco S S	140	0
3967	Vauxhall	Crossland	Diesel	Crossland X Elite Nav Td Auto	137	0
3968	Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo	137	0
3969	Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo A	146	0
3970	Vauxhall	Crossland	Diesel	Crossland X Elite Nav Turbo D	126	0
3971	Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo Ss	147	0
3972	Vauxhall	Crossland	Petrol	Crossland X Elite Turbo	137	0
3973	Vauxhall	Crossland	Petrol	Crossland X Elite Turbo Auto	146	0
3974	Vauxhall	Crossland	Diesel	Crossland X Elite Turbo D	126	0
3975	Vauxhall	Crossland	Diesel	Crossland X Elite Turbo D Auto	137	0
3976	Vauxhall	Crossland	Petrol	Crossland X Elite Turbo S S	147	0
3977	Vauxhall	Crossland	Petrol	Crossland X Elt Nv Etec T Ss A	133	0
3978	Vauxhall	Crossland	Petrol	Crossland X Griffin	142	0
3979	Vauxhall	Crossland	Petrol	Crossland X Griffin Turbo	140	0
3980	Vauxhall	Crossland	Petrol	Crossland X Griffin Turbo Auto	146	0
3981	Vauxhall	Crossland	Diesel	Crossland X Griffin Turbo D	126	0
3982	Vauxhall	Crossland	Diesel	Crossland X Griffin Turbo D A	137	0
3983	Vauxhall	Crossland	Petrol	Crossland X Se	141	0
3984	Vauxhall	Crossland	Diesel	Crossland X Se Ecotec D S S	126.5	0
3985	Vauxhall	Crossland	Petrol	Crossland X Se Ecotec S S	142	0
3986	Vauxhall	Crossland	Petrol	Crossland X Se Nav	142	0
3987	Vauxhall	Crossland	Petrol	Crossland X Se Nav Ecotec S S	143	0
3988	Vauxhall	Crossland	Petrol	Crossland X Sport	142	0
3989	Vauxhall	Crossland	Petrol	Crossland X Sport Nav Prem T	140	0
3990	Vauxhall	Crossland	Petrol	Crossland X Sport Nav Prem T A	146	0
3991	Vauxhall	Crossland	Diesel	Crossland X Sport Nav Prem Td	126	0
3992	Vauxhall	Crossland	Petrol	Crossland X Sport Nav Premium	142	0
3993	Vauxhall	Crossland	Petrol	Crossland X Sport Turbo	140	0
3994	Vauxhall	Crossland	Petrol	Crossland X Sport Turbo Auto	146	0
3995	Vauxhall	Crossland	Diesel	Crossland X Sport Turbo D	126	0
3996	Vauxhall	Crossland	Diesel	Crossland X Sport Turbo D Auto	137	0
3997	Vauxhall	Crossland	Diesel	Crossland X Spt Nav Prem Td A	137	0
3998	Vauxhall	Crossland	Petrol	Crossland X Sri Nav	142	0
3999	Vauxhall	Crossland	Petrol	Crossland X Sri Nav Turbo	140	0
4000	Vauxhall	Crossland	Petrol	Crossland X Sri Nav Turbo Auto	146	0
4001	Vauxhall	Crossland	Diesel	Crossland X Sri Nav Turbo D	126	0
4002	Vauxhall	Crossland	Diesel	Crossland X Tec Ln Nv Eco D Ss	128	0
4003	Vauxhall	Crossland	Petrol	Crossland X Tech Line Nav	148	0
4004	Vauxhall	Crossland	Petrol	Crossland X Tech Ln Nav Eco Ss	142.5	0
4005	Vauxhall	G-Land	Hybrid	G-Land X Bus Ed Nav Prm Hyb4 A	30	0
4006	Vauxhall	Grandland	Diesel	Grandland X B-Ness Ed Nv T D A	137	0
4007	Vauxhall	Grandland	Hybrid	Grandland X Bness Ed Nav Hyb A	32	0
4008	Vauxhall	Grandland	Petrol	Grandland X Business Ed Nav T	147	0
4009	Vauxhall	Grandland	Petrol	Grandland X Businss Ed Nav T A	152	0
4010	Vauxhall	Grandland	Diesel	Grandland X Businss Ed Nav T D	137	0
4011	Vauxhall	Grandland	Petrol	Grandland X Design Line T Ss A	157	0
4012	Vauxhall	Grandland	Hybrid	Grandland X Elite Nav Hyb4 A	30	0
4013	Vauxhall	Grandland	Petrol	Grandland X Elite Nav Prem T	142	0
4014	Vauxhall	Grandland	Petrol	Grandland X Elite Nav Prem T A	148	0
4015	Vauxhall	Grandland	Diesel	Grandland X Elite Nav Prem Td	137	0
4016	Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D A	137	0
4017	Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D Ss	145	0
4018	Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D Ss A	158	0
4019	Vauxhall	Grandland	Petrol	Grandland X Elite Nav T Ss A	160	0
4020	Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo	147	0
4021	Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo A	152	0
4022	Vauxhall	Grandland	Diesel	Grandland X Elite Nav Turbo D	138	0
4023	Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo Ss	154	0
4024	Vauxhall	Grandland	Diesel	Grandland X Elite Nv Prem Td A	137	0
4025	Vauxhall	Grandland	Petrol	Grandland X Griffin Turbo	146	0
4026	Vauxhall	Grandland	Petrol	Grandland X Griffin Turbo Auto	151	0
4027	Vauxhall	Grandland	Diesel	Grandland X Griffin Turbo D	137	0
4028	Vauxhall	Grandland	Diesel	Grandland X Griffin Turbo D A	136	0
4029	Vauxhall	Grandland	Hybrid	Grandland X Se Nav Hybrid Auto	32	0
4030	Vauxhall	Grandland	Diesel	Grandland X Se Premium Td Auto	136	0
4031	Vauxhall	Grandland	Petrol	Grandland X Se Premium Turbo	141	0
4032	Vauxhall	Grandland	Petrol	Grandland X Se Premium Turbo A	146	0
4033	Vauxhall	Grandland	Diesel	Grandland X Se Premium Turbo D	137	0
4034	Vauxhall	Grandland	Petrol	Grandland X Se Turbo	146	0
4035	Vauxhall	Grandland	Petrol	Grandland X Se Turbo Auto	151	0
4036	Vauxhall	Grandland	Diesel	Grandland X Se Turbo D	136	0
4037	Vauxhall	Grandland	Diesel	Grandland X Se Turbo D Auto	135	0
4038	Vauxhall	Grandland	Diesel	Grandland X Se Turbo D S S	139	0
4039	Vauxhall	Grandland	Diesel	Grandland X Se Turbo D S S A	149	0
4040	Vauxhall	Grandland	Petrol	Grandland X Se Turbo S S	146	0
4041	Vauxhall	Grandland	Petrol	Grandland X Se Turbo S S Auto	156	0
4042	Vauxhall	Grandland	Diesel	Grandland X Sport Nav T D Ss	145	0
4043	Vauxhall	Grandland	Diesel	Grandland X Sport Nav T D Ss A	154	0
4044	Vauxhall	Grandland	Petrol	Grandland X Sport Nav T Ss A	157	0
4045	Vauxhall	Grandland	Petrol	Grandland X Sport Nav Turbo Ss	150	0
4046	Vauxhall	Grandland	Hybrid	Grandland X Sri Nav Hybrid A	32	0
4047	Vauxhall	Grandland	Hybrid	Grandland X Sri Nav Hybrid4 A	30	0
4048	Vauxhall	Grandland	Petrol	Grandland X Sri Nav Turbo	146	0
4049	Vauxhall	Grandland	Petrol	Grandland X Sri Nav Turbo A	151	0
4050	Vauxhall	Grandland	Diesel	Grandland X Sri Nav Turbo D	137	0
4051	Vauxhall	Grandland	Diesel	Grandland X Sri Nav Turbo D A	136	0
4052	Vauxhall	Grandland	Petrol	Grandland X Tech Line Nav T Ss	150	0
4053	Vauxhall	Grandland	Diesel	Grandland X Tech Ln Nav T D Ss	145	0
4054	Vauxhall	Grandland	Petrol	Grandland X Tech Ln Nav T Ss A	157	0
4055	Vauxhall	Grandland	Diesel	Grandland X Ultimate T D S S A	172	0
4056	Vauxhall	Grandland	Diesel	Grandland X Ultimate Turbo D A	164	0
4057	Vauxhall	Grandland	Hybrid	Grandland X Ultimte Nav Hyb4 A	30	0
4058	Vauxhall	Insignia	Diesel	Insignia Design Ecotec D	128	0
4059	Vauxhall	Insignia	Diesel	Insignia Design Nav Ecotec D	128	0
4060	Vauxhall	Insignia	Petrol	Insignia Design Nav Turbo	140	0
4061	Vauxhall	Insignia	Diesel	Insignia Design Nav Turbo D	130	0
4062	Vauxhall	Insignia	Diesel	Insignia Design Nav Turbo D A	143	0
4063	Vauxhall	Insignia	Petrol	Insignia Design Turbo	140	0
4064	Vauxhall	Insignia	Petrol	Insignia Design Turbo Auto	154	0
4065	Vauxhall	Insignia	Diesel	Insignia Design Turbo D	135	0
4066	Vauxhall	Insignia	Diesel	Insignia Design Turbo D Auto	147	0
4067	Vauxhall	Insignia	Diesel	Insignia Elite Nav Ecotec D	129	0
4068	Vauxhall	Insignia	Petrol	Insignia Elite Nav Turbo	143	0
4069	Vauxhall	Insignia	Petrol	Insignia Elite Nav Turbo Auto	156	0
4070	Vauxhall	Insignia	Diesel	Insignia Elite Nav Turbo D	132	0
4071	Vauxhall	Insignia	Diesel	Insignia Elite Nav Turbo D A	151.5	0
4072	Vauxhall	Insignia	Diesel	Insignia Gsi Nav T D 4X4 A	197	0
4073	Vauxhall	Insignia	Petrol	Insignia Gsi Turbo 4X4 Auto	195	0
4074	Vauxhall	Insignia	Diesel	Insignia Se Nav Cdti	122	0
4075	Vauxhall	Insignia	Diesel	Insignia Se Nav Turbo D	122	0
4076	Vauxhall	Insignia	Diesel	Insignia Se Nav Turbo D Auto	130	0
4077	Vauxhall	Insignia	Diesel	Insignia Sri Ecotec D	129	0
4078	Vauxhall	Insignia	Diesel	Insignia Sri Nav Ecotec D	129	0
4079	Vauxhall	Insignia	Petrol	Insignia Sri Nav Turbo	141	0
4080	Vauxhall	Insignia	Petrol	Insignia Sri Nav Turbo Auto	155	0
4081	Vauxhall	Insignia	Diesel	Insignia Sri Nav Turbo D	122	0
4082	Vauxhall	Insignia	Diesel	Insignia Sri Nav Turbo D Auto	131	0
4083	Vauxhall	Insignia	Petrol	Insignia Sri Turbo	141	0
4084	Vauxhall	Insignia	Petrol	Insignia Sri Turbo Auto	156	0
4085	Vauxhall	Insignia	Diesel	Insignia Sri Turbo D	138	0
4086	Vauxhall	Insignia	Diesel	Insignia Sri Vx-Line Nav T D	131	0
4087	Vauxhall	Insignia	Diesel	Insignia Sri Vx-Line Nav T D A	132	0
4088	Vauxhall	Insignia	Petrol	Insignia Sri Vx-Line Nav Tur A	156	0
4089	Vauxhall	Insignia	Petrol	Insignia Sri Vx-Line Nav Turbo	142	0
4090	Vauxhall	Insignia	Diesel	Insignia Tech Line Nav E-Tec D	128	0
4091	Vauxhall	Insignia	Diesel	Insignia Tech Line Nav T D A	150	0
4092	Vauxhall	Insignia	Petrol	Insignia Tech Line Nav Turbo	140	0
4093	Vauxhall	Insignia	Petrol	Insignia Tech Line Nav Turbo A	155	0
4094	Vauxhall	Insignia	Diesel	Insignia Tech Line Nav Turbo D	131	0
4095	Vauxhall	Insignia	Diesel	Insignia Ultimate Nav Tur D A	132	0
4096	Vauxhall	Insignia	Petrol	Insignia Ultimate Nav Turbo A	170	0
4097	Vauxhall	Insignia	Diesel	Insignia Ultimate Nav Turbo D	124	0
4098	Vauxhall	Movano	Diesel	Movano L2H3 F3500 Cdti	263	0
4099	Vauxhall	Vivaro	Diesel	Vivaro 2700 Edition S S	170	0
4100	Vauxhall	Vivaro	Diesel	Vivaro 3100 Edition S S	193	0
4101	Vauxhall	Vivaro	Diesel	Vivaro Life Edition S S	174	0
4102	Vauxhall	Vivaro	Diesel	Vivaro Life Elite S S	198	0
4103	Vauxhall	Vivaro	Diesel	Vivaro Life Elite S S Auto	204	0
4104	Vauxhall	Vivaro-E	Electric	Vivaro-E Life Edition	0	263
4105	Vauxhall	Vivaro-E	Electric	Vivaro-E Life Elite	0	257
4106	Volkswagen	Arteon	Diesel	Arteon Elegance Tdi	127	0
4107	Volkswagen	Arteon	Diesel	Arteon Elegance Tdi 4Motion Sa	166	0
4108	Volkswagen	Arteon	Diesel	Arteon Elegance Tdi S-A	133	0
4109	Volkswagen	Arteon	Petrol	Arteon Elegance Tsi 4Motion Sa	188	0
4110	Volkswagen	Arteon	Petrol	Arteon Elegance Tsi Evo S-A	158	0
4111	Volkswagen	Arteon	Petrol	Arteon Elegance Tsi S-A	176	0
4112	Volkswagen	Arteon	Diesel	Arteon R-Line Bitdi Scr 4M Sa	198	0
4113	Volkswagen	Arteon	Diesel	Arteon R-Line Ed Tdi Scr 4M Sa	168	0
4114	Volkswagen	Arteon	Diesel	Arteon R-Line Ed Tdi Scr Sa	155	0
4115	Volkswagen	Arteon	Petrol	Arteon R-Line Ed Tsi 4M Sa	190	0
4116	Volkswagen	Arteon	Petrol	Arteon R-Line Edition Tsi S-A	178	0
4117	Volkswagen	Arteon	Diesel	Arteon R-Line Tdi	132	0
4118	Volkswagen	Arteon	Diesel	Arteon R-Line Tdi 4Motion S-A	167	0
4119	Volkswagen	Arteon	Diesel	Arteon R-Line Tdi S-A	139	0
4120	Volkswagen	Arteon	Petrol	Arteon R-Line Tsi 4Motion S-A	190	0
4121	Volkswagen	Arteon	Petrol	Arteon R-Line Tsi Evo S-A	160.5	0
4122	Volkswagen	Arteon	Petrol	Arteon R-Line Tsi S-A	178	0
4123	Volkswagen	Arteon	Diesel	Arteon Se Tdi	126	0
4124	Volkswagen	Arteon	Diesel	Arteon Se Tdi S-A	133	0
4125	Volkswagen	Arteon	Petrol	Arteon Se Tsi S-A	168	0
4126	Volkswagen	Caddy	Diesel	Caddy C20 Life Tdi	144	0
4127	Volkswagen	Caddy	Diesel	Caddy C20 Life Tdi S-A	156	0
4128	Volkswagen	Caddy	Petrol	Caddy C20 Life Tsi	159	0
4129	Volkswagen	Caddy	Diesel	Caddy Maxi C20 Life Tdi	149	0
4130	Volkswagen	Caddy	Diesel	Caddy Maxi C20 Life Tdi S-A	161	0
4131	Volkswagen	Caddy	Petrol	Caddy Maxi C20 Life Tsi	164	0
4132	Volkswagen	California	Diesel	California Beach Tdi Bmt S-A	226	0
4133	Volkswagen	California	Diesel	California Coast Tdi S-A	221	0
4134	Volkswagen	California	Diesel	California Ocean Tdi 4M S-A	237.5	0
4135	Volkswagen	California	Diesel	California Ocean Tdi Bmt S-A	227	0
4136	Volkswagen	California	Diesel	California Ocean Tdi S-A	222.5	0
4137	Volkswagen	Caravelle	Diesel	Caravelle Exec Tdi Bmt 4M Sa	251	0
4138	Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi 4M S-A	235	0
4139	Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi Bmt	213	0
4140	Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi Bmt Sa	220	0
4141	Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi S-A	219	0
4142	Volkswagen	Caravelle	Diesel	Caravelle Se Tdi Bmt S-A	226	0
4143	Volkswagen	Caravelle	Diesel	Caravelle Se Tdi S-A	220	0
4144	Volkswagen	Crafter	Diesel	Crafter Cr35 Startline Tdi	261	0
4145	Volkswagen	Crafter	Diesel	Crafter Cr35 Trendline Tdi	258	0
4146	Volkswagen	E-Golf	Electric	E-Golf	0	154
4147	Volkswagen	E-Up	Electric	E-Up	0	145
4148	Volkswagen	Golf	Petrol	Golf	174	0
4149	Volkswagen	Golf	Diesel	Golf Alltrack Tdi 4Motion S-A	166	0
4150	Volkswagen	Golf	Petrol	Golf Clubsport Gti Tsi S-A	167	0
4151	Volkswagen	Golf	Diesel	Golf Gt Edition Tdi	135	0
4152	Volkswagen	Golf	Diesel	Golf Gt Edition Tdi S-A	143	0
4153	Volkswagen	Golf	Petrol	Golf Gt Edition Tsi Evo	134	0
4154	Volkswagen	Golf	Petrol	Golf Gt Edition Tsi Evo S-A	145	0
4155	Volkswagen	Golf	Diesel	Golf Gt Tdi	136	0
4156	Volkswagen	Golf	Diesel	Golf Gt Tdi S-A	141	0
4157	Volkswagen	Golf	Petrol	Golf Gt Tsi Evo	134	0
4158	Volkswagen	Golf	Petrol	Golf Gt Tsi Evo S-A	146	0
4159	Volkswagen	Golf	Diesel	Golf Gtd Tdi Blueline S-A	146.5	0
4160	Volkswagen	Golf	Diesel	Golf Gtd Tdi S-A	137	0
4161	Volkswagen	Golf	Hybrid	Golf Gte Advance S-A	46	137
4162	Volkswagen	Golf	Hybrid	Golf Gte S-A	45	135
4163	Volkswagen	Golf	Petrol	Golf Gti Performance Tsi	171	0
4164	Volkswagen	Golf	Petrol	Golf Gti Performance Tsi S-A	170	0
4165	Volkswagen	Golf	Petrol	Golf Gti Tcr S-A	175	0
4166	Volkswagen	Golf	Petrol	Golf Gti Tsi	171	0
4167	Volkswagen	Golf	Petrol	Golf Gti Tsi S-A	170	0
4168	Volkswagen	Golf	Petrol	Golf Life Etsi S-A	130	0
4169	Volkswagen	Golf	Diesel	Golf Life Tdi	110	0
4170	Volkswagen	Golf	Petrol	Golf Life Tsi	122	0
4171	Volkswagen	Golf	Diesel	Golf Match Edition Tdi	128	0
4172	Volkswagen	Golf	Diesel	Golf Match Edition Tdi S-A	138	0
4173	Volkswagen	Golf	Petrol	Golf Match Edition Tsi	124	0
4174	Volkswagen	Golf	Petrol	Golf Match Edition Tsi Evo	127	0
4175	Volkswagen	Golf	Petrol	Golf Match Edition Tsi Evo S-A	142	0
4176	Volkswagen	Golf	Diesel	Golf Match Tdi	128	0
4177	Volkswagen	Golf	Diesel	Golf Match Tdi S-A	138	0
4178	Volkswagen	Golf	Petrol	Golf Match Tsi	124	0
4179	Volkswagen	Golf	Petrol	Golf Match Tsi Evo	129	0
4180	Volkswagen	Golf	Petrol	Golf Match Tsi Evo S-A	141	0
4181	Volkswagen	Golf	Petrol	Golf Match Tsi S-A	139	0
4182	Volkswagen	Golf	Petrol	Golf R Tsi 4Motion S-A	194	0
4183	Volkswagen	Golf	Diesel	Golf R-Line Edition Tdi	136	0
4184	Volkswagen	Golf	Diesel	Golf R-Line Edition Tdi S-A	141	0
4185	Volkswagen	Golf	Petrol	Golf R-Line Edition Tsi Evo	134	0
4186	Volkswagen	Golf	Petrol	Golf R-Line Edition Tsi Evo Sa	145	0
4187	Volkswagen	Golf	Petrol	Golf R-Line Etsi S-A	133	0
4188	Volkswagen	Golf	Diesel	Golf R-Line Tdi	136	0
4189	Volkswagen	Golf	Diesel	Golf R-Line Tdi S-A	122	0
4190	Volkswagen	Golf	Petrol	Golf R-Line Tsi	128	0
4191	Volkswagen	Golf	Petrol	Golf R-Line Tsi Evo	134	0
4192	Volkswagen	Golf	Petrol	Golf R-Line Tsi Evo S-A	145	0
4193	Volkswagen	Golf	Diesel	Golf S Tdi	130	0
4194	Volkswagen	Golf	Petrol	Golf S Tsi	126	0
4195	Volkswagen	Golf	Diesel	Golf Se Navigation Tdi	129	0
4196	Volkswagen	Golf	Diesel	Golf Se Navigation Tdi S-A	141	0
4197	Volkswagen	Golf	Petrol	Golf Se Navigation Tsi Evo	137	0
4198	Volkswagen	Golf	Petrol	Golf Se Navigation Tsi Evo S-A	137	0
4199	Volkswagen	Golf	Petrol	Golf Se Tsi	130	0
4200	Volkswagen	Golf	Petrol	Golf Se Tsi Bmt S-A	141	0
4201	Volkswagen	Golf	Petrol	Golf Se Tsi Evo	137	0
4202	Volkswagen	Golf	Petrol	Golf Style Etsi S-A	134	0
4203	Volkswagen	Golf	Diesel	Golf Style Tdi	113	0
4204	Volkswagen	Golf	Diesel	Golf Style Tdi S-A	117	0
4205	Volkswagen	Golf	Petrol	Golf Style Tsi	124	0
4206	Volkswagen	Golf	Diesel	Golf Sv Gt Tdi	139	0
4207	Volkswagen	Golf	Diesel	Golf Sv Gt Tdi S-A	146	0
4208	Volkswagen	Golf	Petrol	Golf Sv Gt Tsi Evo	138	0
4209	Volkswagen	Golf	Petrol	Golf Sv Gt Tsi Evo S-A	151	0
4210	Volkswagen	Golf	Diesel	Golf Sv Match Tdi	134	0
4211	Volkswagen	Golf	Diesel	Golf Sv Match Tdi S-A	143	0
4212	Volkswagen	Golf	Petrol	Golf Sv Match Tsi Evo	131	0
4213	Volkswagen	Golf	Petrol	Golf Sv Match Tsi Evo S-A	147	0
4214	Volkswagen	Golf	Diesel	Golf Sv S Tdi	135	0
4215	Volkswagen	Golf	Petrol	Golf Sv S Tsi	132	0
4216	Volkswagen	Grand	Diesel	Grand California Tdi Auto	299	0
4217	Volkswagen	High Up	Petrol	High Up	125	0
4218	Volkswagen	Id3	Electric	Id3 1St Edition	0	157
4219	Volkswagen	Id3	Electric	Id3 Business	0	156
4220	Volkswagen	Id3	Electric	Id3 Family	0	157
4221	Volkswagen	Id3	Electric	Id3 Life	0	155
4222	Volkswagen	Id3	Electric	Id3 Max	0	158
4223	Volkswagen	Id3	Electric	Id3 Style	0	156
4224	Volkswagen	Id3	Electric	Id3 Tech	0	157
4225	Volkswagen	Move Up	Petrol	Move Up	125	0
4226	Volkswagen	Move Up	Petrol	Move Up Tech Edition	118	0
4227	Volkswagen	Passat	Diesel	Passat Alltrack Tdi 4Motion Sa	170	0
4228	Volkswagen	Passat	Hybrid	Passat Gte Advance S-A	33	167
4229	Volkswagen	Passat	Hybrid	Passat Gte S-A	31	164
4230	Volkswagen	Passat	Diesel	Passat R-Line Ed Tdi 4Mot S-A	199	0
4231	Volkswagen	Passat	Petrol	Passat R-Line Ed Tsi 4Mot S-A	192	0
4232	Volkswagen	Passat	Diesel	Passat R-Line Tdi	127	0
4233	Volkswagen	Passat	Diesel	Passat R-Line Tdi 4Motion S-A	199	0
4234	Volkswagen	Passat	Diesel	Passat R-Line Tdi S-A	141	0
4235	Volkswagen	Passat	Petrol	Passat R-Line Tsi 4Motion S-A	193	0
4236	Volkswagen	Passat	Petrol	Passat R-Line Tsi Evo	145	0
4237	Volkswagen	Passat	Petrol	Passat R-Line Tsi Evo S-A	154	0
4238	Volkswagen	Passat	Petrol	Passat R-Line Tsi S-A	172	0
4239	Volkswagen	Passat	Diesel	Passat Se Nav Tdi	128	0
4240	Volkswagen	Passat	Diesel	Passat Se Nav Tdi S-A	130	0
4241	Volkswagen	Passat	Petrol	Passat Se Nav Tsi Evo	141	0
4242	Volkswagen	Passat	Petrol	Passat Se Nav Tsi Evo S-A	144	0
4243	Volkswagen	Passat	Diesel	Passat Se Tdi	128	0
4244	Volkswagen	Passat	Diesel	Passat Se Tdi S-A	150	0
4245	Volkswagen	Passat	Petrol	Passat Se Tsi Evo	140	0
4246	Volkswagen	Passat	Petrol	Passat Se Tsi Evo S-A	150	0
4247	Volkswagen	Passat	Diesel	Passat Sel Tdi	129	0
4248	Volkswagen	Passat	Diesel	Passat Sel Tdi S-A	136	0
4249	Volkswagen	Passat	Petrol	Passat Sel Tsi Evo	140	0
4250	Volkswagen	Passat	Petrol	Passat Sel Tsi Evo S-A	150	0
4251	Volkswagen	Passat	Petrol	Passat Sel Tsi S-A	176	0
4252	Volkswagen	Polo	Petrol	Polo Beats Evo	126	0
4253	Volkswagen	Polo	Diesel	Polo Beats Tdi	133	0
4254	Volkswagen	Polo	Petrol	Polo Beats Tsi	129	0
4255	Volkswagen	Polo	Petrol	Polo Beats Tsi S-A	144	0
4256	Volkswagen	Polo	Petrol	Polo Gti Plus Tsi S-A	163	0
4257	Volkswagen	Polo	Petrol	Polo Gti Tsi S-A	159	0
4258	Volkswagen	Polo	Petrol	Polo Match Evo	125	0
4259	Volkswagen	Polo	Petrol	Polo Match Tsi	127	0
4260	Volkswagen	Polo	Petrol	Polo Match Tsi S-A	139	0
4261	Volkswagen	Polo	Petrol	Polo R-Line Tsi	130	0
4262	Volkswagen	Polo	Petrol	Polo R-Line Tsi S-A	140	0
4263	Volkswagen	Polo	Petrol	Polo S Evo	126	0
4264	Volkswagen	Polo	Petrol	Polo Se Evo	125	0
4265	Volkswagen	Polo	Diesel	Polo Se Tdi	129	0
4266	Volkswagen	Polo	Petrol	Polo Se Tech Edition Evo	130	0
4267	Volkswagen	Polo	Petrol	Polo Se Tsi	127	0
4268	Volkswagen	Polo	Petrol	Polo Se Tsi S-A	141	0
4269	Volkswagen	Polo	Diesel	Polo Sel Tdi	130	0
4270	Volkswagen	Polo	Petrol	Polo Sel Tsi	124	0
4271	Volkswagen	Polo	Petrol	Polo Sel Tsi S-A	136	0
4272	Volkswagen	Polo	Petrol	Polo United Evo	125	0
4273	Volkswagen	Polo	Petrol	Polo United Tsi	127	0
4274	Volkswagen	Polo	Petrol	Polo United Tsi S-A	128	0
4275	Volkswagen	Sharan	Diesel	Sharan S Tdi	166	0
4276	Volkswagen	Sharan	Diesel	Sharan S Tdi S-A	176	0
4277	Volkswagen	Sharan	Petrol	Sharan S Tsi	176	0
4278	Volkswagen	Sharan	Diesel	Sharan Se Navigation Tdi	169	0
4279	Volkswagen	Sharan	Diesel	Sharan Se Navigation Tdi S-A	179	0
4280	Volkswagen	Sharan	Petrol	Sharan Se Navigation Tsi	173	0
4281	Volkswagen	Sharan	Petrol	Sharan Se Navigation Tsi S-A	186	0
4282	Volkswagen	Sharan	Diesel	Sharan Se Tdi S-A	179	0
4283	Volkswagen	Sharan	Diesel	Sharan Sel Tdi	170	0
4284	Volkswagen	Sharan	Diesel	Sharan Sel Tdi S-A	180	0
4285	Volkswagen	T-Cross	Diesel	T-Cross R-Line Tdi	140	0
4286	Volkswagen	T-Cross	Diesel	T-Cross R-Line Tdi S-A	146	0
4287	Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi	140	0
4288	Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi Evo S-A	148	0
4289	Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi S-A	146	0
4290	Volkswagen	T-Cross	Petrol	T-Cross S Tsi	134	0
4291	Volkswagen	T-Cross	Diesel	T-Cross Se Tdi	140	0
4292	Volkswagen	T-Cross	Diesel	T-Cross Se Tdi S-A	143	0
4293	Volkswagen	T-Cross	Petrol	T-Cross Se Tsi	137	0
4294	Volkswagen	T-Cross	Petrol	T-Cross Se Tsi S-A	142	0
4295	Volkswagen	T-Cross	Diesel	T-Cross Sel Tdi	140	0
4296	Volkswagen	T-Cross	Diesel	T-Cross Sel Tdi S-A	145	0
4297	Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi	137	0
4298	Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi Evo S-A	146	0
4299	Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi S-A	143	0
4300	Volkswagen	T-Cross	Petrol	T-Cross United Tsi	137	0
4301	Volkswagen	T-Cross	Petrol	T-Cross United Tsi S-A	144	0
4302	Volkswagen	T-Roc	Diesel	T-Roc Black Edition Tdi Scr	146	0
4303	Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi	141	0
4304	Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi Evo	152	0
4305	Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi Evo Sa	154	0
4306	Volkswagen	T-Roc	Diesel	T-Roc Design Tdi	139	0
4307	Volkswagen	T-Roc	Diesel	T-Roc Design Tdi S-A	146	0
4308	Volkswagen	T-Roc	Petrol	T-Roc Design Tsi	135	0
4309	Volkswagen	T-Roc	Petrol	T-Roc Design Tsi Evo	146	0
4310	Volkswagen	T-Roc	Petrol	T-Roc Design Tsi Evo S-A	150	0
4311	Volkswagen	T-Roc	Petrol	T-Roc R Tsi 4Motion S-A	197	0
4312	Volkswagen	T-Roc	Diesel	T-Roc R-Line Tdi	146	0
4313	Volkswagen	T-Roc	Diesel	T-Roc R-Line Tdi S-A	153	0
4314	Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi 4Motion S-A	186	0
4315	Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi Evo	147	0
4316	Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi Evo S-A	154	0
4317	Volkswagen	T-Roc	Diesel	T-Roc S Tdi	139	0
4318	Volkswagen	T-Roc	Petrol	T-Roc S Tsi	134	0
4319	Volkswagen	T-Roc	Diesel	T-Roc Se Tdi	146	0
4320	Volkswagen	T-Roc	Diesel	T-Roc Se Tdi S-A	152	0
4321	Volkswagen	T-Roc	Petrol	T-Roc Se Tsi	134	0
4322	Volkswagen	T-Roc	Petrol	T-Roc Se Tsi Evo	140	0
4323	Volkswagen	T-Roc	Petrol	T-Roc Se Tsi Evo S-A	149	0
4324	Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi	147	0
4325	Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi 4Motion	160	0
4326	Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi S-A	153	0
4327	Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi	142	0
4328	Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi 4Motion S-A	186	0
4329	Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi Evo	147	0
4330	Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi Evo S-A	154	0
4331	Volkswagen	T-Roc	Petrol	T-Roc United Tsi	134	0
4332	Volkswagen	T-Roc	Petrol	T-Roc United Tsi Evo	144	0
4333	Volkswagen	T-Roc	Petrol	T-Roc United Tsi Evo S-A	147	0
4334	Volkswagen	Take Up	Petrol	Take Up	123	0
4335	Volkswagen	Tiguan	Diesel	Tiguan Allspace Match Tdi	163	0
4336	Volkswagen	Tiguan	Diesel	Tiguan Allspace Match Tdi S-A	166	0
4337	Volkswagen	Tiguan	Petrol	Tiguan Allspace Match Tsi Evo	165	0
4338	Volkswagen	Tiguan	Diesel	Tiguan Allspace R-Line Tdi	162	0
4339	Volkswagen	Tiguan	Diesel	Tiguan Allspace Rline Tech Tdi	165	0
4340	Volkswagen	Tiguan	Diesel	Tiguan Allspace Se Nav Tdi	160	0
4341	Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi	164	0
4342	Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi 4M S-A	192	0
4343	Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi S-A	167	0
4344	Volkswagen	Tiguan	Petrol	Tiguan Allspace Sel Tsi 4M S-A	208	0
4345	Volkswagen	Tiguan	Petrol	Tiguan Allspace Sel Tsi Evo Sa	175	0
4346	Volkswagen	Tiguan	Diesel	Tiguan Aspace Match Tdi 4M Sa	183	0
4347	Volkswagen	Tiguan	Petrol	Tiguan Aspace Match Tsi Evo Sa	172	0
4348	Volkswagen	Tiguan	Diesel	Tiguan Aspace R-Line Tdi 4M Sa	191	0
4349	Volkswagen	Tiguan	Diesel	Tiguan Aspace Rline Tec Tdi Sa	169	0
4350	Volkswagen	Tiguan	Diesel	Tiguan Aspace Rln Tec Tdi4M Sa	192	0
4351	Volkswagen	Tiguan	Petrol	Tiguan Aspace Rln Tec Tsi4M Sa	208	0
4352	Volkswagen	Tiguan	Diesel	Tiguan Aspace Se Nav Tdi 4M Sa	189	0
4353	Volkswagen	Tiguan	Petrol	Tiguan Aspce Rln Tch Tsievo Sa	175	0
4354	Volkswagen	Tiguan	Diesel	Tiguan Elegance Tdi 4Motion Sa	174	0
4355	Volkswagen	Tiguan	Diesel	Tiguan Elegance Tdi S-A	156	0
4356	Volkswagen	Tiguan	Petrol	Tiguan Elegance Tsi S-A	169	0
4357	Volkswagen	Tiguan	Diesel	Tiguan Life Tdi S-A	147	0
4358	Volkswagen	Tiguan	Petrol	Tiguan Life Tsi	151	0
4359	Volkswagen	Tiguan	Petrol	Tiguan Life Tsi S-A	159	0
4360	Volkswagen	Tiguan	Diesel	Tiguan Match Tdi	154	0
4361	Volkswagen	Tiguan	Diesel	Tiguan Match Tdi 4Motion	170	0
4362	Volkswagen	Tiguan	Diesel	Tiguan Match Tdi 4Motion S-A	177	0
4363	Volkswagen	Tiguan	Diesel	Tiguan Match Tdi S-A	160	0
4364	Volkswagen	Tiguan	Petrol	Tiguan Match Tsi Evo	159	0
4365	Volkswagen	Tiguan	Petrol	Tiguan Match Tsi Evo S-A	166	0
4366	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi	156	0
4367	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi 4Motion	176	0
4368	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi 4Motion S-A	169	0
4369	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi S-A	152	0
4370	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi	179	0
4371	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi 4M Sa	212	0
4372	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi 4Motion	187	0
4373	Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi S-A	163	0
4374	Volkswagen	Tiguan	Petrol	Tiguan R-Line Tech Tsi 4M Sa	204	0
4375	Volkswagen	Tiguan	Petrol	Tiguan R-Line Tech Tsi Evo S-A	169	0
4376	Volkswagen	Tiguan	Petrol	Tiguan R-Line Tsi Evo S-A	170.5	0
4377	Volkswagen	Tiguan	Petrol	Tiguan R-Line Tsi S-A	165	0
4378	Volkswagen	Tiguan	Diesel	Tiguan S Tdi	146	0
4379	Volkswagen	Tiguan	Diesel	Tiguan S Tdi 4Motion	163	0
4380	Volkswagen	Tiguan	Diesel	Tiguan S Tdi 4Motion S-A	167	0
4381	Volkswagen	Tiguan	Petrol	Tiguan S Tsi Evo	151	0
4382	Volkswagen	Tiguan	Diesel	Tiguan Se Navigation Tdi S-A	172	0
4383	Volkswagen	Tiguan	Diesel	Tiguan Se Tdi 4Motion	173	0
4384	Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi	179	0
4385	Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi 4Motion	156	0
4386	Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi 4Motion S-A	186	0
4387	Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi S-A	161	0
4388	Volkswagen	Tiguan	Petrol	Tiguan Sel Tsi 4Motion S-A	168	0
4389	Volkswagen	Tiguan	Diesel	Tiguan Sel Tsi Evo S-A	157	0
4390	Volkswagen	Tiguan	Petrol	Tiguan Tsi	143	0
4391	Volkswagen	Touareg	Diesel	Touareg V6 Black Edition Tdi A	220	0
4392	Volkswagen	Touareg	Petrol	Touareg V6 Black Edition Tsi A	244	0
4393	Volkswagen	Touareg	Diesel	Touareg V6 R-Line Tdi Auto	217	0
4394	Volkswagen	Touareg	Diesel	Touareg V6 R-Line Tech Tdi A	218	0
4395	Volkswagen	Touareg	Petrol	Touareg V6 R-Line Tech Tsi A	245	0
4396	Volkswagen	Touareg	Petrol	Touareg V6 R-Line Tsi Auto	242	0
4397	Volkswagen	Touareg	Diesel	Touareg V6 Se Tdi Auto	214	0
4398	Volkswagen	Touareg	Diesel	Touareg V6 Sel Tdi Auto	214	0
4399	Volkswagen	Touareg	Diesel	Touareg V6 Sel Tech Tdi Auto	215	0
4400	Volkswagen	Touareg	Petrol	Touareg V6 Sel Tech Tsi Auto	241	0
4401	Volkswagen	Touareg	Petrol	Touareg V6 Sel Tsi Auto	239	0
4402	Volkswagen	Touran	Petrol	Touran R Line Tsi	154	0
4403	Volkswagen	Touran	Petrol	Touran R Line Tsi S-A	160	0
4404	Volkswagen	Touran	Diesel	Touran R-Line Tdi	156	0
4405	Volkswagen	Touran	Diesel	Touran R-Line Tdi S-A	152	0
4406	Volkswagen	Touran	Petrol	Touran R-Line Tsi	156	0
4407	Volkswagen	Touran	Petrol	Touran R-Line Tsi S-A	154	0
4408	Volkswagen	Touran	Diesel	Touran S Tdi S-A	153.5	0
4409	Volkswagen	Touran	Petrol	Touran S Tsi	154	0
4410	Volkswagen	Touran	Diesel	Touran Se Family Tdi	147	0
4411	Volkswagen	Touran	Diesel	Touran Se Family Tdi S-A	155	0
4412	Volkswagen	Touran	Petrol	Touran Se Family Tsi	161	0
4413	Volkswagen	Touran	Petrol	Touran Se Family Tsi S-A	156	0
4414	Volkswagen	Touran	Diesel	Touran Se Tdi	146	0
4415	Volkswagen	Touran	Diesel	Touran Se Tdi S-A	154	0
4416	Volkswagen	Touran	Petrol	Touran Se Tsi	160	0
4417	Volkswagen	Touran	Petrol	Touran Se Tsi S-A	155	0
4418	Volkswagen	Touran	Diesel	Touran Sel Tdi	143	0
4419	Volkswagen	Touran	Diesel	Touran Sel Tdi S-A	145	0
4420	Volkswagen	Touran	Petrol	Touran Sel Tsi	148	0
4421	Volkswagen	Touran	Petrol	Touran Sel Tsi S-A	153	0
4422	Volkswagen	Tporter	Petrol	Tporter T30 S-Line Tdi Bmt A	137	0
4423	Volkswagen	Transporter	Diesel	Transporter S Tdi	199	0
4424	Volkswagen	Transporter	Diesel	Transporter S Tdi S-A	218	0
4425	Volkswagen	Transporter	Diesel	Transporter Se Tdi	200	0
4426	Volkswagen	Transporter	Diesel	Transporter Se Tdi S-A	218	0
4427	Volkswagen	Transporter	Diesel	Transporter T28 Highline Tdi	188	0
4428	Volkswagen	Transporter	Diesel	Transporter T30 Highline Tdi	202	0
4429	Volkswagen	Transporter	Petrol	Transporter T30 St-Ln Tdi Bmt	151	0
4430	Volkswagen	Transporter	Diesel	Transporter T30 Startline Tdi	193	0
4431	Volkswagen	Transporter	Diesel	Transporter T30 Tdi Bmt	241.5	0
4432	Volkswagen	Transporter	Diesel	Transporter T30 Tdi Bmt S-A	194	0
4433	Volkswagen	Transporter	Diesel	Transporter T30 Window Tdi Bmt	184	0
4434	Volkswagen	Transporter	Diesel	Transporter T32 Highline Tdi	198.5	0
4435	Volkswagen	Transporter	Diesel	Transporter T32 S Tdi Bmt	198	0
4436	Volkswagen	Transporter	Diesel	Transporter T32 S Tdi Bmt S-A	225.5	0
4437	Volkswagen	Transporter	Diesel	Transporter T32 Se Tdi Bmt	199	0
4438	Volkswagen	Transporter	Diesel	Transporter T32 Se Tdi Bmt S-A	225	0
4439	Volkswagen	Transporter	Diesel	Transporter T32 Sportline Tdia	219	0
4440	Volkswagen	Transporter	Diesel	Transporter T32 St-Line Tdi Sa	207	0
4441	Volkswagen	Transporter	Diesel	Transporter T32 Startline Tdi	204	0
4442	Volkswagen	Up	Petrol	Up	125	0
4443	Volkswagen	Up	Petrol	Up Beats	125	0
4444	Volkswagen	Up	Petrol	Up Black Edition	127	0
4445	Volkswagen	Up	Petrol	Up By Beats	125	0
4446	Volkswagen	Up	Petrol	Up By Beats Tsi	116	0
4447	Volkswagen	Up	Petrol	Up Gti	121	0
4448	Volkswagen	Up	Petrol	Up R-Line	126	0
4449	Volkswagen	Up	Petrol	Up White Edition	127	0
4450	Volvo	S60	Petrol	S60 Inscription + T5 Auto	169	0
4451	Volvo	S60	Petrol	S60 Inscription B5 Mhev Auto	155	0
4452	Volvo	S60	Hybrid	S60 P-Star Engrd T8 Phev Awd A	61	172
4453	Volvo	S60	Hybrid	S60 P-Star Engrd T8Rchrg Awd A	47.5	175
4454	Volvo	S60	Petrol	S60 R-Design + T5 Auto	168	0
4455	Volvo	S60	Hybrid	S60 R-Design + T8 Phev Awd A	43	148
4456	Volvo	S60	Petrol	S60 R-Design B5 Mhev Auto	154	0
4457	Volvo	S60	Hybrid	S60 R-Design T8 Recharge Awd A	41	140
4458	Volvo	S90	Petrol	S90 B6 Mhev Awd Auto	179	0
4459	Volvo	S90	Diesel	S90 Incription + D5 Awd Auto	171	0
4460	Volvo	S90	Diesel	S90 Inscription + D4 Auto	150	0
4461	Volvo	S90	Petrol	S90 Inscription + T4 Auto	170	0
4462	Volvo	S90	Petrol	S90 Inscription + T5 Auto	172	0
4463	Volvo	S90	Hybrid	S90 Inscription + T8 Phev A A	43	152
4464	Volvo	S90	Hybrid	S90 Inscription T8 Rchrg Awd A	44	154
4465	Volvo	S90	Diesel	S90 Momentum + D4 Auto	149	0
4466	Volvo	S90	Petrol	S90 Momentum + T4 Auto	169	0
4467	Volvo	S90	Diesel	S90 R-Design + D4 Auto	148	0
4468	Volvo	S90	Diesel	S90 R-Design + D5 Awd Auto	170	0
4469	Volvo	S90	Petrol	S90 R-Design + T4 Auto	169	0
4470	Volvo	S90	Petrol	S90 R-Design + T5 Auto	171	0
4471	Volvo	S90	Hybrid	S90 R-Design + T8 Phev Awd A	42	152
4472	Volvo	S90	Hybrid	S90 R-Design T8 Recharge Awd A	44	154
4473	Volvo	V60	Petrol	V60 B5 Mhev Auto	190	0
4474	Volvo	V60	Diesel	V60 C-Country B4 Mhev Awd Auto	157	0
4475	Volvo	V60	Petrol	V60 C-Country B5 Mhev Awd Auto	172	0
4476	Volvo	V60	Diesel	V60 Cross Country + D4 Awd A	158	0
4477	Volvo	V60	Petrol	V60 Cross Country + T5 Awd A	186	0
4478	Volvo	V60	Diesel	V60 Cross Country D4 Awd Auto	160	0
4479	Volvo	V60	Diesel	V60 Inscription + D3	141	0
4480	Volvo	V60	Diesel	V60 Inscription + D3 Auto	151	0
4481	Volvo	V60	Diesel	V60 Inscription + D4	142	0
4482	Volvo	V60	Diesel	V60 Inscription + D4 Auto	150	0
4483	Volvo	V60	Petrol	V60 Inscription + T4 Auto	174	0
4484	Volvo	V60	Petrol	V60 Inscription + T5 Auto	173	0
4485	Volvo	V60	Petrol	V60 Inscription B3 Mhev Auto	156	0
4486	Volvo	V60	Petrol	V60 Inscription B4 Mhev Auto	154	0
4487	Volvo	V60	Petrol	V60 Inscription B5 Mhev Auto	160	0
4488	Volvo	V60	Diesel	V60 Inscription D4 Auto	147.5	0
4489	Volvo	V60	Petrol	V60 Inscription T5 Auto	176	0
4490	Volvo	V60	Hybrid	V60 Inscription T6 Rchrg Awd A	42	168
4491	Volvo	V60	Diesel	V60 Momentum + D3	141	0
4492	Volvo	V60	Diesel	V60 Momentum + D3 Auto	150	0
4493	Volvo	V60	Diesel	V60 Momentum + D4	141	0
4494	Volvo	V60	Diesel	V60 Momentum + D4 Auto	149	0
4495	Volvo	V60	Petrol	V60 Momentum + T4 Auto	173	0
4496	Volvo	V60	Petrol	V60 Momentum + T5 Auto	173	0
4497	Volvo	V60	Petrol	V60 Momentum B3 Mhev Auto	155	0
4498	Volvo	V60	Petrol	V60 Momentum B4 Mhev Auto	153	0
4499	Volvo	V60	Petrol	V60 Momentum B5 Mhev Auto	159	0
4500	Volvo	V60	Diesel	V60 Momentum D3	137	0
4501	Volvo	V60	Diesel	V60 Momentum D3 Auto	147	0
4502	Volvo	V60	Diesel	V60 Momentum D4 Auto	145	0
4503	Volvo	V60	Diesel	V60 Momentum Pro D3 Auto	147	0
4504	Volvo	V60	Petrol	V60 Momentum Pro T5 Auto	176	0
4505	Volvo	V60	Hybrid	V60 P-Star Engrd T8 Phev Awd A	61	172
4506	Volvo	V60	Hybrid	V60 P-Star Engrd T8Rchrg Awd A	50	178
4507	Volvo	V60	Diesel	V60 R-Design + D3	142	0
4508	Volvo	V60	Diesel	V60 R-Design + D3 Auto	151	0
4509	Volvo	V60	Diesel	V60 R-Design + D4	142	0
4510	Volvo	V60	Diesel	V60 R-Design + D4 Auto	149	0
4511	Volvo	V60	Petrol	V60 R-Design + T4 Auto	174	0
4512	Volvo	V60	Petrol	V60 R-Design + T5 Auto	175	0
4513	Volvo	V60	Hybrid	V60 R-Design + T8 Phev Awd A	46	165
4514	Volvo	V60	Petrol	V60 R-Design B3 Mhev Auto	157	0
4515	Volvo	V60	Petrol	V60 R-Design B4 Mhev Auto	154	0
4516	Volvo	V60	Petrol	V60 R-Design B5 Mhev Auto	160	0
4517	Volvo	V60	Petrol	V60 R-Design B6 Mhev Awd Auto	180	0
4518	Volvo	V60	Diesel	V60 R-Design D3 Auto	150	0
4519	Volvo	V60	Diesel	V60 R-Design D4	142	0
4520	Volvo	V60	Diesel	V60 R-Design D4 Auto	149	0
4521	Volvo	V60	Petrol	V60 R-Design T6 Awd Auto	195	0
4522	Volvo	V60	Hybrid	V60 R-Design T6 Recharge Awd A	42	168
4523	Volvo	V60	Diesel	V60 Se Lux Nav D3	178	0
4524	Volvo	V90	Petrol	V90 B6 Mhev Awd Auto	183	0
4525	Volvo	V90	Diesel	V90 C-Country B4 Mhev Awd A	166	0
4526	Volvo	V90	Diesel	V90 C-Country B5 Mhev Awd A	171	0
4527	Volvo	V90	Petrol	V90 C-Country B5 Mhev Awd Auto	177	0
4528	Volvo	V90	Petrol	V90 C-Country B6 Mhev Awd Auto	189	0
4529	Volvo	V90	Diesel	V90 Cross Country + D4 Awd A	177	0
4530	Volvo	V90	Diesel	V90 Cross Country + D5 Awd A	188	0
4531	Volvo	V90	Petrol	V90 Cross Country + T5 Awd A	202	0
4532	Volvo	V90	Petrol	V90 Cross Country + T6 Awd A	202	0
4533	Volvo	V90	Diesel	V90 Cross Country D4 Awd Auto	171.5	0
4534	Volvo	V90	Diesel	V90 Cross Country D5 Awd Auto	185	0
4535	Volvo	V90	Petrol	V90 Cross Country T6 Awd Auto	198	0
4536	Volvo	V90	Diesel	V90 Cross Country+ D5 Pp Awd A	185	0
4537	Volvo	V90	Diesel	V90 D5 Awd Auto	179	0
4538	Volvo	V90	Diesel	V90 D5 Powerpulse Awd Auto	179	0
4539	Volvo	V90	Diesel	V90 Inscription + D4 Auto	156	0
4540	Volvo	V90	Diesel	V90 Inscription + D5 Awd Auto	177	0
4541	Volvo	V90	Diesel	V90 Inscription + D5 Pp Awd A	184	0
4542	Volvo	V90	Petrol	V90 Inscription + T4 Auto	175	0
4543	Volvo	V90	Petrol	V90 Inscription + T5 Auto	179	0
4544	Volvo	V90	Hybrid	V90 Inscription + T8 Phev A A	46	158
4545	Volvo	V90	Diesel	V90 Inscription B4 Mhev Auto	161	0
4546	Volvo	V90	Petrol	V90 Inscription B5 Mhev Auto	162	0
4547	Volvo	V90	Diesel	V90 Inscription B5 Mhev Awd A	161	0
4548	Volvo	V90	Diesel	V90 Inscription D4 Auto	156	0
4549	Volvo	V90	Diesel	V90 Inscription D5 Awd Auto	177.5	0
4550	Volvo	V90	Diesel	V90 Inscription Pro D4 Auto	164	0
4551	Volvo	V90	Diesel	V90 Inscription Pro D5Pp Awd A	183	0
4552	Volvo	V90	Hybrid	V90 Inscription T6 Rchrg Awd A	49	158
4553	Volvo	V90	Diesel	V90 Momentum + D4 Auto	156	0
4554	Volvo	V90	Petrol	V90 Momentum + T4 Auto	175	0
4555	Volvo	V90	Petrol	V90 Momentum B4 Mhev Auto	158	0
4556	Volvo	V90	Diesel	V90 Momentum D4 Auto	154	0
4557	Volvo	V90	Diesel	V90 R-Design + D4 Auto	154	0
4558	Volvo	V90	Diesel	V90 R-Design + D5 Awd Auto	176	0
4559	Volvo	V90	Petrol	V90 R-Design + T4 Auto	173	0
4560	Volvo	V90	Petrol	V90 R-Design + T5 Auto	177	0
4561	Volvo	V90	Petrol	V90 R-Design + T6 Awd Auto	203	0
4562	Volvo	V90	Hybrid	V90 R-Design + T8 Phev Awd A	46	158
4563	Volvo	V90	Petrol	V90 R-Design B4 Mhev Auto	158	0
4564	Volvo	V90	Petrol	V90 R-Design B5 Mhev Auto	161	0
4565	Volvo	V90	Diesel	V90 R-Design B5 Mhev Awd Auto	157	0
4566	Volvo	V90	Petrol	V90 R-Design B6 Mhev Awd Auto	181.5	0
4567	Volvo	V90	Diesel	V90 R-Design D4 Auto	154	0
4568	Volvo	V90	Diesel	V90 R-Design D5 Awd Auto	176	0
4569	Volvo	V90	Diesel	V90 R-Design Pro D5 Pp Awd A	182	0
4570	Volvo	V90	Hybrid	V90 R-Design T6 Recharge Awd A	47	158
4571	Volvo	V90	Diesel	V90 R-Design+ D5 P-Pulse Awd A	183	0
4572	Volvo	V90	Petrol	V90 T6 Awd Auto	205	0
4573	Volvo	Xc40	Hybrid	Xc40 Inscript Pro T5 Rcharge A	48	159
4574	Volvo	Xc40	Petrol	Xc40 Inscription B4 Mhev Auto	163	0
4575	Volvo	Xc40	Petrol	Xc40 Inscription B4 Mhev Awd A	175	0
4576	Volvo	Xc40	Petrol	Xc40 Inscription B5 Mhev Awd A	175	0
4577	Volvo	Xc40	Diesel	Xc40 Inscription D3	144	0
4578	Volvo	Xc40	Diesel	Xc40 Inscription D3 Auto	157	0
4579	Volvo	Xc40	Diesel	Xc40 Inscription D3 Awd Auto	166	0
4580	Volvo	Xc40	Diesel	Xc40 Inscription D4 Awd Auto	167	0
4581	Volvo	Xc40	Hybrid	Xc40 Inscription Exp T4Rchrg A	47	159
4582	Volvo	Xc40	Petrol	Xc40 Inscription Pro B4 Mhev A	162	0
4583	Volvo	Xc40	Diesel	Xc40 Inscription Pro D3	144	0
4584	Volvo	Xc40	Diesel	Xc40 Inscription Pro D3 Auto	157	0
4585	Volvo	Xc40	Diesel	Xc40 Inscription Pro D3 Awd A	166	0
4586	Volvo	Xc40	Diesel	Xc40 Inscription Pro D4 Awd A	169	0
4587	Volvo	Xc40	Petrol	Xc40 Inscription Pro T3	159	0
4588	Volvo	Xc40	Petrol	Xc40 Inscription Pro T3 Auto	166	0
4589	Volvo	Xc40	Petrol	Xc40 Inscription Pro T4 Auto	174	0
4590	Volvo	Xc40	Petrol	Xc40 Inscription Pro T4 Awd A	183	0
4591	Volvo	Xc40	Petrol	Xc40 Inscription Pro T5 Awd A	192	0
4592	Volvo	Xc40	Hybrid	Xc40 Inscription Pro T5 Phev A	48	159
4593	Volvo	Xc40	Petrol	Xc40 Inscription T3	159	0
4594	Volvo	Xc40	Petrol	Xc40 Inscription T3 Auto	166	0
4595	Volvo	Xc40	Petrol	Xc40 Inscription T4 Auto	174	0
4596	Volvo	Xc40	Petrol	Xc40 Inscription T4 Awd Auto	182	0
4597	Volvo	Xc40	Hybrid	Xc40 Inscription T4 Recharge A	48	159
4598	Volvo	Xc40	Petrol	Xc40 Inscription T5 Awd Auto	192	0
4599	Volvo	Xc40	Hybrid	Xc40 Inscription T5 Phev Auto	48	159
4600	Volvo	Xc40	Hybrid	Xc40 Inscription T5 Recharge A	48	159
4601	Volvo	Xc40	Petrol	Xc40 Inscrpt Pro B4 Mhev Awd A	175	0
4602	Volvo	Xc40	Petrol	Xc40 Inscrpt Pro B5 Mhev Awd A	175	0
4603	Volvo	Xc40	Petrol	Xc40 Momentum B4 Mhev Auto	162	0
4604	Volvo	Xc40	Petrol	Xc40 Momentum B4 Mhev Awd Auto	175	0
4605	Volvo	Xc40	Petrol	Xc40 Momentum Core T2	158	0
4606	Volvo	Xc40	Diesel	Xc40 Momentum D3	143	0
4607	Volvo	Xc40	Diesel	Xc40 Momentum D3 Auto	156	0
4608	Volvo	Xc40	Diesel	Xc40 Momentum D3 Awd Auto	165	0
4609	Volvo	Xc40	Diesel	Xc40 Momentum Pro D3	144	0
4610	Volvo	Xc40	Diesel	Xc40 Momentum Pro D3 Auto	157	0
4611	Volvo	Xc40	Diesel	Xc40 Momentum Pro D3 Awd Auto	165	0
4612	Volvo	Xc40	Petrol	Xc40 Momentum Pro T3	159	0
4613	Volvo	Xc40	Petrol	Xc40 Momentum Pro T3 Auto	167	0
4614	Volvo	Xc40	Petrol	Xc40 Momentum Pro T4 Auto	174	0
4615	Volvo	Xc40	Petrol	Xc40 Momentum Pro T4 Awd Auto	182	0
4616	Volvo	Xc40	Petrol	Xc40 Momentum T3	158	0
4617	Volvo	Xc40	Petrol	Xc40 Momentum T3 Auto	165	0
4618	Volvo	Xc40	Petrol	Xc40 Momentum T4 Auto	174	0
4619	Volvo	Xc40	Petrol	Xc40 Momentum T4 Awd Auto	182	0
4620	Volvo	Xc40	Petrol	Xc40 R-Design B4 Mhev Auto	163	0
4621	Volvo	Xc40	Petrol	Xc40 R-Design B4 Mhev Awd Auto	175	0
4622	Volvo	Xc40	Petrol	Xc40 R-Design B5 Mhev Awd Auto	176	0
4623	Volvo	Xc40	Diesel	Xc40 R-Design D3	144	0
4624	Volvo	Xc40	Diesel	Xc40 R-Design D3 Auto	157	0
4625	Volvo	Xc40	Diesel	Xc40 R-Design D3 Awd Auto	166	0
4626	Volvo	Xc40	Diesel	Xc40 R-Design D4 Awd Auto	168	0
4627	Volvo	Xc40	Petrol	Xc40 R-Design Pro B4 Mhev Auto	165	0
4628	Volvo	Xc40	Diesel	Xc40 R-Design Pro D3	146	0
4629	Volvo	Xc40	Diesel	Xc40 R-Design Pro D3 Auto	159	0
4630	Volvo	Xc40	Diesel	Xc40 R-Design Pro D3 Awd Auto	168	0
4631	Volvo	Xc40	Diesel	Xc40 R-Design Pro D4 Awd Auto	171	0
4632	Volvo	Xc40	Petrol	Xc40 R-Design Pro T2	164	0
4633	Volvo	Xc40	Petrol	Xc40 R-Design Pro T3	162	0
4634	Volvo	Xc40	Petrol	Xc40 R-Design Pro T3 Auto	169	0
4635	Volvo	Xc40	Petrol	Xc40 R-Design Pro T4 Auto	176	0
4636	Volvo	Xc40	Petrol	Xc40 R-Design Pro T4 Awd Auto	185	0
4637	Volvo	Xc40	Petrol	Xc40 R-Design Pro T5 Awd Auto	195	0
4638	Volvo	Xc40	Hybrid	Xc40 R-Design Pro T5 Phev Auto	49	157
4639	Volvo	Xc40	Petrol	Xc40 R-Design T3	159	0
4640	Volvo	Xc40	Petrol	Xc40 R-Design T3 Auto	166	0
4641	Volvo	Xc40	Petrol	Xc40 R-Design T4 Auto	174	0
4642	Volvo	Xc40	Petrol	Xc40 R-Design T4 Awd Auto	182	0
4643	Volvo	Xc40	Hybrid	Xc40 R-Design T4 Recharge Auto	48	159
4644	Volvo	Xc40	Petrol	Xc40 R-Design T5 Awd Auto	193	0
4645	Volvo	Xc40	Hybrid	Xc40 R-Design T5 Phev Auto	48	159
4646	Volvo	Xc40	Hybrid	Xc40 R-Design T5 Recharge Auto	48	159
4647	Volvo	Xc40	Petrol	Xc40 Rdesign Pro B4 Mhev Awd A	178	0
4648	Volvo	Xc40	Petrol	Xc40 Rdesign Pro B5 Mhev Awd A	178	0
4649	Volvo	Xc40	Hybrid	Xc40 Rdesign Pro T5 Recharge A	50	157
4650	Volvo	Xc60	Petrol	Xc60 Edition T4 Auto	195	0
4651	Volvo	Xc60	Hybrid	Xc60 Inscript T6 Rcharge Awd A	56	163
4652	Volvo	Xc60	Diesel	Xc60 Inscription B4 Awd Auto	164	0
4653	Volvo	Xc60	Diesel	Xc60 Inscription B4 Mhev Auto	162	0
4654	Volvo	Xc60	Diesel	Xc60 Inscription B4 Mhev Awd A	168	0
4655	Volvo	Xc60	Diesel	Xc60 Inscription B5 Awd Auto	169	0
4656	Volvo	Xc60	Diesel	Xc60 Inscription B5 Mhev Auto	172	0
4657	Volvo	Xc60	Diesel	Xc60 Inscription B5 Mhev Awd A	181	0
4658	Volvo	Xc60	Diesel	Xc60 Inscription D4 Auto	159	0
4659	Volvo	Xc60	Diesel	Xc60 Inscription D4 Awd Auto	187	0
4660	Volvo	Xc60	Diesel	Xc60 Inscription Pro B4 Awd A	171	0
4661	Volvo	Xc60	Diesel	Xc60 Inscription Pro B4 Mhev A	165	0
4662	Volvo	Xc60	Diesel	Xc60 Inscription Pro B5 Awd A	170	0
4663	Volvo	Xc60	Diesel	Xc60 Inscription Pro B5 Mhev A	181	0
4664	Volvo	Xc60	Petrol	Xc60 Inscription Pro T5 Awd A	203	0
4665	Volvo	Xc60	Petrol	Xc60 Inscription T5 Auto	191	0
4666	Volvo	Xc60	Petrol	Xc60 Inscription T5 Awd Auto	199	0
4667	Volvo	Xc60	Hybrid	Xc60 Inscription T8 Phev Awd A	54	160
4668	Volvo	Xc60	Hybrid	Xc60 Inscrp Pro T8Rechrg Awd A	56	163
4669	Volvo	Xc60	Hybrid	Xc60 Inscrpt Exp T6Rchrg Awd A	55	163
4670	Volvo	Xc60	Diesel	Xc60 Inscrpt Pro B4 Mhev Awd A	170	0
4671	Volvo	Xc60	Diesel	Xc60 Inscrpt Pro B5 Mhev Awd A	188	0
4672	Volvo	Xc60	Hybrid	Xc60 Inscrpt Pro T8 Phev Awd A	56	164
4673	Volvo	Xc60	Diesel	Xc60 Momentum B4 Awd Auto	162	0
4674	Volvo	Xc60	Diesel	Xc60 Momentum B4 Mhev Auto	162	0
4675	Volvo	Xc60	Diesel	Xc60 Momentum B4 Mhev Awd Auto	167	0
4676	Volvo	Xc60	Diesel	Xc60 Momentum B5 Mhev Auto	170	0
4677	Volvo	Xc60	Petrol	Xc60 Momentum B5 Mhev Awd Auto	179	0
4678	Volvo	Xc60	Diesel	Xc60 Momentum D4 Auto	157	0
4679	Volvo	Xc60	Diesel	Xc60 Momentum Pro B4 Awd Auto	163	0
4680	Volvo	Xc60	Diesel	Xc60 Momentum Pro B5 Mhev Auto	175	0
4681	Volvo	Xc60	Diesel	Xc60 Momentum Pro B5Mhev Awd A	184	0
4682	Volvo	Xc60	Diesel	Xc60 Momentum Pro D4 Auto	158	0
4683	Volvo	Xc60	Petrol	Xc60 Momentum Pro T5 Auto	192	0
4684	Volvo	Xc60	Petrol	Xc60 Momentum Pro T5 Awd Auto	198	0
4685	Volvo	Xc60	Petrol	Xc60 Momentum T5 Auto	190	0
4686	Volvo	Xc60	Petrol	Xc60 Momentum T5 Awd Auto	197	0
4687	Volvo	Xc60	Hybrid	Xc60 P-Str Engrd T8Rchrg Awd A	73	187
4688	Volvo	Xc60	Hybrid	Xc60 Pstar Engrd T8 Phev Awd A	73	181
4689	Volvo	Xc60	Diesel	Xc60 R-Design B4 Awd Auto	163	0
4690	Volvo	Xc60	Diesel	Xc60 R-Design B4 Mhev Auto	163	0
4691	Volvo	Xc60	Diesel	Xc60 R-Design B4 Mhev Awd Auto	168	0
4692	Volvo	Xc60	Diesel	Xc60 R-Design B5 Awd Auto	164	0
4693	Volvo	Xc60	Diesel	Xc60 R-Design B5 Mhev Auto	172	0
4694	Volvo	Xc60	Diesel	Xc60 R-Design B5 Mhev Awd Auto	183	0
4695	Volvo	Xc60	Diesel	Xc60 R-Design B6 Mhev Awd Auto	201.5	0
4696	Volvo	Xc60	Diesel	Xc60 R-Design D4 Auto	158	0
4697	Volvo	Xc60	Diesel	Xc60 R-Design Pro B4 Awd Auto	175	0
4698	Volvo	Xc60	Diesel	Xc60 R-Design Pro B5 Awd Auto	176	0
4699	Volvo	Xc60	Diesel	Xc60 R-Design Pro B5 Mhev Auto	187	0
4700	Volvo	Xc60	Diesel	Xc60 R-Design Pro B6Mhev Awd A	206	0
4701	Volvo	Xc60	Petrol	Xc60 R-Design Pro T5 Auto	199	0
4702	Volvo	Xc60	Petrol	Xc60 R-Design Pro T5 Awd Auto	209	0
4703	Volvo	Xc60	Petrol	Xc60 R-Design Pro T6 Awd Auto	222	0
4704	Volvo	Xc60	Petrol	Xc60 R-Design T5 Auto	190	0
4705	Volvo	Xc60	Petrol	Xc60 R-Design T5 Awd Auto	198	0
4706	Volvo	Xc60	Petrol	Xc60 R-Design T6 Awd Auto	217	0
4707	Volvo	Xc60	Hybrid	Xc60 R-Design T6 Rcharg Awd A	56	163
4708	Volvo	Xc60	Hybrid	Xc60 R-Design T8 Phev Awd Auto	54	160
4709	Volvo	Xc60	Hybrid	Xc60 Rdesgn Pro T8 Rchrg Awd A	59	172
4710	Volvo	Xc60	Diesel	Xc60 Rdesign Pro B4 Mhev Awd A	176	0
4711	Volvo	Xc60	Petrol	Xc60 Rdesign Pro B5 Mhev Awd A	187	0
4712	Volvo	Xc60	Hybrid	Xc60 Rdesign Pro T8 Phev Awd A	60	170
4713	Volvo	Xc90	Diesel	Xc90 B5 Awd Auto	182	0
4714	Volvo	Xc90	Diesel	Xc90 B5 Mhev Awd Auto	183	0
4715	Volvo	Xc90	Petrol	Xc90 B6 Mhev Awd Auto	208	0
4716	Volvo	Xc90	Hybrid	Xc90 Inscript Pro T8 Phev A A	73	218
4717	Volvo	Xc90	Diesel	Xc90 Inscription B5 Awd Auto	179	0
4718	Volvo	Xc90	Diesel	Xc90 Inscription B5 Mhev Awd A	198	0
4719	Volvo	Xc90	Diesel	Xc90 Inscription B6 Mhev Awd A	214	0
4720	Volvo	Xc90	Diesel	Xc90 Inscription Pro B5 Awd A	186	0
4721	Volvo	Xc90	Petrol	Xc90 Inscription Pro T5 Awd A	230	0
4722	Volvo	Xc90	Petrol	Xc90 Inscription Pro T6 Awd A	237	0
4723	Volvo	Xc90	Petrol	Xc90 Inscription T5 Awd Auto	221	0
4724	Volvo	Xc90	Petrol	Xc90 Inscription T6 Awd Auto	229	0
4725	Volvo	Xc90	Hybrid	Xc90 Inscription T8 Phev Awd A	67	194
4726	Volvo	Xc90	Hybrid	Xc90 Inscrp Pro T8Rchrge Awd A	69	194
4727	Volvo	Xc90	Diesel	Xc90 Inscrpt Pro B5 Mhev Awd A	213	0
4728	Volvo	Xc90	Diesel	Xc90 Inscrpt Pro B6 Mhev Awd A	221	0
4729	Volvo	Xc90	Hybrid	Xc90 Inscrpt T8 Rcharge Awd A	64	163
4730	Volvo	Xc90	Diesel	Xc90 Momentum B5 Awd Auto	175	0
4731	Volvo	Xc90	Petrol	Xc90 Momentum B5 Mhev Awd Auto	202	0
4732	Volvo	Xc90	Diesel	Xc90 Momentum Pro B5 Awd Auto	176	0
4733	Volvo	Xc90	Diesel	Xc90 Momentum Pro B5Mhev Awd A	204	0
4734	Volvo	Xc90	Petrol	Xc90 Momentum Pro T5 Awd Auto	215	0
4735	Volvo	Xc90	Petrol	Xc90 Momentum T5 Awd Auto	215	0
4736	Volvo	Xc90	Hybrid	Xc90 Momentum T8 Phev Awd Auto	64	0
4737	Volvo	Xc90	Hybrid	Xc90 Momentum T8 Rchrg Awd A	61	163
4738	Volvo	Xc90	Diesel	Xc90 R-Design B5 Awd Auto	179	0
4739	Volvo	Xc90	Petrol	Xc90 R-Design B5 Mhev Awd Auto	207	0
4740	Volvo	Xc90	Diesel	Xc90 R-Design B6 Mhev Awd Auto	215	0
4741	Volvo	Xc90	Diesel	Xc90 R-Design D5 P-Pulse Awd A	214	0
4742	Volvo	Xc90	Diesel	Xc90 R-Design Pro B5 Awd Auto	187	0
4743	Volvo	Xc90	Diesel	Xc90 R-Design Pro B6Mhev Awd A	223	0
4744	Volvo	Xc90	Petrol	Xc90 R-Design Pro T5 Awd Auto	230	0
4745	Volvo	Xc90	Petrol	Xc90 R-Design Pro T6 Awd Auto	238	0
4746	Volvo	Xc90	Petrol	Xc90 R-Design T5 Awd Auto	224	0
4747	Volvo	Xc90	Petrol	Xc90 R-Design T6 Awd Auto	230	0
4748	Volvo	Xc90	Hybrid	Xc90 R-Design T8 Phev Awd Auto	67	194
4749	Volvo	Xc90	Hybrid	Xc90 R-Design T8 Rcharge Awd A	64	163
4750	Volvo	Xc90	Hybrid	Xc90 Rdesgn Pro T8 Rchrg Awd A	70	161
4751	Volvo	Xc90	Diesel	Xc90 Rdesign Pro B5 Mhev Awd A	215	0
4752	Volvo	Xc90	Hybrid	Xc90 Rdesign Pro T8 Phev Awd A	74	218
4753	Volvo	Xc90	Petrol	Xc90 T6 Awd Auto	234	0
4754	Land Rover	Range Rover	Diesel	NaN	184	0
4755	Land Rover	Discovery	Diesel	NaN	192	0
4756	Land Rover	Range Rover	Petrol	NaN	216	0
4757	Jaguar	E-Pace	Diesel	NaN	195	0
4758	Jaguar	I-Pace	Electric	NaN	0	228
4759	Land Rover	Range Rover	Hybrid	NaN	77	208
4760	Land Rover	Discovery	Petrol	NaN	217	0
4761	Land Rover	Defender	Diesel	NaN	239	0
4762	Jaguar	XJ	Diesel	NaN	197	0
4763	Jaguar	F-Pace	Diesel	NaN	187	0
4764	Jaguar	XE	Diesel	NaN	149	0
4765	Jaguar	E-Pace	Petrol	NaN	219	0
4766	Jaguar	F-Type	Petrol	NaN	230	0
4767	Jaguar	XF	Diesel	NaN	156	0
4768	Jaguar	XE	Petrol	NaN	183	0
4769	Jaguar	XF	Petrol	NaN	194	0
4770	Jaguar	F-Pace	Petrol	NaN	221	0
4771	Land Rover	Discovery	Hybrid	NaN	44	167
4772	Land Rover	Defender	Petrol	NaN	265	0
\.


--
-- Data for Name: grouped_car_models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grouped_car_models (manufacturer, make, fuel, version) FROM stdin;
Vauxhall	Crossland	Petrol	Crossland X Griffin
Audi	A4	Petrol	A4 S Line Black Ed Nav Tdi
Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet
Skoda	Scala	Diesel	Scala Se Tdi
Jeep	Compass	Petrol	Compass Limited + M-Air Ii A
Mercedes	E-class	Diesel	E 220 D Amg Line 4Matic Auto
Volkswagen	Transporter	Petrol	Transporter T30 St-Ln Tdi Bmt
Nissan	Leaf	Electric	Leaf N-Connecta
Audi	A7	Diesel	A7 S Line Exc 40 Tdi Mhev Sa
Peugeot	208	Petrol	208 Active Premium Ptech S S A
Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi S S
Volvo	Xc90	Diesel	Xc90 R-Design Pro B5 Awd Auto
Vauxhall	Crossland	Diesel	Crossland X Business Ed Nav Td
Seat	Ateca	Diesel	Ateca Fr Tdi
Volvo	Xc40	Diesel	Xc40 R-Design D3
Honda	Cr-V	Petrol	Cr-V Sport Line I-Mmd Cvt
Nissan	Juke	Petrol	Juke Tekna + Dig-T S-A
Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev Allgrip
Skoda	Fabia	Petrol	Fabia Se Drive Mpi
Peugeot	Traveller	Diesel	Traveller Active C Bhdi Ss A
Skoda	Octavia	Petrol	Octavia Se Technology Tsi
Volvo	Xc40	Petrol	Xc40 Inscription Pro T3 Auto
Mercedes	G-class	Petrol	Gla 180 Amg Line Premium Auto
Audi	A1	Petrol	A1 Technik 30 Tfsi
Audi	A5	Petrol	A5 S Ln Vsprng 40 Tfsi Mhev Sa
Mercedes	C-class	Petrol	C 300 Amg Line Edition Prem A
Ford	Journey	Diesel	Journey Grand Rx Auto
Vauxhall	Astra	Petrol	Astra Elite Nav Turbo
DS	3	Diesel	Ds3 Crossback Prestige Bhdi Ss
Volkswagen	T-Roc	Diesel	T-Roc Design Tdi S-A
Skoda	Fabia	Petrol	Fabia S Tsi
Mazda	Cx-5	Petrol	Cx-5 Se-L Nav +
Vauxhall	Crossland	Diesel	Crossland X Se Ecotec D S S
Volvo	Xc60	Petrol	Xc60 Inscription Pro T5 Awd A
Mercedes	C-class	Petrol	C 180 Amg Line
Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo A
Renault	Captur	Petrol	Captur Bose Launch Edition Tce
Honda	Cr-V	Petrol	Cr-V Ex I-Mmd Cvt
Ford	Transit	Petrol	Transit Cust 340Trend Phev Cvt
Jeep	Renegade	Diesel	Renegade Longitude Mijet Ii A
Mercedes	G-class	Petrol	Amg Glc 43 4Matic Auto
Volvo	Xc40	Petrol	Xc40 Rdesign Pro B5 Mhev Awd A
Nissan	Juke	Petrol	Juke Visia Dig-T
Mercedes	G-class	Diesel	Glc 220 D 4Matic Sport Auto
Hyundai	I30	Petrol	I30 Premium T-Gdi S-A
Audi	A6	Diesel	A6 S Lne Blk Ed 50 Tdi Quat Sa
Hyundai	Tucson	Diesel	Tucson Prem 48V Mhev Crdi 2Wd
Volkswagen	Polo	Petrol	Polo Se Tech Edition Evo
Mercedes	E-class	Hybrid	E 300 Se E Auto
Ford	S-Max	Diesel	S-Max St-Line Ecoblue 4X4 Auto
Alfa Romeo	Giulietta	Petrol	Giulietta Sprint Tb
Hyundai	I20	Petrol	I20 Premium Nav T-Gdi S-A
Alfa Romeo	Stelvio	Diesel	Stelvio Veloce Td Awd Auto
Citroen	C4	Petrol	C4 Grand Stourer Feel+ Ptch Ss
Volvo	Xc40	Diesel	Xc40 R-Design Pro D4 Awd Auto
Abarth	595	Petrol	595 Competizione
Mercedes	E-class	Hybrid	E 300 Amg Line Premium De Auto
BMW	M340i	Petrol	M340i xDrive
Seat	Leon	Diesel	Leon Xcellence Tdi S-A
Volvo	Xc40	Petrol	Xc40 Momentum Pro T3
Hyundai	Tucson	Petrol	Tucson Ultimate T-Gdi Mhev S-A
Kia	Picanto	Petrol	Picanto Gt-Line S
Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr 4X4 S-A
Peugeot	308	Diesel	308 Active Sw Bluehdi S S Auto
Volkswagen	Touareg	Petrol	Touareg V6 R-Line Tech Tsi A
Mercedes	C-class	Petrol	Cls 350 Amg Line Auto
Volkswagen	Touareg	Petrol	Touareg V6 Sel Tech Tsi Auto
Mercedes	B-class	Petrol	B 200 Sport Auto
Mazda	2	Petrol	2 Sport Nav Auto
Skoda	Fabia	Petrol	Fabia Se Mpi
BMW	X5	Petrol	X5 xDrive50i
BMW	X5	Diesel	X5 xDrive40d
Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi 4Motion
Ford	Kuga	Diesel	Kuga St-Line Ed Eblue 4X4 A
Peugeot	Rifter	Diesel	Rifter Premier Rx Td Auto
Volvo	Xc40	Petrol	Xc40 R-Design Pro T3
Hyundai	I10	Petrol	I10 Se
Kia	Sportage	Petrol	Sportage Gt-Ln Crdi Mhev Sa
Audi	Q8	Petrol	Q8 S Line 55 Tfsi Mhev Quat A
Fiat	500	Petrol	500 Dolcevita Mhev
BMW	M850i	Petrol	M850i xDrive
Mercedes	G-class	Petrol	Gla 200 Amg Line Edition
Volkswagen	Golf	Petrol	Golf R Tsi 4Motion S-A
Volkswagen	Golf	Petrol	Golf Se Navigation Tsi Evo S-A
Audi	A3	Petrol	A3 S Line 35 Tfsi S-A
Alfa Romeo	Giulia	Petrol	Giullia Luso Ti Tb Auto
Vauxhall	Corsa	Petrol	Corsa Elite
Audi	Q8	Petrol	Q8 S Line 55 Tfsi Quattro Auto
Seat	Ateca	Diesel	Ateca Xperience Tdi
Mercedes	G-class	Diesel	Gle 300 Amg Line Prem + D 4M A
Dacia	Logan	Diesel	Logan Mcv Stepway Techroad Dci
Fiat	Fiorino	Diesel	Fiorino 16V Ad Multijet Ii S S
Skoda	Karoq	Diesel	Karoq Scout Tdi Scr 4X4 S-A
Hyundai	I800	Diesel	I800 Se Crdi
Smart	Eq	Electric	Eq Forfour Pulse Premium
Porsche	911	Petrol	911 Turbo S-A
Peugeot	3008	Diesel	3008 Allure Premium B-Hdi Ss A
Hyundai	Tucson	Petrol	Tucson S Connect Gdi 2Wd
Renault	Megane	Petrol	Megane Play Tce Auto
Fiat	500	Petrol	500 Pop Mhev
Volvo	V90	Diesel	V90 D5 Powerpulse Awd Auto
Toyota	Aygo	Petrol	Aygo X-Trend Vvt-I
Skoda	Kodiaq	Diesel	Kodiaq Scout Tdi Scr 4X4 S-A
Vauxhall	Corsa	Diesel	Corsa Se Premium Turbo D
Seat	Ibiza	Petrol	Ibiza Fr Sport Mpi
Jeep	Wrangler	Petrol	Wrangler Sport Auto
Seat	Ateca	Petrol	Ateca Xperience Lux Tsi Evo Sa
Mercedes	G-class	Diesel	Glb 220 Amg Line Prem + D 4M A
Honda	Civic	Petrol	Civic Sr Vtec
Rolls-Royce	Phantom	Petrol	Phantom
Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi
Volkswagen	T-Cross	Diesel	T-Cross Se Tdi S-A
Vauxhall	Corsa	Petrol	Corsa Elite Nav Premium Trbo A
Mercedes	A-class	Diesel	A 220 D Amg Line Auto
Volvo	V60	Diesel	V60 R-Design + D3 Auto
Volvo	V90	Petrol	V90 T6 Awd Auto
Volkswagen	Arteon	Diesel	Arteon R-Line Tdi
Citroen	Berlingo	Diesel	Berlingo 650 En-Prise Bluehdi
Audi	A3	Petrol	A3 Technik 35 Tfsi Mhev S-A
Seat	Arona	Petrol	Arona Se Tsi
Kia	Sportage	Petrol	Sportage Gtln S Crdi Mhev4X4Sa
Skoda	Scala	Diesel	Scala Se Tdi S-A
Skoda	Karoq	Diesel	Karoq Scout Tdi Scr 4X4
DS	7	Petrol	Ds7 C-Back Pfrmnc Ln Ptch Ss A
Vauxhall	Grandland	Hybrid	Grandland X Se Nav Hybrid Auto
Ford	Puma	Petrol	Puma St-Line
Ford	Transit	Diesel	Transit Custom 320 Trend Eblue
Mercedes	A-class	Petrol	A 200 Amg Line Executive Auto
Skoda	Octavia	Diesel	Octavia Vrs Tdi S-A
Vauxhall	Crossland	Petrol	Crossland X Sri Nav Turbo
Skoda	Superb	Diesel	Superb Se L Tdi 4X4 S-A
Renault	Captur	Petrol	Captur S Edition Bose Tce
Ford	Puma	Petrol	Puma Titanium Auto
Mercedes	B-class	Petrol	B 180 Amg Line Executive Auto
Peugeot	508	Diesel	508 Allure Bluehdi S S
Vauxhall	Grandland	Petrol	Grandland X Se Turbo S S Auto
Ford	Focus	Diesel	Focus St-Line X Ecoblue Auto
Audi	Q3	Diesel	Q3 S Line 35 Tdi Quattro
Nissan	Qashqai	Diesel	Qashqai Tekna + Dci 4X4 Cvt
Audi	A3	Hybrid	A3 Sport 40 Tfsi E S-A
Lexus	Lc	Petrol	Lc 500H Limited Edition Auto
Dacia	Sandero	Petrol	Sandero Comfort Tce
Renault	Kadjar	Petrol	Kadjar Gt Line Tce Auto
Audi	Q2	Petrol	Q2 S Line Black Ed 35 Tfsi Sa
Mercedes	A-class	Petrol	Amg A 35 4Matic Executive Auto
Seat	Ateca	Petrol	Ateca Fr Sport Tsi Evo
Toyota	C-Hr	Petrol	C-Hr Excel Awd Cvt
Hyundai	Ioniq	Petrol	Ioniq Premium Hev S-A
Volvo	Xc40	Diesel	Xc40 R-Design D4 Awd Auto
Mercedes	C-class	Petrol	C300 Amg Ln Ngt Ed Prm+ Mhev A
Audi	A4	Diesel	A4 Sport 30 Tdi S-A
Volvo	V60	Petrol	V60 B5 Mhev Auto
Seat	Ateca	Petrol	Ateca Se Tech Tsi Evo
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev Auto
Fiat	Panda	Petrol	Panda Trussardi Mhev
Audi	A8	Diesel	A8 L S Ln Vsprung 50Tdi Quat A
Audi	RS 5	Petrol	Rs 5 Vorsprung Tfsi Quattro A
BMW	840i	Petrol	840i
Honda	Jazz	Petrol	Jazz Ex Navi I-Vtec Cvt
Honda	Civic	Petrol	Civic Sport Line Vtec Cvt
Jeep	Grand	Petrol	Grand Cherokee Trackhawk Sc A
Ford	Focus	Diesel	Focus St-Line Ecoblue Auto
Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I Cvt
Volkswagen	Passat	Petrol	Passat R-Line Tsi Evo
Audi	A4	Petrol	A4 Sport 35 Tfsi Mhev S-A
Skoda	Kamiq	Diesel	Kamiq Se L Tdi
Jeep	Compass	Petrol	Compass Limited M-Air Ii 4X2
Dacia	Sandero	Petrol	Sandero Stepway Se Twenty Tce
Porsche	Panamera	Hybrid	Panamera 4 10 Years Ed Phev Sa
Audi	A3	Petrol	A3 Sport 30 Tfsi Mhev S-A
Hyundai	Santa	Diesel	Santa Fe Premium Crdi 2Wd Auto
Fiat	500	Petrol	500 C Collezione
Toyota	Yaris	Petrol	Yaris Launch Edition Hev Cvt
Renault	Megane	Petrol	Megane Iconic Tce
Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi 4D A
Ford	Focus	Diesel	Focus Active X Ecoblue
Audi	Q3	Petrol	Q3 S Ln Vsprung 35Tfsi Mhev Sa
Vauxhall	Insignia	Diesel	Insignia Tech Line Nav E-Tec D
Mazda	Mx-5	Petrol	Mx-5 Rf Gt Sport Tech
Smart	Eq	Electric	Eq Fortwo Edition One
Renault	Captur	Petrol	Captur S Edition Tce
Volkswagen	Tiguan	Diesel	Tiguan Match Tdi 4Motion
Mercedes	G-class	Petrol	Amg Gt R Auto
Vauxhall	Crossland	Petrol	Crossland X Se Ecotec S S
Hyundai	I10	Petrol	I10 Premium Mpi Auto
Mazda	Mx-5	Petrol	Mx-5 Gt Sport Tech
Ford	Focus	Petrol	Focus St-Line X Auto
Audi	A4	Diesel	A4 S-Ln Black Ed40 Tdi Quat Sa
Volvo	Xc60	Petrol	Xc60 Inscription T5 Auto
Volvo	Xc40	Petrol	Xc40 Momentum T3
Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi 4X4 S-A
Seat	Arona	Petrol	Arona Fr Tsi S-A
Mercedes	G-class	Petrol	Gla 180 Amg Line Auto
Volvo	Xc40	Hybrid	Xc40 Inscription Exp T4Rchrg A
Peugeot	3008	Diesel	3008 Active Premium Bluehdi Ss
Seat	Leon	Hybrid	Leon Fr First Edition Phev S-A
Ford	Fiesta	Petrol	Fiesta Style
Peugeot	3008	Petrol	3008 Gt Prem P-Tech S S A
Vauxhall	Astra	Petrol	Astra Elite Nav Premium T
Volvo	Xc60	Diesel	Xc60 Inscription B5 Mhev Awd A
Seat	Leon	Diesel	Leon Xcellence Tdi
Ford	Focus	Diesel	Focus St-Line Tdci Auto
Mercedes	E-class	Petrol	Amg E 53 Premium 4Matic Auto
Dacia	Logan	Petrol	Logan Mcv Access Sce
Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi S-A
Toyota	Aygo	Petrol	Aygo X-Clusiv Vvt-I Cvt
BMW	420i	Petrol	420i
Hyundai	Tucson	Petrol	Tucson Premium T-Gdi Hev Auto
Fiat	500	Petrol	500 Rockstar Twinair
Volkswagen	Id3	Electric	Id3 1St Edition
Volkswagen	Passat	Diesel	Passat Se Nav Tdi S-A
BMW	320d	Diesel	320d EffDyn Edition
Mercedes	A-class	Petrol	A 200 Amg Line Executive
Mercedes	A-class	Petrol	A 200 Sport Executive
Toyota	Aygo	Petrol	Aygo X-Cite Tss Vvt-I Cvt
Ford	Mustang	Petrol	Mustang Gt
Audi	Q2	Petrol	Q2 S Line Black Ed 35 Tfsi
Kia	Xceed	Petrol	Xceed 3 Isg S-A
DS	7	Diesel	Ds7 C-Back Pfrmnc Ln B-Hdi S S
Volvo	V60	Diesel	V60 Cross Country D4 Awd Auto
Vauxhall	Grandland	Diesel	Grandland X Sri Nav Turbo D
Mercedes	S-class	Diesel	S 350 D L Amg Line Exec Prem+A
Peugeot	5008	Petrol	5008 Gt Line Puretech S S
BMW	X3	Diesel	X3 xDrive20d
Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet
Volvo	Xc40	Petrol	Xc40 Inscrpt Pro B5 Mhev Awd A
Volvo	V90	Diesel	V90 Inscription + D5 Awd Auto
Mercedes	G-class	Petrol	Amg Gt C Auto
Audi	Q5	Hybrid	Q5 S Lne Vor 50 Tfsi E Quat Sa
Honda	Jazz	Petrol	Jazz S I-Vtec Cvt
Mercedes	B-class	Diesel	B 180 Amg Line Premium D Auto
Lexus	Lc	Petrol	Lc 500 Sport Auto
Seat	Tarraco	Diesel	Tarraco Xcellence First Ed Tdi
BMW	X6	Petrol	X6 xDrive40i
Seat	Tarraco	Petrol	Tarraco Xcellence Tsi Evo
Volkswagen	Touran	Petrol	Touran Se Family Tsi
Mercedes	C-class	Petrol	C 200 Amg Line Auto
Kia	Ceed	Petrol	Ceed 3 Isg
Seat	Ibiza	Diesel	Ibiza Xcellence Tdi
Vauxhall	Crossland	Petrol	Crossland X Business Ed Nav
Peugeot	2008	Petrol	2008 Active Puretech S S Auto
Volvo	Xc40	Diesel	Xc40 Inscription D3
Volvo	V60	Petrol	V60 R-Design T6 Awd Auto
Seat	Leon	Petrol	Leon Fr Sport Tsi Evo
Porsche	718	Petrol	718 Boxster Gts S-A
Jeep	Renegade	Hybrid	Renegade Trailhawk 4Xe Auto
Kia	Niro	Petrol	Niro 2 S-A
Toyota	C-Hr	Petrol	C-Hr Excel Hev Cvt
Skoda	Octavia	Petrol	Octavia S Tsi
Mercedes	C-class	Hybrid	Cla 250 Amg Line Premium E A
Honda	Hr-V	Petrol	Hr-V Sport I-Vtec Cvt
Mercedes	G-class	Petrol	Gla 200 Amg Line Premium + A
Peugeot	3008	Petrol	3008 Gt Puretech S S
MG	Hs	Hybrid	Hs Exclusive Phev Auto
Peugeot	308	Petrol	308 Actve Prem Dig Sw Ptech Ss
Mitsubishi	Outlander	Hybrid	Outlander Excd Safety Phev Cvt
Vauxhall	Astra	Diesel	Astra Sri Nav Turbo D
Volkswagen	Golf	Petrol	Golf Style Tsi
MG	Zs	Petrol	Zs Excite Vti-Tech
Mercedes	E-class	Diesel	E 300 Amg Ln Night Ed Prem+D A
Audi	Q2	Diesel	Q2 S Line 35 Tdi Quattro S-A
Mercedes	G-class	Petrol	Amg Gt 63 S 4Matic + Auto
Kia	Stonic	Petrol	Stonic Maxx
Vauxhall	Crossland	Diesel	Crossland X Elite Nav Td Auto
Hyundai	Tucson	Petrol	Tucson Ultimate T-Gdi Hev Auto
Ford	Tourneo	Diesel	Tourneo Custom 320Ti X Eblue A
Citroen	C3	Petrol	C3 Shine + Puretech S S Auto
Suzuki	Swift	Petrol	Swift Sz5 Dualjet Shvs Allgrip
Mercedes	A-class	Hybrid	A 250 Sport E Auto
Audi	Q2	Diesel	Q2 S Line Black Edition 30 Tdi
Mercedes	E-class	Diesel	E 220 Amg Line Edition D Auto
Ford	Fiesta	Petrol	Fiesta St-Line X Edition Turbo
Volvo	Xc60	Diesel	Xc60 Momentum B4 Awd Auto
Volvo	V60	Petrol	V60 R-Design + T4 Auto
Ford	Focus	Diesel	Focus Titanium Ecoblue Auto
Ford	Focus	Petrol	Focus Active X Vignale
Audi	Q2	Petrol	Q2 S Ln Blk Ed 40 Tfsi Quat Sa
Honda	Cr-V	Petrol	Cr-V Sr I-Vtec
Seat	Taracco	Petrol	Taracco Xcellence Tsi Evo S-A
Audi	A5	Petrol	A5 S Line 35 Tfsi S-A
Abarth	595	Petrol	595 Pista 70Th Anniversary S-A
Honda	Civic	Petrol	Civic Gt Type R Vtec
Ford	Focus	Diesel	Focus Titanium X Ecoblue
Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Qfglo Nrng Awd A
Alfa Romeo	Stelvio	Petrol	Stelvio Nero Edizione Tb Awd A
Volvo	Xc90	Hybrid	Xc90 Inscript Pro T8 Phev A A
Porsche	Cayenne	Petrol	Cayenne V6 S Auto
Dacia	Sandero	Lpg	Sandero Sway Se Twenty Lpg Tce
Toyota	Rav4	Petrol	Rav4 Dynamic Hev Cvt
Mercedes	V-class	Diesel	V 300 Sport Marco Polo Hrz D A
Skoda	Octavia	Petrol	Octavia Vrs 245 Tsi S-A
Seat	Leon	Hybrid	Leon Fr Sport Phev S-A
Mercedes	E-class	Petrol	E 200 Amg Line Edition Prem A
Mitsubishi	Mirage	Petrol	Mirage Design Pro
Audi	S6	Diesel	S6 Tdi Quattro Auto
Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi
Toyota	Yaris	Petrol	Yaris Active Vvt-I
Volkswagen	Up	Petrol	Up Gti
Mercedes	B-class	Petrol	B 180 Amg Line Executive
Jeep	Renegade	Petrol	Renegade S 4X4 Auto
Peugeot	3008	Petrol	3008 Allure Puretech S S Auto
Mercedes	C-class	Petrol	Amg C 63 S Auto
Ford	Transit	Diesel	Transit Custom 320 Tdci
Lexus	Ls	Petrol	Ls 500H Premium 4X4 Auto
Audi	A4	Petrol	A4 Sln Vsprng 45Tfsi Mhev Q Sa
Vauxhall	Crossland	Petrol	Crossland X Elite Nav Eco S S
Ford	Kuga	Diesel	Kuga St-Ln X Frst Ed Eblu Mhev
Ford	Focus	Diesel	Focus Active X Vignale Eblue A
BMW	X5	Petrol	X5 xDrive40i
Skoda	Kamiq	Petrol	Kamiq Se Tsi
Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi Evo S-A
Citroen	Berlingo	Diesel	Berlingo Flair Xtr Bluehdi
Mercedes	G-class	Diesel	Gla 220 Amg Line D 4Matic Auto
Vauxhall	Crossland	Petrol	Crossland X Se Nav Ecotec S S
BMW	230i	Petrol	230i
Abarth	695	Petrol	695 Anniversary
Mercedes	E-class	Diesel	E 220 Amg Ln Ngt Ed Prm D 4M A
Volkswagen	Tiguan	Diesel	Tiguan Allspace Se Nav Tdi
Audi	A4	Diesel	A4 Technik 30 Tdi S-A
Kia	Stonic	Petrol	Stonic 2
Volvo	V90	Hybrid	V90 R-Design + T8 Phev Awd A
Peugeot	Rifter	Diesel	Rifter Active Bluehdi S S Auto
Vauxhall	Grandland	Diesel	Grandland X Ultimate Turbo D A
Seat	Leon	Diesel	Leon Xcellence Lux Tdi S-A
Mercedes	E-class	Petrol	E 200 Sport Mhev Auto
Renault	Grand	Diesel	Grand Scenic Signature Dci
Volvo	Xc90	Diesel	Xc90 R-Design B6 Mhev Awd Auto
Volkswagen	Polo	Petrol	Polo Beats Evo
Volkswagen	Golf	Petrol	Golf Se Tsi Evo
Peugeot	5008	Petrol	5008 Gt Puretech S S Auto
Seat	Arona	Petrol	Arona Fr Sport Ecotsi S-A
Volvo	Xc40	Diesel	Xc40 Inscription Pro D3 Awd A
Mercedes	Vito	Diesel	Vito 114Cdi Tourer Pro Auto
Vauxhall	Insignia	Diesel	Insignia Tech Line Nav T D A
Kia	Niro	Petrol	Niro 2 Hev S-A
Hyundai	Ix20	Petrol	Ix20 Se Nav Mpi
Mercedes	C-class	Diesel	C 300 Amg Ln Ngt Ed Prm+D 4M A
Audi	A8	Petrol	A8 55 Tfsi Quattro Auto
Ford	Focus	Petrol	Focus St-Line X
Ford	Independence	Diesel	Independence Twin Auto
Mercedes	E-class	Diesel	E 220 D Se Premium + 4Matic A
Alfa Romeo	Giulietta	Diesel	Giulietta Super Jtdm-2
Volvo	V90	Petrol	V90 Cross Country + T5 Awd A
Mercedes	Vito	Diesel	Vito 116 Bluetec Tourer Pro
Kia	Stinger	Diesel	Stinger Gt-Line S Crdi Isg A
Ford	Puma	Petrol	Puma Titanium First Ed Mhev
Mercedes	E-class	Diesel	E 300 Amg Line Edition D Auto
Skoda	Octavia	Diesel	Octavia Se L First Ed Tdi S-A
Jeep	Compass	Petrol	Compass Longitude M-Air Ii A
Hyundai	I20	Petrol	I20 Se T-Gdi S-A
Jaguar	XF	Diesel	NaN
Seat	Tarraco	Petrol	Tarraco Xcellence Lux Tsi Evo
Volvo	Xc90	Hybrid	Xc90 Inscription T8 Phev Awd A
DS	3	Petrol	Ds3 C-Back Prestige Ptech Ss
Renault	Captur	Diesel	Captur S Edition Bose Dci
Hyundai	I20	Petrol	I20 Premium Mhev T-Gdi Auto
Audi	A5	Petrol	A5 S Line 40 Tfsi S-A
Audi	A4	Petrol	A4 S Line Black Ed 35 Tfsi
Audi	TT	Petrol	Tt S Line Black Ed 45 Tfsi S-A
Renault	Clio	Petrol	Clio Iconic Tce
Volvo	Xc90	Hybrid	Xc90 Momentum T8 Rchrg Awd A
Lexus	Is	Petrol	Is 300H Takumi Cvt
Skoda	Karoq	Petrol	Karoq Se L Tsi S-A
Renault	Zoe	Electric	Zoe Dynamique Nav Ze 40 Auto
Mercedes	S-class	Diesel	S 350 Grand Ed Executive D A
Vauxhall	Insignia	Diesel	Insignia Sri Vx-Line Nav T D
Mercedes	C-class	Diesel	Cla 200 Amg Line D Auto
Seat	Tarraco	Diesel	Tarraco Xcellence Tdi 4D S-A
Mercedes	G-class	Petrol	Amg Gt 63 4Matic + Auto
Kia	Ceed	Petrol	Ceed First Edition Isg
Audi	A6	Hybrid	A6 Sln Blk Ed 50Tfsi E Quat Sa
Nissan	Qashqai	Petrol	Qashqai Tekna Dig-T
Volvo	V90	Petrol	V90 R-Design B5 Mhev Auto
Volkswagen	Touareg	Petrol	Touareg V6 Sel Tsi Auto
Honda	Civic	Diesel	Civic
Lexus	Lc	Petrol	Lc 500H Sport + Auto
DS	7	Diesel	Ds7 Crossback Prestige Bhdi Ss
Audi	A4	Petrol	A4 S Line 45 Tfsi Mhev Quat Sa
Vauxhall	Corsa	Petrol	Corsa Sport
Ford	Ecosport	Diesel	Ecosport Zetec Tdci
Lexus	Es	Petrol	Es 300H Cvt
Ford	Kuga	Diesel	Kuga Vignale Tdci
Volvo	Xc90	Hybrid	Xc90 R-Design T8 Phev Awd Auto
Peugeot	308	Petrol	308 Allure Prem Dig P-Tech S S
Porsche	911	Petrol	911 Carrera 4 Auto
Volkswagen	Move Up	Petrol	Move Up Tech Edition
BMW	X2	Petrol	X2 sDrive18i
Mercedes	A-class	Petrol	A 180 Sport Executive
Fiat	500	Petrol	500 Star S-A
Vauxhall	Corsa	Diesel	Corsa Se Nav Premium Turbo D
Audi	A4	Petrol	A4 Sport 35 Tfsi
Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi S-A
Mercedes	B-class	Petrol	B 180 Amg Line Auto
Nissan	Qashqai	Diesel	Qashqai Tekna + Dci 4X4
BMW	118d	Diesel	118d
Ford	Fiesta	Petrol	Fiesta Titanium X Turbo
Toyota	C-Hr	Petrol	C-Hr Icon Hev Cvt
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev 4X4 A
Vauxhall	Insignia	Diesel	Insignia Sri Ecotec D
Fiat	Qubo	Diesel	Qubo Trekking Multijet
Vauxhall	Grandland	Diesel	Grandland X Se Turbo D Auto
Nissan	Micra	Petrol	Micra N-Sport Ig-T
Volvo	Xc90	Petrol	Xc90 Momentum Pro T5 Awd Auto
Audi	E-Tron	Electric	E-Tron S Line 55 Quattro
Nissan	Juke	Petrol	Juke N-Connecta Dig-T S-A
Abarth	595C	Petrol	595C Trofeo
Skoda	Citigo	Electric	Citigo E Se L Iv
Seat	Leon	Petrol	Leon Xcellence Tsi Evo
Hyundai	Tucson	Diesel	Tucson Prm48V Mhev Crdi 2Wd Sa
Seat	Ateca	Petrol	Ateca Xperience Lux Tsi 4D Sa
Porsche	Panamera	Hybrid	Panamera Turbo S E-Hybrid S-A
Skoda	Superb	Petrol	Superb Se Tsi S-A
Audi	A6	Petrol	A6 S Line 55 Tfsi Quattro S-A
Land Rover	Range Rover	Petrol	NaN
Kia	Proceed	Petrol	Proceed Gt-Line Isg
Renault	Koleos	Diesel	Koleos Iconic Blue Dci Cvt
Mercedes	E-class	Hybrid	E 300 Amg Line De Auto
Volkswagen	T-Roc	Diesel	T-Roc Se Tdi
Vauxhall	Astra	Petrol	Astra Sport
Fiat	Hymer	Petrol	Hymer T Cl 698
Hyundai	Tucson	Diesel	Tucson Premium Crdi 2Wd
Lexus	Rc	Petrol	Rc 300H Cvt
Renault	Trafic	Diesel	Trafic Ll29 Sport Nav Dci
Vauxhall	Grandland	Petrol	Grandland X Griffin Turbo
Ford	Mondeo	Petrol	Mondeo St-Line Hev Auto
Volvo	Xc40	Petrol	Xc40 Inscription B4 Mhev Awd A
Mercedes	A-class	Petrol	A 250 Amg Line Premium Auto
Hyundai	Tucsn	Diesel	Tucsn Prm Se48V Mhev Crdi2Wdsa
BMW	630d	Diesel	630d xDrive
Seat	Ibiza	Petrol	Ibiza Se Mpi
Seat	Ateca	Petrol	Ateca Fr Tsi Evo
Mercedes	C-class	Diesel	Cla 200 Amg Line Premium + D A
BMW	X7	Petrol	X7 M50i
Fiat	500	Petrol	500 C 120Th Anniversary
Honda	Jazz	Petrol	Jazz Ex I-Vtec
Alfa Romeo	Stelvio	Petrol	Stelvio Veloce Tb Awd Auto
Nissan	Qashqai	Petrol	Qashqai N-Motion Dig-T
Peugeot	308	Diesel	308 Gt Premium Dig Bhdi S S A
Ford	Fiesta	Petrol	Fiesta Active X Edition Turbo
Citroen	C3	Petrol	C3 Aircross Flair P-Tech Ss A
Peugeot	108	Petrol	108 Active
Hyundai	Tucson	Petrol	Tucson Se Nav T-Gdi 2Wd S-A
Alfa Romeo	Giulia	Diesel	Giulia Speciale Td Auto
Dacia	Sandero	Lpg	Sandero Essential Lpg Tce
Vauxhall	Astra	Diesel	Astra Elite Nav Premium Td A
Mitsubishi	Outlander	Petrol	Outlander Design Cvt
Kia	Sportage	Petrol	Sportage Gt-Line Crdi Isg Mhev
Kia	Sorento	Diesel	Sorento Gt-Line Crdi Isg 4X4 A
Alfa Romeo	Stelvio	Petrol	Stelvio Speciale Tb Awd Auto
Audi	RS 7	Petrol	Rs 7 Tfsi Mhev Quattro Auto
Lexus	Nx	Petrol	Nx 300H 4X2 Cvt
Mercedes	V-class	Diesel	V220 Sport Bluetec Auto
Volvo	S90	Petrol	S90 Inscription + T4 Auto
Porsche	718	Petrol	718 Cayman Gts S-A
Skoda	Karoq	Petrol	Karoq Sportline Tsi S-A
Honda	Hr-V	Diesel	Hr-V Ex I-Dtec
Ford	Transit	Diesel	Transit Custom 340 Trend Eblue
Mercedes	S-class	Petrol	S 500 L Grand Edition Mhev A
Hyundai	Ioniq	Hybrid	Ioniq Premium Phev S-A
Hyundai	Kona	Petrol	Kona Se Gdi Hev S-A
Volkswagen	Golf	Petrol	Golf Match Tsi Evo S-A
Peugeot	2008	Electric	2008 Active Ev
Mercedes	A-class	Diesel	A 180 Amg Line Executive D
Vauxhall	Crossland	Diesel	Crossland X Sport Turbo D Auto
Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi Evo Sa
BMW	440i	Petrol	440i
Ford	Kuga	Diesel	Kuga St-Line Ecoblue Auto
Hyundai	Tucson	Petrol	Tucson Premium Se T-Gdi 2Wd
Audi	Q5	Diesel	Q5 Sport 40 Tdi Quattro S-A
Peugeot	308	Diesel	308 Allure Sw Bluehdi S S
Volvo	V60	Petrol	V60 Inscription B3 Mhev Auto
Kia	Optima	Petrol	Optima Gt Auto
Jeep	Renegade	Diesel	Renegade Limited Multijet Ii
Vauxhall	Grandland	Hybrid	Grandland X Elite Nav Hyb4 A
MINI	Cooper D	Diesel	Cooper D
Nissan	Qashqai	Diesel	Qashqai N-Motion Dci
Hyundai	I30	Diesel	I30 Premium Crdi
Audi	Q3	Petrol	Q3 S Line Edition 1 35 Tfsi
Volvo	V60	Diesel	V60 Inscription D4 Auto
Ford	Ka+	Petrol	Ka+ Active
Mercedes	G-class	Petrol	Gle 580 Amg Lne Exec Mhev 4M A
Hyundai	I30	Petrol	I30 Se Connect Mhev T-Gdi Auto
Ford	Kuga	Diesel	Kuga St-Ln First Ed Eblue Mhev
Ford	Fiesta	Petrol	Fiesta Trend Turbo Mhev
Audi	TT	Petrol	Tts Vorsprung Tfsi Quattro S-A
Peugeot	308	Diesel	308 Gt Line Bluehdi S S Auto
Seat	Ateca	Petrol	Ateca Fr Black Ed Tsi 4D S-A
Peugeot	2008	Diesel	2008 Gt Line Bluehdi S S
Fiat	500	Petrol	500 Lounge Mhev
Skoda	Kodiaq	Petrol	Kodiaq Se Tsi S-A
Mercedes	G-class	Petrol	Glc 300 Amg Line 4Matic Auto
Peugeot	Bailey	Diesel	Bailey Advance 662
Volkswagen	T-Cross	Petrol	T-Cross United Tsi
Ford	Focus	Petrol	Focus Active
Skoda	Kodiaq	Diesel	Kodiaq Se Drive Tdi Scr S-A
Ford	Focus	Petrol	Focus Zetec
Ford	Mondeo	Petrol	Mondeo Zetec Hev Auto
Alfa Romeo	Stelvio	Diesel	Stelvio Super Tb Awd Auto
Seat	Ateca	Petrol	Ateca Xcellence Tsi 4Drive S-A
Seat	Ateca	Petrol	Ateca Fr Black Ed Tsi Evo S-A
Honda	Civic	Petrol	Civic Sport Vtec Cvt
Volvo	Xc40	Petrol	Xc40 Inscription Pro T4 Awd A
DS	7	Diesel	Ds7 Crossback Prstge Bhdi Ss A
Citroen	C3	Petrol	C3 Flair Puretech S S Auto
Audi	A4	Diesel	A4 S Ln Vsprng 40Tdi Mhev Q Sa
Vauxhall	Insignia	Petrol	Insignia Elite Nav Turbo
Suzuki	Jimny	Petrol	Jimny Sz4 4X4
Seat	Alhambra	Diesel	Alhambra Se Tdi S-A
Mercedes	V-class	Diesel	V 250 D Amg Line Auto
Volkswagen	Transporter	Diesel	Transporter T30 Tdi Bmt
Ford	Kuga	Diesel	Kuga St-Line X Edition Ecoblue
Fiat	Panda	Petrol	Panda Pop
Mercedes	V-class	Diesel	V 300 Amg Line Marco Polo D A
Kia	Optima	Hybrid	Optima Phev + Auto
Honda	Civic	Diesel	Civic Se I-Dtec
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev
Audi	A7	Diesel	A7 Sport 45 Tdi Quattro Auto
Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi 4D Sa
Hyundai	Tucson	Diesel	Tucson Se Nav Crdi 2Wd
Nissan	Micra	Petrol	Micra Acenta Limited Edition
Peugeot	5008	Diesel	5008 Allure Premium Bluehdi Ss
Ford	S-Max	Diesel	S-Max Titanium Ecoblue Auto
Fiat	500	Petrol	500L City Cross
Renault	Clio	Petrol	Clio Rs Line Tce Auto
Seat	Ibiza	Diesel	Ibiza Fr Sport Tdi
Skoda	Octavia	Petrol	Octavia Se Frst Ed Tsi Mhev Sa
Hyundai	Kona	Petrol	Kona Premium Se Gdi Hev S-A
BMW	318i	Petrol	318i
Volkswagen	Golf	Petrol	Golf Gti Performance Tsi S-A
BMW i	i3	Electric	i3
Vauxhall	Insignia	Diesel	Insignia Gsi Nav T D 4X4 A
Seat	Leon	Petrol	Leon Se Dynamic Tsi
Citroen	C5	Diesel	C5 Aircross Flair Bhdi S S A
Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi Evo
Toyota	Corolla	Petrol	Corolla Trek Hev Cvt
Volvo	S60	Petrol	S60 Inscription B5 Mhev Auto
Skoda	Kamiq	Petrol	Kamiq S Tsi
Seat	Arona	Diesel	Arona Se Tdi
Volkswagen	Golf	Diesel	Golf Gt Edition Tdi S-A
Seat	Taracco	Petrol	Taracco Se Tech Tsi Evo Sa
Audi	A3	Petrol	A3 S Line 35 Tfsi
Skoda	Octavia	Diesel	Octavia Se L First Edition Tdi
Mercedes	B-class	Diesel	B 180 Sport Premium D
Volkswagen	Id3	Electric	Id3 Business
Volvo	Xc40	Diesel	Xc40 Momentum D3
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev
Mercedes	C-class	Petrol	C 180 Sport
Mercedes	C-class	Hybrid	C 300 Sport Edition E Auto
Ford	Mustang	Petrol	Mustang 55 Edition Auto
Ford	Kuga	Diesel	Kuga Titanium Edition Tdci 4X4
Hyundai	I20	Petrol	I20 Se T-Gdi
Seat	Leon	Petrol	Leon Xcellence Lux Tsi Evo S-A
Audi	A1	Petrol	A1 Sport 30 Tfsi S-A
DS	3	Petrol	Ds3 C-Back Elegance Ptech Ss A
Kia	Sportage	Petrol	Sportage 2 Crdi Isg Mhev S-A
Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue
Smart	Eq	Electric	Eq Fortwo Prime Premium 22 Kw
Abarth	595	Petrol	595 Pista
Peugeot	2008	Electric	2008 Allure Premium Ev
Mercedes	V-class	Diesel	V 220 Sport D Auto
Honda	Cr-V	Petrol	Cr-V Ex I-Vtec Cvt
Citroen	C3	Petrol	C3 Feel Puretech S S
BMW i	i3	Electric	i3 94
Audi	A4	Petrol	A4 S Line Black Ed 35 Tfsi S-A
Audi	A3	Diesel	A3 Sport 35 Tdi
Porsche	Panamera	Petrol	Panamera Turbo S-A
Audi	Q3	Petrol	Q3 S Line 35 Tfsi Mhev S-A
Mercedes	C-class	Diesel	C 220 Sport Edition Prem D A
Kia	Niro	Electric	Niro First Edition Ev
Peugeot	Rifter	Diesel	Rifter Allure Bluehdi
Hyundai	Kona	Petrol	Kona Premium Se
Citroen	C5	Petrol	C5 Aircross Shine Puretech S S
Vauxhall	Insignia	Diesel	Insignia Sri Turbo D
Porsche	911	Petrol	911 Targa 4S
Mercedes	C-class	Diesel	C 220 Se D Auto
Jeep	Renegade	Petrol	Renegade Sport
Toyota	Yaris	Petrol	Yaris Design Hev Cvt
Mercedes	C-class	Diesel	C 300 Amg Line Premium + D A
Hyundai	Tucson	Diesel	Tucson Premium Se Crdi 2Wd
Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci 4X4 Cvt
Hyundai	I20	Petrol	I20 Play T-Gdi
Audi	Q3	Diesel	Q3 S Line Ed 1 35 Tdi Quat S-A
Ford	Focus	Petrol	Focus Style
Volkswagen	Golf	Petrol	Golf R-Line Edition Tsi Evo Sa
Fiat	Tipo	Petrol	Tipo Cross
Jeep	Wrangler	Petrol	Wrangler Rubicon Auto
Ford	Independence	Diesel	Independence Re
Audi	A4	Diesel	A4 Sport Edition 35Tdi Mhev Sa
Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Tdci
Audi	A4	Diesel	A4 S Ln Black Ed 30Tdi Mhev Sa
Renault	Zoe	Electric	Zoe I Gt Ln Rapid Charge Ze 50
Renault	Megane	Petrol	Megane Gt Line Tce
Mercedes	E-class	Diesel	E250 Cdi Coleman Milne Auto
Volvo	V60	Petrol	V60 Momentum B3 Mhev Auto
Peugeot	308	Diesel	308 Active Bluehdi S S
Volvo	Xc40	Petrol	Xc40 Inscription T3
Vauxhall	Grandland	Petrol	Grandland X Elite Nav Prem T
Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem+ E 4M A
Audi	A5	Petrol	A5 Sport 40 Tfsi Mhev S-A
Mercedes	C-class	Petrol	C 300 Sport Premium Auto
Renault	Megane	Diesel	Megane Iconic Dci Auto
Nissan	X-Trail	Diesel	X-Trail Acenta Pre Dci 4X4 Cvt
Skoda	Octavia	Diesel	Octavia Sportline Tdi S-A
Volvo	Xc60	Petrol	Xc60 Momentum T5 Awd Auto
Mercedes	C-class	Petrol	C 180 Se
Audi	A6	Diesel	A6 S Line 40 Tdi Quattro S-A
Fiat	500	Petrol	500 C Star S-A
Peugeot	3008	Hybrid	3008 Gt Line S S Phev Auto
Hyundai	I10	Petrol	I10 Play
Peugeot	208	Petrol	208 Gt Line Puretech S S
Alfa Romeo	Giulia	Petrol	Giulia Veloce Ti Tb Auto
Volvo	V90	Hybrid	V90 Inscription + T8 Phev A A
Renault	Clio	Petrol	Clio Rs Line Tce Cvt
Toyota	Corolla	Petrol	Corolla Design Hev Cvt
Audi	A5	Petrol	A5 S Line 40 Tfsi Mhev S-A
Skoda	Scala	Petrol	Scala Se Technology Tsi S-A
Vauxhall	Corsa	Diesel	Corsa Elite Nav Premium Trbo D
Mercedes	S-class	Petrol	S 450 L Amg Line Executive A
Mazda	3	Petrol	3 100Th Anniversary Ed Mhev
Vauxhall	Insignia	Petrol	Insignia Sri Nav Turbo
Volkswagen	Tiguan	Petrol	Tiguan S Tsi Evo
Mercedes	E-class	Electric	Eqc 400 Sport 4Matic
Audi	Q7	Diesel	Q7 S Line 50 Tdi Quattro Auto
Mercedes	C-class	Petrol	Cla 200 Amg Line Premium Auto
Mercedes	A-class	Diesel	A 180 Se D
Ford	Fiesta	Petrol	Fiesta Vignale Edition Turbo A
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev 4X4
Vauxhall	Insignia	Petrol	Insignia Sri Vx-Line Nav Turbo
Seat	Ibiza	Petrol	Ibiza Xcellence Tsi
Volkswagen	Golf	Petrol	Golf Match Tsi
Ford	Fiesta	Diesel	Fiesta Style Tdci
Volkswagen	Golf	Diesel	Golf Se Navigation Tdi S-A
Peugeot	Traveller	Diesel	Traveller Active Bluehdi
Toyota	Aygo	Petrol	Aygo X-Trend Tss Vvt-I
Audi	A5	Diesel	A5 S Line Ed 1 35 Tdi Mhev Sa
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Allgrip
Seat	Leon	Diesel	Leon Fr Tdi S-A
Suzuki	Swift	Petrol	Swift Sz3 Dualjet
Seat	Leon	Diesel	Leon Se Dynamic Tdi
Volkswagen	Golf	Petrol	Golf Sv Match Tsi Evo S-A
Ford	Fiesta	Diesel	Fiesta Titanium X Tdci
Audi	Q5	Diesel	Q5 S Ln Ed1 40Tdi Mhev Quat Sa
Dacia	Duster	Lpg	Duster Prestige Lpg Tce 4X2
BMW	Z4	Petrol	Z4 M40i
Mazda	Cx-5	Diesel	Cx-5 Sport D 4X4
Ford	Kuga	Hybrid	Kuga St-Line Phev Cvt
Seat	Arona	Petrol	Arona Fr Sport Ecotsi
Ford	Transit	Petrol	Transit Custom 300 Base
Skoda	Kamiq	Petrol	Kamiq Se L Tsi
Audi	A5	Diesel	A5 S Line Vorsprung 40 Tdi S-A
Peugeot	Traveller	Diesel	Traveller Allure Cpact Bhdi Ss
Peugeot	3008	Hybrid	3008 Allure Prem S S Phev A
Mercedes	C-class	Diesel	C 220 Amg Lne Ed Prem + D 4M A
Kia	Stinger	Petrol	Stinger Gt-Line S Isg Auto
Mercedes	G-class	Diesel	Gls 400 Amg Ln Prem+Exe D 4M A
Mercedes	V-class	Diesel	V 220 D Sprt Marco Polo Hrzn A
Citroen	C4	Petrol	C4 Cactus Flair Puretech S S
Audi	A8	Diesel	A8 S Line 50 Tdi Quattro Auto
Volkswagen	Touareg	Diesel	Touareg V6 R-Line Tech Tdi A
Mercedes	V-class	Diesel	V 300 Sport D Auto
Volkswagen	Tiguan	Diesel	Tiguan Life Tdi S-A
BMW	X7	Diesel	X7 xDrive30d
Mercedes	C-class	Petrol	C 300 Amg Ln Nght Ed Mhev 4M A
Volvo	Xc40	Petrol	Xc40 R-Design T5 Awd Auto
Peugeot	5008	Petrol	5008 Allure Premium P-Tech S S
Mercedes	G-class	Hybrid	Gle 350 Amg Line Prem De 4M A
Audi	Q7	Petrol	Q7 Sln Vor 55 Tfsi Mhev Quat A
Hyundai	I30	Petrol	I30 N Line + T-Gdi
Vauxhall	Astra	Petrol	Astra Sri Vx Line Nav Turbo
Vauxhall	Grandland	Diesel	Grandland X Elite Nav Prem Td
Kia	Ceed	Petrol	Ceed First Edition Isg S-A
Ford	Mustang	Electric	Mustang Mach-E Std Range Rwd
Nissan	Juke	Petrol	Juke Acenta Dig-T S-A
Peugeot	2008	Petrol	2008 Active Puretech S S
Mitsubishi	Mirage	Petrol	Mirage First Edition
Porsche	Taycan	Electric	Taycan 4S 79Kwh
Mercedes	G-class	Diesel	G 350 Amg Line Premium D 4M A
Honda	Civic	Petrol	Civic Prestige Vtec Cvt
Audi	A1	Petrol	A1 Citycarver 30 Tfsi
Vauxhall	Crossland	Petrol	Crossland X Sri Nav
Mercedes	G-class	Diesel	Glc 300 Amg Line Prem + D 4M A
Jeep	Wrangler	Diesel	Wrangler Sahara Multijet Ii A
Renault	Clio	Hybrid	Clio S Edition E-Tech Auto
Audi	A4	Diesel	A4 S Line 35 Tdi Mhev S-A
Seat	Leon	Petrol	Leon Se Tsi
Ford	Kuga	Diesel	Kuga St-Line Edition Ecoblue A
DS	3	Petrol	Ds3 C-Back La Prem P-Tech Ss A
Ford	Focus	Diesel	Focus St-Line Tdci
Vauxhall	Grandland	Diesel	Grandland X Sri Nav Turbo D A
DS	3	Petrol	Ds3 C-Back Ultraprstg Ptch Ssa
Audi	A6	Petrol	A6 Sport 45 Tfsi Quattro S-A
Audi	A6	Diesel	A6 S Ln V-Sprng 50 Tdi Quat Sa
Ford	Transit	Diesel	Transit Custom 320 Trend Tdci
Volkswagen	Tiguan	Petrol	Tiguan Tsi
Mercedes	S-class	Diesel	S 400 L Grand Ed Executive D A
Audi	A4	Petrol	A4 S Line 45 Tfsi Quattro S-A
Volkswagen	Golf	Petrol	Golf Se Navigation Tsi Evo
Mercedes	A-class	Diesel	A 200 Amg Line Premium D 4M A
Volvo	Xc90	Petrol	Xc90 T6 Awd Auto
Volvo	Xc60	Diesel	Xc60 Momentum D4 Auto
Kia	Sportage	Petrol	Sportage 2 Crdi Isg Mhev
Mercedes	E-class	Electric	Eqc 400 Edition 1886 4Matic
Hyundai	I10	Petrol	I10 Premium Se
Audi	Q2	Diesel	Q2 Technik 30 Tdi
Toyota	Gt86	Petrol	Gt86 Club Series Blue Ed D4S A
Peugeot	2008	Electric	2008 Gt Ev
Mercedes	B-class	Petrol	B 200 Amg Line Executive
Skoda	Karoq	Petrol	Karoq Se Tsi S-A
Mercedes	Vito	Diesel	Vito Taxi+ Compact 114Cdi Auto
Mercedes	E-class	Petrol	E 300 Amg Line Ngt Ed Prem + A
Mercedes	E-class	Diesel	E 350 Amg Line Edition D Auto
Renault	Grand	Diesel	Grand Scenic Iconic Blue Dci
Audi	TT	Petrol	Tt S Line Vorsprung 45 Tfsi
Hyundai	I30	Diesel	I30 Premium Se Crdi
BMW	320d	Diesel	320d
Nissan	X-Trail	Diesel	X-Trail Acenta Dci 4X4 Cvt
Volkswagen	T-Roc	Diesel	T-Roc R-Line Tdi S-A
Mercedes	C-class	Petrol	Amg C63 S Auto
Volkswagen	Golf	Diesel	Golf Sv Match Tdi S-A
Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi 4X4 S-A
Mercedes	A-class	Petrol	A 180 Sport Premium
Mercedes	Vito	Diesel	Vito 114 Bluetec Tourer Select
Renault	Clio	Petrol	Clio S Edition Tce Cvt
Skoda	Kodiaq	Diesel	Kodiaq Scout Tdi Scr 4X4
Volkswagen	Transporter	Diesel	Transporter T32 Sportline Tdia
Renault	Captur	Diesel	Captur Play Dci
Volvo	V90	Hybrid	V90 R-Design T6 Recharge Awd A
Peugeot	3008	Diesel	3008 Allure Premium Bluehdi Ss
Ford	Focus	Petrol	Focus Titanium X Edition Mhev
Mercedes	B-class	Petrol	B 200 Sport Premium + Auto
Mercedes	A-class	Diesel	A 180 Se Executive D
Honda	Cr-V	Petrol	Cr-V Se I-Mmd 4X2 Cvt
Jaguar	XJ	Diesel	NaN
Mazda	3	Petrol	3 Se-L Mhev Auto
Audi	SQ8	Petrol	Sq8 Vorsprung Tfsi Quattro A
Peugeot	Traveller	Diesel	Traveller Allure Bluehdi S S
Volvo	V90	Diesel	V90 Inscription + D4 Auto
Hyundai	Tucson	Diesel	Tucson Se Nav48V Mhev Crdi 2Wd
Mazda	Cx-5	Petrol	Cx-5 Sport Nav + Auto
Volkswagen	Caddy	Diesel	Caddy C20 Life Tdi
Volkswagen	Polo	Petrol	Polo Beats Tsi
Volvo	Xc40	Petrol	Xc40 R-Design Pro T5 Awd Auto
Audi	A4	Diesel	A4 S Line Black Ed 40 Tdi S-A
BMW	225d	Diesel	225d
Ford	Tourneo	Petrol	Tourneo Connect Titanium
Smart	Eq	Electric	Eq Fortwo Prime Exclusive
Nissan	Qashqai	Petrol	Qashqai Acenta Premium Dig-T
Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo A
Audi	A4	Diesel	A4 Technik 35 Tdi Mhev S-A
Vauxhall	Astra	Petrol	Astra Sri Turbo
Fiat	500	Petrol	500 C Star Twinair
Citroen	C4	Diesel	C4 Gr Stourer Flair + Bhdi Ss
Audi	A3	Petrol	A3 S Line 30 Tfsi
Vauxhall	Grandland	Hybrid	Grandland X Ultimte Nav Hyb4 A
Skoda	Octavia	Diesel	Octavia Se Tdi
Mercedes	G-class	Diesel	Glb 200 Amg Line Prem D 4M A
Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X4 Cvt
Volvo	Xc60	Diesel	Xc60 R-Design Pro B6Mhev Awd A
Citroen	C3	Petrol	C3 Touch Puretech S S
Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D Ss A
Toyota	Mirai	Hydrogen	Mirai Fuel Cell Cvt
Nissan	Micra	Petrol	Micra N-Sport Ig-T Cvt
Ford	Mondeo	Petrol	Mondeo Titanium Ed Hev Auto
Seat	Tarraco	Petrol	Tarraco X-Lnc Lux Tsi 4D Sa
Vauxhall	Insignia	Diesel	Insignia Sri Vx-Line Nav T D A
DS	3	Petrol	Ds3 C-Back Pfrmc Ln Ptch Ss
Seat	Tarraco	Petrol	Tarraco X-Lnc 1St Ed+Tsi 4D Sa
Kia	Ceed	Petrol	Ceed 2 Nav Isg
Porsche	Cayenne	Hybrid	Cayenne Turbo S E-Hybrid Auto
Ford	Kuga	Petrol	Kuga St-Line X First Edition
Jeep	Renegade	Petrol	Renegade S Limited Auto
Volkswagen	Arteon	Petrol	Arteon R-Line Edition Tsi S-A
Volvo	V60	Petrol	V60 R-Design B4 Mhev Auto
Volkswagen	Tiguan	Diesel	Tiguan S Tdi 4Motion
Peugeot	3008	Diesel	3008 Allure Bluehdi S S Auto
Vauxhall	Corsa	Petrol	Corsa Sri Premium Turbo
Volkswagen	Transporter	Diesel	Transporter T28 Highline Tdi
Volkswagen	Passat	Diesel	Passat Sel Tdi S-A
Suzuki	Vitara	Petrol	Vitara Sz5 Boostjet Mhev Agrip
Nissan	Qashqai	Petrol	Qashqai N-Tec Dig-T S-A
Vauxhall	Insignia	Petrol	Insignia Ultimate Nav Turbo A
Hyundai	Nexo	Hydrogen	Nexo Premium Se Auto
Hyundai	Ix20	Petrol	Ix20 Se Nav Mpi Auto
Audi	A5	Petrol	A5 S Line Ed 1 35 Tfsi Mhev Sa
Mercedes	E-class	Diesel	E 350 Amg Lne Ngt Ed Prem+ D A
Fiat	Panda	Petrol	Panda Cross Twinair 4X4
Seat	Ibiza	Diesel	Ibiza Fr Tdi
Audi	A4	Petrol	A4 S Line Vorsprung 40 Tfsi Sa
Audi	Q7	Diesel	Q7 Sln Blk Ed 45Tdi Mhev Qto A
Peugeot	508	Diesel	508 Allure Sw Bluehdi S S
Nissan	370Z	Petrol	370Z V6
Lexus	Lc	Petrol	Lc 500 Auto
Kia	Sportage	Diesel	Sportage Gt-Line Crdi Isg S-A
Hyundai	Tucson	Petrol	Tucson Premium Gdi 2Wd
Dacia	Duster	Diesel	Duster Se Twenty Blue Dci 4X2
Volvo	Xc40	Hybrid	Xc40 R-Design T5 Recharge Auto
Vauxhall	Grandland	Hybrid	Grandland X Sri Nav Hybrid A
Mercedes	G-class	Petrol	Amg Gle 63 Mhev 4Matic+ Auto
DS	3	Diesel	Ds3 C-Back Pfrmnc Ln B-Hdi S S
BMW	430d	Diesel	430d
Volvo	Xc90	Petrol	Xc90 R-Design Pro T5 Awd Auto
Peugeot	3008	Petrol	3008 Allure Prem P-Tech S S A
Mercedes	S-class	Petrol	S 560 Grand Edition Auto
MG	3	Petrol	3 Explore Vti-Tech
Fiat	500	Petrol	500 C Sport S-A
Toyota	Hilux	Diesel	Hilux Active D-4D 4Wd Dcb
MG	Hs	Petrol	Hs Exclusive
Fiat	Tipo	Petrol	Tipo S-Design T-Jet
Nissan	Micra	Petrol	Micra Visia + Ig-T
Mercedes	B-class	Petrol	B 180 Sport Executive
Vauxhall	Vivaro	Diesel	Vivaro Life Elite S S
Skoda	Octavia	Petrol	Octavia Se Tsi S-A
Mercedes	C-class	Petrol	Cla 250 Amg Line Auto
Mitsubishi	Outlander	Hybrid	Outlander Exceed Phev Cvt
Kia	Picanto	Petrol	Picanto X-Line Auto
Audi	A8	Petrol	A8 L S Line 55 Tfsi Quattro A
Porsche	718	Petrol	718 Spyder
Fiat	Panda	Petrol	Panda Sport Mhev
Peugeot	308	Diesel	308 Allure Digital Sw Bhdi S S
Fiat	500	Petrol	500 C Rockstar S-A
Vauxhall	Vivaro	Diesel	Vivaro Life Edition S S
Nissan	X-Trail	Petrol	X-Trail Acenta Prem Dig-T Sa
Nissan	X-Trail	Diesel	X-Trail N-Tec Dci Cvt
Skoda	Kodiaq	Petrol	Kodiaq Scout Tsi 4X4 S-A
Mercedes	S-class	Diesel	S 350 D L Amg Line Auto
Ford	Fiesta	Petrol	Fiesta St-Line X Turbo Auto
Volvo	V60	Hybrid	V60 R-Design T6 Recharge Awd A
Audi	A3	Petrol	A3 S Line Ed 1 35 Tfsi Mhev Sa
Volvo	Xc90	Diesel	Xc90 R-Design Pro B6Mhev Awd A
Mazda	3	Petrol	3 Sport Mhev
Ford	Focus	Diesel	Focus Style Tdci
Mercedes	S-class	Petrol	Sl 500 Grand Edition Premium A
Mercedes	A-class	Petrol	A 200 Sport Premium
Kia	Rio	Petrol	Rio 3 Isg
Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi Evo Sa
Citroen	Berlingo	Petrol	Berlingo Flair Puretech S S
Audi	A1	Petrol	A1 S Line Vorsprung 35 Tfsi Sa
Audi	Q3	Diesel	Q3 Sport 35 Tdi Quattro
Renault	Megane	Hybrid	Megane Iconic E-Tech Auto
Citroen	C4	Petrol	C4 Gr Stourer Flair Ptech S S
Renault	Clio	Diesel	Clio S Edition Bose Blue Dci
Mercedes	C-class	Petrol	Amg C 43 Premium + 4Matic Auto
Volvo	Xc40	Diesel	Xc40 R-Design Pro D3
Seat	Tarraco	Diesel	Tarraco Fr Tdi
Audi	A4	Diesel	A4 S Line Black Ed 35 Tdi S-A
Nissan	Qashqai	Petrol	Qashqai N-Tec Dig-T
MINI	Cooper S	Petrol	Cooper S
Mercedes	C-class	Petrol	Cla 220 Amg Line Premium Auto
Kia	Optima	Diesel	Optima Gt-Line S Isg Crdi S-A
Fiat	500	Petrol	500 C Rockstar Mhev
Skoda	Octavia	Diesel	Octavia Se Drive Tdi
Mazda	Cx-5	Diesel	Cx-5 Se-L Nav + D Auto
Renault	Trafic	Diesel	Trafic Sport Energy Dci Auto
Nissan	Juke	Petrol	Juke Premiere Edition Dig-T Sa
Mercedes	A-class	Diesel	A 180 Amg Line Premium + D
Nissan	Qashqai	Petrol	Qashqai N-Connecta Dig-T
Renault	Megane	Petrol	Megane Rs Line Tce
Dacia	Duster	Petrol	Duster Prestige Sce 4X2
Kia	Stonic	Petrol	Stonic 4 Isg S-A
Dacia	Logan	Petrol	Logan Mcv Stepway Techroad Tce
Volkswagen	Tiguan	Petrol	Tiguan Sel Tsi 4Motion S-A
BMW	620d	Diesel	620d xDrive
Mercedes	C-class	Petrol	Cla 220 Amg Line Auto
Ford	Fiesta	Petrol	Fiesta Zetec Turbo
Audi	Q8	Petrol	Q8 Sln Ed 1 55 Tfsi Mhev Qto A
Seat	Tarraco	Diesel	Tarraco Xcellence Tdi
Ford	Kuga	Diesel	Kuga Titanium X Ed Tdci 4X4
Ford	Focus	Petrol	Focus St
Mercedes	C-class	Diesel	C 300 Amg Ln Ngt Ed Prm D 4M A
Skoda	Superb	Diesel	Superb Se L Exec Tdi 4X4 S-A
Volvo	V90	Petrol	V90 Momentum B4 Mhev Auto
Ford	Tourneo	Diesel	Tourneo Connect Zetec Tdci
Citroen	C1	Petrol	C1 Flair
Volkswagen	Touran	Petrol	Touran Sel Tsi
Vauxhall	Grandland	Petrol	Grandland X Griffin Turbo Auto
Toyota	Corolla	Petrol	Corolla Design Vvt-I
Volkswagen	Sharan	Diesel	Sharan Sel Tdi S-A
Mercedes	G-class	Petrol	Amg Gt S Auto
Hyundai	I20	Petrol	I20 Se Connect Mhev T-Gdi
Citroen	C1	Petrol	C1 Airscape Flair
Skoda	Scala	Diesel	Scala Se L Tdi S-A
Tesla	Model S	Electric	Model S Perform Ludicrous Awd
Vauxhall	Insignia	Petrol	Insignia Sri Vx-Line Nav Tur A
Volvo	S90	Hybrid	S90 R-Design T8 Recharge Awd A
Skoda	Karoq	Petrol	Karoq Se Drive Tsi
Peugeot	3008	Diesel	3008 Active Bluehdi S S Auto
Volvo	Xc40	Hybrid	Xc40 Inscription Pro T5 Phev A
Hyundai	I10	Petrol	I10 Se Connect Mpi
Audi	A4	Petrol	A4 S Ln Blk Ed 40 Tfsi Mhev Sa
Volkswagen	Golf	Diesel	Golf Sv S Tdi
Audi	Q3	Petrol	Q3 Technik 35 Tfsi
Mercedes	A-class	Diesel	A 180 D Se Executive Auto
Nissan	Qashqai	Petrol	Qashqai Tekna + Dig-T S-A
Toyota	Corolla	Petrol	Corolla Icon Tech Hev Cvt
Ford	Kuga	Diesel	Kuga Titanium Ed Eblue A
Ford	Focus	Petrol	Focus Active X Vignale Ed Mhev
Mercedes	E-class	Hybrid	E 300 Se Premium + E Auto
Audi	A3	Hybrid	A3 S Line 40 Tfsi E S-A
Volvo	V60	Diesel	V60 R-Design + D4
Mazda	Mx-5	Petrol	Mx-5 R-Sport
Renault	Kangoo	Electric	Kangoo Business Ml20 I Ze 33
Ford	Mondeo	Diesel	Mondeo St-Line Edition Tdci
Audi	Q3	Diesel	Q3 S Line Edition 1 35 Tdi S-A
Ford	S-Max	Diesel	S-Max Titanium Turbo
Renault	Kadjar	Petrol	Kadjar S Edition Tce
BMW	X5	Diesel	X5 xDrive30d
Dacia	Sandero	Lpg	Sandero Comfort Lpg Tce
Seat	Leon	Petrol	Leon Xcellence Lux Tsi Evo
Mercedes	Evito	Electric	Evito Tourer
Ford	Puma	Petrol	Puma St-Line X First Ed Mhev
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T Boosterjet
Skoda	Superb	Petrol	Superb Sportline + Tsi 4X4 S-A
Mercedes	B-class	Diesel	B 220 Amg Line Executive D A
Mercedes	A-class	Petrol	A 180 Amg Line Auto
Honda	Civic	Petrol	Civic Type R Limited Edition
BMW	340i	Petrol	340i
Nissan	Qashqai	Petrol	Qashqai Tekna Dig-T S-A
Audi	RS 3	Petrol	Rs 3 Tfsi Quattro S-A
Mercedes	E-class	Hybrid	E 350 E Amg Line Auto
Mazda	Mx-5	Petrol	Mx-5 Se-L
Mercedes	G-class	Diesel	Glc 400 Amg Line Prem + D 4M A
Audi	A4	Petrol	A4 S Ln Vsprng 40 Tfsi Mhev Sa
Volkswagen	Golf	Petrol	Golf R-Line Tsi Evo S-A
Mercedes	C-class	Diesel	Cla 200 Amg Line Premium + D
Volvo	Xc40	Petrol	Xc40 Momentum T4 Auto
Nissan	X-Trail	Diesel	X-Trail Acenta Dci 4X4
Volkswagen	Arteon	Petrol	Arteon Elegance Tsi S-A
Skoda	Kodiaq	Diesel	Kodiaq L And K Tdi Scr 4X4 S-A
Renault	Grand	Diesel	Grand Scenic Play Blue Dci
Fiat	Tipo	Petrol	Tipo Easy +
Volvo	V60	Petrol	V60 Momentum Pro T5 Auto
Volkswagen	Golf	Diesel	Golf Style Tdi
Citroen	C3	Petrol	C3 Flair Puretech S S
Mercedes	G-class	Petrol	Gla 250 Amg Line Executive A
Volkswagen	Golf	Petrol	Golf R-Line Etsi S-A
Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi
Skoda	Karoq	Petrol	Karoq Edition Tsi 4X4 S-A
Audi	A4	Petrol	A4 S Line Blk Ed 35 Tfsi Mhev
Volvo	Xc60	Hybrid	Xc60 R-Design T6 Rcharg Awd A
Nissan	Qashqai	Diesel	Qashqai Acenta Dci
Volkswagen	Touareg	Petrol	Touareg V6 Black Edition Tsi A
Porsche	Cayenne	Petrol	Cayenne V6 Auto
Peugeot	208	Petrol	208 Active Premium Puretech Ss
Mitsubishi	Eclipse	Petrol	Eclipse Cross 2 4X2
Mazda	Cx-5	Petrol	Cx-5 Se-L
Volkswagen	Tporter	Petrol	Tporter T30 S-Line Tdi Bmt A
Audi	A4	Petrol	A4 S Ln Blk Ed 35 Tfsi Mhev Sa
Ford	Kuga	Diesel	Kuga Titanium Edition Tdci
Audi	Q2	Diesel	Q2 S Line Black Ed 30 Tdi S-A
Audi	A5	Diesel	A5 S Line Black Ed 40 Tdi S-A
Seat	Arona	Petrol	Arona Fr Sport Tsi S-A
Mercedes	A-class	Diesel	A 220 D Amg Line Premium + A
Fiat	500	Petrol	500 C Rockstar Twinair
Ford	Focus	Diesel	Focus Titanium X Ecoblue Auto
Audi	Q5	Hybrid	Q5 S Ln Comp 55 Tfsi E Quat Sa
Vauxhall	Grandland	Petrol	Grandland X Sri Nav Turbo A
Citroen	C5	Petrol	C5 Aircross Flair + Ptech Ss A
Mercedes	S-class	Petrol	Sl 400 Grand Edition Premium A
Audi	A3	Petrol	A3 Sport 35 Tfsi Mhev S-A
Lexus	Lc	Petrol	Lc 500 Regatta Edition Auto
Audi	A1	Petrol	A1 S Ln Competition 40 Tfsi Sa
Mercedes	A-class	Petrol	A 220 Amg Line Premium Auto
Peugeot	308	Petrol	308 Allure Puretech S S
Ford	Kuga	Petrol	Kuga St-Line Auto
Mercedes	A-class	Diesel	A 200 D Amg Line Premium + A
Volkswagen	Golf	Diesel	Golf Alltrack Tdi 4Motion S-A
Kia	Rio	Petrol	Rio Gt-Line Isg
Mercedes	G-class	Diesel	Gla 200 Amg Line D 4Matic Auto
Hyundai	Tucson	Petrol	Tucson N Line T-Gdi 2Wd
Skoda	Scala	Diesel	Scala Se L Tdi
Porsche	Macan	Petrol	Macan Gts S-A
Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi S S Auto
Mercedes	B-class	Diesel	B 200 Amg Line D Auto
Mercedes	C-class	Diesel	C 300 Amg Line Ed Prem + D A
Audi	S6	Diesel	S6 Vorsprung Tdi Quattro Auto
Honda	Civic	Petrol	Civic Se Vtec Cvt
Seat	Arona	Petrol	Arona Xcellence Lux Tsi
Toyota	Land	Diesel	Land Cruiser Icon D-4D Auto
Toyota	Aygo	Petrol	Aygo Jbl Edition Tss Vvt-I
Kia	Picanto	Petrol	Picanto 1
Audi	A4	Diesel	A4 S Line Vorsprung 35 Tdi S-A
Porsche	Panamera	Petrol	Panamera 4 S-A
Volkswagen	Passat	Diesel	Passat Se Tdi S-A
Ford	Transit	Diesel	Transit 350 Leader Ecoblue
Mercedes	G-class	Petrol	Glb 200 Sport Premium + Auto
Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr 4X4
Mercedes	G-class	Diesel	Gle 350 Amg Line D 4Matic Auto
Mercedes	G-class	Hybrid	Glc 300 Amg Line De 4Matic A
Mercedes	E-class	Petrol	Amg E 63 S Ngt Ed Prem + 4M+ A
Mercedes	Vito	Diesel	Vito 119 B-Tec Tourer Select A
Fiat	Panda	Petrol	Panda Cross Twinair
Porsche	Cayenne	Petrol	Cayenne Gts Auto
Skoda	Karoq	Petrol	Karoq Sportline Tsi 4X4 S-A
Mercedes	A-class	Diesel	A 180 Amg Line D Auto
Volvo	S60	Petrol	S60 R-Design + T5 Auto
Vauxhall	Crossland	Diesel	Crossland X Sport Turbo D
Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi
Kia	Rio	Petrol	Rio Gt-Line S Mhev
Audi	TT	Petrol	Ttrs Tfsi Quattro S-A
Mitsubishi	Outlander	Petrol	Outlander Exceed Cvt
Audi	Q2	Petrol	Q2 Technik 35 Tfsi
Ford	Galaxy	Petrol	Galaxy Titanium X Turbo
BMW	M3	Petrol	M3
Mercedes	V-class	Diesel	V 300 Amg Ln Marcopolo Hrn D A
Vauxhall	Astra	Petrol	Astra Elite Nav Turbo Cvt
Renault	Megane	Petrol	Megane Renaultsport Trophy A
Lexus	Rx	Petrol	Rx 450H Takumi Cvt
Honda	Civic	Diesel	Civic Ex I-Dtec
Seat	Leon	Diesel	Leon Se Dynamic Tdi S-A
Peugeot	Rifter	Diesel	Rifter Active Bluehdi
Peugeot	Expert	Diesel	Expert Professional L1 Bluehdi
Volkswagen	Polo	Diesel	Polo Se Tdi
Mercedes	C-class	Petrol	Amg C 63 S Premium + Auto
Seat	Tarraco	Diesel	Tarraco Se Technology Tdi
Vauxhall	Combo	Diesel	Combo Life Energy Turbo D S S
Vauxhall	Crossland	Petrol	Crossland X Elite Nav
Peugeot	308	Diesel	308 Gt Line Sw Bluehdi S S A
Porsche	911	Petrol	911 Carrera S Auto
Mercedes	G-class	Diesel	Gle 350 Amg Line Prem D 4M A
Skoda	Octavia	Petrol	Octavia Se Tech Tsi Mhev S-A
Volvo	S60	Hybrid	S60 R-Design + T8 Phev Awd A
Renault	Trafic	Diesel	Trafic Spaceclass Energy Dci
Kia	Optima	Diesel	Optima 3 Crdi Isg S-A
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi S-A
Audi	Q2	Petrol	Q2 S Line 40 Tfsi Quattro S-A
Jeep	Compass	Petrol	Compass Limited M-Air Ii Auto
MG	Zs	Petrol	Zs Exclusive Turbo Auto
BMW	120d	Diesel	120d xDrive
Audi	RS 5	Petrol	Rs 5 Audi Sport Ed Tfsi Quat A
Jeep	Wrangler	Petrol	Wrangler Sahara Auto
Volvo	V90	Diesel	V90 Momentum + D4 Auto
Toyota	Aygo	Petrol	Aygo X-Play Tss Vvt-I
Ford	Fiesta	Diesel	Fiesta Active Edition Tdci
Jeep	Wrangler	Diesel	Wrangler Sahara Unltd Mjt Ii A
Ford	Tourneo	Diesel	Tourneo Custom 320 Ecoblue A
Kia	Stonic	Diesel	Stonic 3 Crdi Isg
Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi 4Motion
BMW	X2	Petrol	X2 xDrive20i
Mercedes	E-class	Petrol	E 200 Se Premium + Auto
Ford	Focus	Petrol	Focus Vignale Auto
DS	7	Petrol	Ds7 Crossback Prstge Ptch Ss A
Fiat	Panda	Petrol	Panda Easy
Volkswagen	Golf	Petrol	Golf Life Etsi S-A
Volkswagen	Golf	Petrol	Golf Match Tsi Evo
Lexus	Nx	Petrol	Nx 300H Cvt
Peugeot	3008	Diesel	3008 Gt Bluehdi S S Auto
Nissan	Qashqai	Petrol	Qashqai Visia Dig-T
Ford	Kuga	Diesel	Kuga St-Line X Ecoblue Mhev
Peugeot	508	Diesel	508 Gt Line Sw Bluehdi S S A
Fiat	500	Petrol	500 Lounge Twinair
Volkswagen	Id3	Electric	Id3 Family
Ford	Tourneo	Diesel	Tourneo Connect Gr Zetec Tdcia
Mercedes	G-class	Petrol	Amg Glc 63 S Premium + 4M+ A
Ford	S-Max	Diesel	S-Max Vignale Ecoblue Auto
Dacia	Duster	Petrol	Duster Prestige Tce 4X4
Hyundai	I30	Petrol	I30 Se T-Gdi
Audi	TT	Petrol	Tt Sport 45 Tfsi Quattro S-A
Audi	A4	Petrol	A4 Aroad Spt 45Tfsi Mhev Qt Sa
Mercedes	G-class	Diesel	Gle 400 Amg Line D 4Matic Auto
Jeep	Wrangler	Petrol	Wrangler Overland Auto
Toyota	Corolla	Petrol	Corolla Excel Vvt-I Hev Cvt
Alfa Romeo	Stelvio	Petrol	Stelvio Sprint Tb Awd Auto
Vauxhall	Grandland	Diesel	Grandland X Elite Nv Prem Td A
Seat	Alhambra	Diesel	Alhambra Se L Tdi
Mercedes	A-class	Diesel	A 200 D Amg Line Premium Auto
Rolls-Royce	Wraith	Petrol	Wraith
Volkswagen	Tiguan	Diesel	Tiguan Allspace Rline Tech Tdi
Volvo	Xc60	Diesel	Xc60 Inscription Pro B5 Mhev A
Skoda	Fabia	Petrol	Fabia Se Tsi S-A
Renault	Grand	Diesel	Grand Scenic Sign Blue Dci A
Ford	Ecosport	Diesel	Ecosport Titanium Tdci 4X4
Ford	Fiesta	Diesel	Fiesta Active 1 Tdci
Alfa Romeo	Stelvio	Petrol	Stelvio Milano Ed Tb Awd Auto
BMW	Z4	Petrol	Z4 sDrive30i
Audi	A4	Diesel	A4 S Ln Black Ed 35Tdi Mhev Sa
Dacia	Logan	Diesel	Logan Mcv Comfort Blue Dci
Honda	E	Electric	E Advance
Toyota	Aygo	Petrol	Aygo X Vvt-I
Nissan	X-Trail	Diesel	X-Trail Acenta Dci Cvt
BMW	518d	Diesel	518d
Volvo	Xc90	Hybrid	Xc90 Rdesign Pro T8 Phev Awd A
Citroen	C3	Petrol	C3 Aircross Rip Curl P-Tech Ss
Audi	A6	Hybrid	A6 Sport 50 Tfsi E Quattro S-A
Vauxhall	Crossland	Petrol	Crossland X Business Ed Nav T
Volvo	V60	Diesel	V60 R-Design D3 Auto
Peugeot	208	Petrol	208 Gt Puretech S S Auto
Ford	Puma	Petrol	Puma St-Line Auto
Vauxhall	Combo	Diesel	Combo Life Elite Turbo D S S A
Kia	Stonic	Petrol	Stonic Mixx Isg S-A
Mitsubishi	Outlander	Hybrid	Outlander Design Phev Cvt
Ford	Tourneo	Diesel	Tourneo Connect Zetec Tdci A
Mercedes	G-class	Petrol	Gla 250 Amg Line Premium Auto
Ford	Focus	Petrol	Focus Zetec Edition Mhev
Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T B-Jet Allgrip
BMW	740i	Petrol	740i
Vauxhall	Astra	Petrol	Astra Ultimate Nav Turbo
Ford	Focus	Diesel	Focus Style Tdci Auto
Ford	Mustang	Petrol	Mustang Gt Auto
Skoda	Octavia	Hybrid	Octavia Se L Tsi Iv S-A
Mercedes	A-class	Petrol	Amg A 35 4Matic Auto
Vauxhall	Vivaro	Diesel	Vivaro 3100 Edition S S
Volvo	Xc40	Petrol	Xc40 Momentum B4 Mhev Auto
Peugeot	3008	Diesel	3008 Active Bluehdi S S
Hyundai	I30	Petrol	I30 N Line Mhev T-Gdi
BMW	X2	Petrol	X2 M35i
Mercedes	C-class	Petrol	Cla 220 Amg Line Premium + A
Volkswagen	Transporter	Diesel	Transporter T30 Window Tdi Bmt
Nissan	X-Trail	Petrol	X-Trail Tekna Dig-T S-A
Jeep	Compass	Diesel	Compass Longitude M-Jet Ii 4X2
Peugeot	2008	Electric	2008 Allure Ev
Audi	A1	Petrol	A1 Technik 25 Tfsi
Suzuki	Swift	Petrol	Swift Sport Boosterjet Mhev
Volkswagen	Tiguan	Petrol	Tiguan Allspace Sel Tsi 4M S-A
Nissan	Juke	Petrol	Juke Enigma Dig-T S-A
Nissan	Qashqai	Diesel	Qashqai Tekna + Dci
Mercedes	G-class	Diesel	Glc 220 Urban Edition D 4M A
Ford	Tourneo	Diesel	Tourneo Custom 320 Ti X Mhev
Suzuki	Swift	Petrol	Swift Sz3 Dualjet Shvs
Hyundai	Tucson	Diesel	Tucson Premium 48V Mhev Crdi A
Honda	Civic	Diesel	Civic Ex I-Dtec Auto
Citroen	C4	Petrol	C4 Gr Stourer Touch+ Ptch Ss A
Peugeot	508	Hybrid	508 Gt Line S S Phev Auto
Citroen	C4	Petrol	C4 Cactus Flair Puretech S S A
Audi	A5	Petrol	A5 S Line Black Ed 40 Tfsi Sa
Volkswagen	Touran	Petrol	Touran R Line Tsi
Hyundai	Santa	Diesel	Santa Fe Premium Crdi Auto
Ford	Kuga	Diesel	Kuga Titanium X Edition Tdci
Audi	A7	Diesel	A7 Sport 40 Tdi S-A
Ford	Tourneo	Diesel	Tourneo Custom 310 T-Nium Tdci
Mazda	Mx-5	Petrol	Mx-5 Rf Sport Tech
Ford	Kuga	Diesel	Kuga St-Line Edition Tdci 4X4
Peugeot	308	Diesel	308 Gt Line Sw Bluehdi S S
Audi	SQ5	Diesel	Sq5 Vorsprung Tdi Quattro Auto
Volkswagen	Arteon	Diesel	Arteon R-Line Bitdi Scr 4M Sa
MINI	Cooper S	Hybrid	Cooper S E ALL4
Mercedes	C-class	Petrol	C 300 Sport Mhev 4Matic Auto
Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi S-A
Audi	RS 4	Petrol	Rs 4 Carbon Black Tfsi Quat A
Mercedes	B-class	Petrol	B 200 Sport Executive Auto
Mercedes	A-class	Diesel	A 200 Exclusive Edition D Auto
Mercedes	E-class	Diesel	E 400 Amg Line Ed Prm + D 4M A
Volkswagen	Caravelle	Diesel	Caravelle Exec Tdi Bmt 4M Sa
Mercedes	C-class	Diesel	C 220 Amg Line D Auto
Skoda	Scala	Petrol	Scala Se Technology Tsi
Audi	Q5	Petrol	Q5 Sport 45 Tfsi Mhev Quat S-A
Volvo	Xc90	Diesel	Xc90 Momentum Pro B5 Awd Auto
Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Isg Mhev
Volkswagen	Tiguan	Diesel	Tiguan Allspace Match Tdi S-A
Audi	A1	Petrol	A1 S Line 25 Tfsi S-A
Vauxhall	Crossland	Petrol	Crossland X Griffin Turbo Auto
Mercedes	A-class	Petrol	A 200 Amg Line Premium +
Volvo	Xc60	Diesel	Xc60 R-Design B4 Mhev Awd Auto
Skoda	Octavia	Diesel	Octavia Scout Tdi 4X4 S-A
Audi	Q3	Diesel	Q3 S-Ln V-Sprung 40Tdi Quat Sa
Volkswagen	Id3	Electric	Id3 Max
Lexus	Rx	Petrol	Rx 450H F Sport Cvt
Jeep	Renegade	Petrol	Renegade Limited
Volkswagen	Transporter	Diesel	Transporter T32 S Tdi Bmt
Seat	Ateca	Petrol	Ateca Se Ecomotive Tsi
Mercedes	E-class	Diesel	E 220 Amg Line Ed Prem D A
Ford	Kuga	Diesel	Kuga St-Line X Ecoblue 4X4 A
Audi	Q3	Petrol	Q3 Sport 40 Tfsi Quattro S-A
Fiat	Talento	Diesel	Talento Lounge Multijet Ii
Peugeot	5008	Diesel	5008 Gt Bluehdi S S
Vauxhall	Astra	Petrol	Astra Elite Nav Premium T Cvt
Seat	Leon	Petrol	Leon Cupra St R Tsi 4Drive S-A
Citroen	C4	Diesel	C4 Gr Stourer Feel + Bhdi Ss A
Ford	Allied	Diesel	Allied Procab Auto
Audi	SQ5	Diesel	Sq5 Tdi Quattro Auto
Skoda	Kodiaq	Petrol	Kodiaq Edition Tsi S-A
Jeep	Renegade	Petrol	Renegade Longitude
Ford	S-Max	Petrol	S-Max St-Line Ecoblue
Fiat	500	Petrol	500 Sport S-A
Audi	A4	Petrol	A4 Technik 35 Tfsi S-A
Hyundai	I30	Petrol	I30 N T-Gdi
Peugeot	508	Diesel	508 Allure Bluehdi S S Auto
Mercedes	Vito	Diesel	Vito 116Cdi Tourer Pro Auto
Nissan	Micra	Petrol	Micra Acenta Dig-T
Skoda	Karoq	Petrol	Karoq Se Technology Tsi S-A
Volkswagen	Transporter	Diesel	Transporter T32 Se Tdi Bmt S-A
Volkswagen	Polo	Petrol	Polo United Tsi
Volkswagen	Caddy	Petrol	Caddy Maxi C20 Life Tsi
Mercedes	A-class	Diesel	A 180 D Sport Premium Auto
Volkswagen	Passat	Petrol	Passat R-Line Tsi Evo S-A
Seat	Ateca	Petrol	Ateca Xperience Lux Tsi Evo
Mercedes	E-class	Hybrid	E 300 Amg Line Premium E 4M A
Ford	Fiesta	Petrol	Fiesta Active B And O Play T
Ford	Kuga	Diesel	Kuga St-Line Edition Tdci
Volvo	Xc90	Diesel	Xc90 Momentum B5 Awd Auto
Lexus	Ux	Petrol	Ux 250H + Cvt
BMW	320i	Petrol	320i xDrive
Vauxhall	Vivaro	Diesel	Vivaro Life Elite S S Auto
Skoda	Kodiaq	Petrol	Kodiaq S Tsi
Peugeot	2008	Diesel	2008 Active Premium Bluehdi Ss
Mitsubishi	ASX	Petrol	Asx Exceed
Honda	Civic	Petrol	Civic Se Vtec
Mercedes	G-class	Petrol	Amg Gt 63 S Premium + 4M + A
Skoda	Superb	Diesel	Superb Se Tdi
Mercedes	G-class	Petrol	Gle 450 Amg Line 4Matic Auto
Volkswagen	Polo	Petrol	Polo S Evo
Volkswagen	T-Roc	Petrol	T-Roc United Tsi Evo S-A
Volvo	V90	Diesel	V90 Inscription Pro D5Pp Awd A
MINI	Cooper	Petrol	Cooper
Ford	Focus	Petrol	Focus Style Auto
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Agrip A
Mercedes	G-class	Petrol	Amg Gla 35 Premium 4Matic Auto
Porsche	718	Petrol	718 Spyder S-A
Audi	A1	Petrol	A1 S Line 30 Tfsi S-A
Nissan	Leaf	Electric	Leaf E + N-Connecta
Volkswagen	T-Roc	Diesel	T-Roc R-Line Tdi
Vauxhall	Astra	Diesel	Astra Sri Vx Line Nav Turbo D
Volvo	Xc40	Petrol	Xc40 R-Design T3
Alfa Romeo	Giulietta	Diesel	Giulietta Veloce Jtdm-2 S-A
Vauxhall	Grandland	Diesel	Grandland X Sport Nav T D Ss A
Hyundai	Kona	Petrol	Kona Se
Audi	Q3	Diesel	Q3 S Lne Blk Ed 40 Tdi Quat Sa
Volkswagen	Golf	Diesel	Golf Gtd Tdi S-A
Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem E 4Mat A
Mercedes	S-class	Petrol	S 560 Amg Line Premium Auto
Ford	Focus	Diesel	Focus Titanium X Tdci
Peugeot	508	Diesel	508 First Edition Bhdi S S A
Peugeot	3008	Petrol	3008 Active Purtech S S
Mercedes	C-class	Petrol	Amg C 43 Premium 4Matic Auto
Audi	A6	Petrol	A6 S Ln Blk Ed 55 Tfsi Quat Sa
Tesla	Model 3	Electric	Model 3 Performance Awd
Audi	Q7	Diesel	Q7 S Line Black Ed Tdi Quat A
Mitsubishi	Eclipse	Petrol	Eclipse Cross Black 4X2
Volvo	Xc40	Petrol	Xc40 Inscription Pro T4 Auto
Smart	Eq	Electric	Eq Forfour Passion Advanced
Hyundai	Kona	Petrol	Kona Iron Man Edition S-A
Renault	Grand	Petrol	Grand Scenic Play Tce
Ford	Focus	Diesel	Focus Active Ecoblue Auto
Alpine	Alpine	Petrol	Alpine Legende Gt Auto
Vauxhall	Crossland	Diesel	Crossland X Sri Nav Turbo D
Ford	Tourneo	Diesel	Tourneo Connect Grd Act Eblu A
Audi	RS 7	Petrol	Rs 7 Crbn Blk Tfsi Mhev Quat A
Audi	A1	Petrol	A1 S Line Competition Tfsi S-A
Mercedes	C-class	Petrol	C 180 Se Auto
MG	Zs	Petrol	Zs Limited Edition Auto
Fiat	500	Petrol	500X Sport S-A
Peugeot	508	Diesel	508 Gt Line Bluehdi S S
Kia	Optima	Diesel	Optima 3 Crdi Isg
Hyundai	Tucson	Diesel	Tucson N Lne 48V Mhev Crdi 2Wd
Mercedes	E-class	Petrol	Amg E 53 Ngt Ed Prm+ Mhev 4M+A
Volkswagen	Up	Petrol	Up By Beats Tsi
Ford	Transit	Diesel	Transit Custom 320 Tdci Auto
Nissan	X-Trail	Diesel	X-Trail N-Tec Dci
Renault	Scenic	Diesel	Scenic Signature Blue Dci
Seat	Ateca	Petrol	Ateca Xperience Tsi Evo S-A
Citroen	C3	Petrol	C3 Touch Puretech
Volkswagen	Polo	Petrol	Polo Match Tsi
Toyota	Prius	Petrol	Prius Active Vvt-I Cvt
Seat	Ibiza	Diesel	Ibiza Se Technology Tdi
Peugeot	508	Hybrid	508 Allure S S Phev Auto
Kia	Sportage	Petrol	Sportage 3 Crdi Isg Mhev
Ford	Puma	Petrol	Puma St-Line X Vignale Auto
Volvo	V90	Diesel	V90 C-Country B4 Mhev Awd A
Audi	A8	Petrol	A8 L 55 Tfsi Quattro Auto
Mitsubishi	Mirage	Petrol	Mirage Design Cvt
Volvo	Xc60	Diesel	Xc60 Inscription Pro B5 Awd A
Audi	A1	Petrol	A1 S Ln Contrast Ed 35 Tfsi Sa
Vauxhall	Grandland	Petrol	Grandland X Tech Ln Nav T Ss A
Vauxhall	Astra	Diesel	Astra Sri Turbo D
Ford	Ecosport	Petrol	Ecosport St-Line Auto
Audi	Q5	Diesel	Q5 S Line Blk Ed40 Tdi Quat Sa
Audi	Q3	Diesel	Q3 Sport 35 Tdi Quattro S-A
Skoda	Octavia	Diesel	Octavia Sportline Tdi
Mercedes	C-class	Petrol	Cla 200 Sport Premium + A
Mazda	Cx-5	Petrol	Cx-5 Sport Nav +
Suzuki	Across	Hybrid	Across E-Four
Ford	Fiesta	Diesel	Fiesta St-Line Tdci
Audi	Q5	Hybrid	Q5 Vor Comp 55 Tfsi E Quat S-A
Dacia	Logan	Petrol	Logan Mcv Essential Sce
Volvo	V60	Diesel	V60 Momentum + D4 Auto
Mercedes	G-class	Petrol	Amg Glc 43 Premium + 4Matic A
Vauxhall	Insignia	Petrol	Insignia Sri Nav Turbo Auto
Volvo	V90	Diesel	V90 Cross Country + D5 Awd A
Mercedes	V-class	Diesel	V 220 D Amg Line Auto
Audi	A3	Diesel	A3 Sport 35 Tdi S-A
Audi	A1	Petrol	A1 S Line Style Ed 35 Tfsi S-A
Mercedes	B-class	Petrol	B 200 Amg Line Executive Auto
Audi	Q5	Diesel	Q5 S Ln V-Sprung 40Tdi Quat Sa
Volkswagen	Golf	Petrol	Golf R-Line Edition Tsi Evo
Audi	Q7	Diesel	Q7 S Ln Vor 45 Tdi Mhev Quat A
Volvo	V90	Petrol	V90 R-Design + T5 Auto
Volvo	Xc60	Petrol	Xc60 Momentum B5 Mhev Awd Auto
Vauxhall	Astra	Diesel	Astra Elite Nav Turbo D
Audi	A4	Diesel	A4 Sport Edition 30Tdi Mhev Sa
Kia	Sportage	Petrol	Sportage Gt-Line S Isg
Volkswagen	Passat	Diesel	Passat Sel Tdi
Vauxhall	Grandland	Diesel	Grandland X Se Turbo D S S A
Volvo	Xc40	Petrol	Xc40 R-Design Pro T4 Awd Auto
Volkswagen	Tiguan	Petrol	Tiguan Match Tsi Evo S-A
Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr 4X4
Honda	Civic	Petrol	Civic Type R Sport Line
Ford	Kuga	Diesel	Kuga St-Line First Ed E-Blue
Alfa Romeo	Giulietta	Petrol	Giulietta Sport Tb
Mazda	3	Petrol	3 Gt Sport Tech Mhev
Hyundai	Kona	Electric	Kona Premium Ev Auto
Audi	Q3	Diesel	Q3 Sport 40 Tdi Quattro S-A
Vauxhall	Corsa	Petrol	Corsa Se Premium Turbo Auto
Vauxhall	Corsa	Petrol	Corsa Se Nav Turbo
Volvo	V60	Diesel	V60 Cross Country + D4 Awd A
Audi	RS Q3	Petrol	Rs Q3 Sport Ed Tfsi Quattro Sa
Rolls-Royce	Cullinan	Petrol	Cullinan
Volkswagen	Arteon	Diesel	Arteon Se Tdi S-A
Audi	A4	Petrol	A4 S Line 40 Tfsi S-A
BMW	430d	Diesel	430d xDrive
Seat	Ateca	Petrol	Ateca Xperience Tsi Evo
Vauxhall	Grandland	Petrol	Grandland X Se Turbo Auto
Mercedes	C-class	Petrol	C 300 Sport Edition Prem + A
Kia	Ceed	Diesel	Ceed 2 Crdi Isg
Peugeot	308	Petrol	308 Gt Prem Dig Sw Ptech S S A
Volvo	Xc60	Petrol	Xc60 R-Design T6 Awd Auto
Hyundai	I30	Diesel	I30 Se Connect Mhev Crdi
Ford	Focus	Petrol	Focus St-Line Edition Mhev
Ford	Fiesta	Diesel	Fiesta Titanium Tdci
Fiat	Panda	Petrol	Panda Wild Twinair 4X4
Audi	A1	Petrol	A1 S Line Black Ed 30 Tfsi
Ford	S-Max	Diesel	S-Max Titanium Ecoblue 4X4
Peugeot	Expert	Diesel	Expert S L1 Bluehdi
Mercedes	A-class	Petrol	A 220 Amg Line Premium + Auto
Seat	Alhambra	Petrol	Alhambra Se Tsi
Kia	Sportage	Diesel	Sportage Gt-Line Crdi Isg
Ford	Kuga	Diesel	Kuga St-Line Tdci Auto
Jeep	Renegade	Diesel	Renegade Limited Multijet Ii A
Jeep	Renegade	Diesel	Renegade Night Eagle Mjet Ii
Nissan	370Z	Petrol	370Z 50Th Anniversary V6 Auto
Land Rover	Range Rover	Hybrid	NaN
Mercedes	A-class	Diesel	A 200 D Sport Premium + Auto
Volkswagen	Golf	Diesel	Golf Sv Gt Tdi
Seat	Tarraco	Diesel	Tarraco X-Lnc 1St Ed+Tdi 4D Sa
Volkswagen	Tiguan	Petrol	Tiguan R-Line Tsi Evo S-A
Mercedes	C-class	Diesel	C 220 Amg Line Edition D 4M A
Ford	Mondeo	Diesel	Mondeo Titanium Edition Tdci A
Mercedes	B-class	Diesel	B 200 Amg Line Premium D Auto
BMW	M4	Petrol	M4 CS
Audi	A4	Diesel	A4 Technik 30 Tdi Mhev S-A
Mercedes	B-class	Petrol	B 180 Sport Premium + Auto
Kia	Sorento	Diesel	Sorento Gtline S Crdi Isg 4X4A
Ford	Kuga	Diesel	Kuga Titanium Edition Ecoblue
Skoda	Superb	Petrol	Superb Sportline Tsi S-A
Mercedes	G-class	Petrol	Amg Gt R Premium Auto
Volvo	V60	Diesel	V60 Momentum + D4
Audi	S5	Diesel	S5 Tdi Mhev Quattro Auto
Mercedes	E-class	Hybrid	E 300 Se Premium De Auto
Renault	Kadjar	Diesel	Kadjar S Edition Blue Dci
Mercedes	C-class	Petrol	C 180 Amg Line Premium Auto
BMW	M240i	Petrol	M240i
Peugeot	E-Traveller	Electric	E-Traveller Active
Volkswagen	Golf	Petrol	Golf Gt Tsi Evo S-A
Audi	A5	Petrol	A5 Sport 35 Tfsi Mhev S-A
Volvo	Xc40	Petrol	Xc40 R-Design Pro T2
Volkswagen	Golf	Diesel	Golf Sv Gt Tdi S-A
Kia	Rio	Petrol	Rio 3 Auto
Volkswagen	California	Diesel	California Ocean Tdi S-A
Toyota	C-Hr	Petrol	C-Hr Design Hev Cvt
Kia	Xceed	Diesel	Xceed 2 Crdi Isg
Mercedes	C-class	Diesel	C 220 Amg Line Premium+ D 4M A
Renault	Kadjar	Diesel	Kadjar Play Blue Dci
Mercedes	V-class	Diesel	V 300 Amg Line D Auto
Peugeot	3008	Petrol	3008 Gt Line Puretech S S
Ford	Tourneo	Diesel	Tourneo Custom 320 Tnium Eblue
Dacia	Duster	Petrol	Duster Comfort Sce 4X2
Hyundai	I30	Diesel	I30 Premium Se Crdi S-A
Audi	SQ7	Diesel	Sq7 Vorsprung Tdi Mhev Quat A
Audi	A4	Diesel	A4 Allroad Vor 40Tdi Mhev Q Sa
Audi	SQ2	Petrol	Sq2 Tfsi Quattro S-A
Vauxhall	Astra	Diesel	Astra Ulitmate Nav Turbo D
Skoda	Octavia	Petrol	Octavia Vrs Challenge Tsi
Volkswagen	Arteon	Diesel	Arteon Elegance Tdi 4Motion Sa
MG	Zs	Petrol	Zs Excite
Kia	Sportage	Petrol	Sportage Gt-Line S Isg 4X4 S-A
Peugeot	308	Diesel	308 Gt Line Bluehdi S S
Audi	RS 4	Petrol	Rs 4 Vorsprung Tfsi Quattro A
Audi	Q2	Diesel	Q2 Sport 35 Tdi Quattro S-A
Vauxhall	Insignia	Diesel	Insignia Se Nav Cdti
Vauxhall	Crossland	Petrol	Crossland X Griffin Turbo
Mercedes	B-class	Petrol	B 180 Amg Line
Kia	Ceed	Petrol	Ceed Gt-Line Lunar Edition Isg
Tesla	Model X	Electric	Model X Long Range Awd
Mercedes	C-class	Petrol	C 200 Sport Auto
MG	3	Petrol	3 Exclusive Nav Vti-Tech
Porsche	718	Petrol	718 Boxster S S-A
Suzuki	Swift	Petrol	Swift Sz-T Dualjet Mhev Cvt
Volvo	V90	Petrol	V90 B6 Mhev Awd Auto
Ford	Kuga	Diesel	Kuga Titanium X Edition Tdci A
Seat	Ateca	Petrol	Ateca Cup Ltd Ed Akr Tsi 4D Sa
Renault	Clio	Diesel	Clio Iconic Dci
Citroen	C3	Petrol	C3 Shine Puretech S S
Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev4X4 Sa
Kia	Niro	Electric	Niro 4 + Ev
Skoda	Kamiq	Petrol	Kamiq Monte Carlo Tsi
Jeep	Renegade	Petrol	Renegade S Limited 4X4 Auto
Ford	Mustang	Electric	Mustang Mach-E Ext Range Awd
Mercedes	S-class	Diesel	Slk 230 Kompressor Auto
DS	3	Electric	Ds 3 Crossback Prestige Ev
Volkswagen	Id3	Electric	Id3 Style
Toyota	Prius	Petrol	Prius Bness Ed + Vvt-I Awd Cvt
Hyundai	I10	Petrol	I10 Premium Se Auto
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 Bjet Mhev Agrp
Volvo	Xc90	Diesel	Xc90 Rdesign Pro B5 Mhev Awd A
Nissan	Micra	Petrol	Micra Tekna Ig-T
Citroen	Berlingo	Diesel	Berlingo Flair Xtr Bluehdi S S
Vauxhall	Crossland	Diesel	Crossland X Griffin Turbo D A
Toyota	Yaris	Petrol	Yaris Gr-Sport Vvt-I Hev Cvt
Seat	Ateca	Diesel	Ateca Xperience Lux Tdi
Audi	A3	Petrol	A3 Sport 35 Tfsi
Audi	Q5	Petrol	Q5 Sport 45 Tfsi Quattro S-A
Kia	Sportage	Petrol	Sportage Gt-Line Isg 4X4 S-A
Toyota	Corolla	Petrol	Corolla Icon Vvt-I
Smart	Eq	Electric	Eq Forfour Prime Premium 22 Kw
Hyundai	I30	Petrol	I30 Se Nav T-Gdi S-A
Mercedes	C-class	Petrol	C 300 Amg Line Premium + Auto
Mercedes	E-class	Petrol	Amg E 63 S 4Matic+ Auto
Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi 4D Sa
Mercedes	G-class	Diesel	Glc 220 D 4M Amg Line Prem + A
Mercedes	G-class	Petrol	Amg Glc 63 4Matic + Auto
Ford	Kuga	Hybrid	Kuga Titanium Phev Cvt
Vauxhall	Astra	Diesel	Astra Business Ed Nav T D A
Nissan	Qashqai	Diesel	Qashqai Tekna Dci 4X4
Volkswagen	Touran	Petrol	Touran Se Family Tsi S-A
Smart	Eq	Electric	Eq Fortwo Prime Premium+ 22 Kw
Renault	Zoe	Electric	Zoe I Iconic Ze 50
Ford	Transit	Diesel	Transit Custom 320 Base E-Blue
Vauxhall	Grandland	Diesel	Grandland X Se Turbo D
Mercedes	V-class	Diesel	V 220 D Sport Marco Polo Auto
Kia	Niro	Electric	Niro 2 Ev
Volvo	S60	Hybrid	S60 R-Design T8 Recharge Awd A
Volvo	Xc60	Diesel	Xc60 R-Design D4 Auto
Renault	Zoe	Electric	Zoe S Edition Nav Ze 40 Auto
Volkswagen	Polo	Diesel	Polo Beats Tdi
Audi	A7	Diesel	A7 S-Ln Vorsprung45 Tdi Quat A
Fiat	500	Petrol	500 C S
Citroen	Berlingo	Petrol	Berlingo Multispace Feel
Renault	Master	Diesel	Master Sl28 Bness Engy Dci S-A
Toyota	Proace	Diesel	Proace Verso Shuttle L1 D-4D
Audi	A4	Diesel	A4 A-Road Spt 40Tdi Mhev Qt Sa
BMW	X3	Petrol	X3 M Competition
MINI	John Cooper Works	Petrol	John Cooper Works ALL4
BMW	X5	Diesel	X5 M50d
Renault	Koleos	Diesel	Koleos Iconic Blue Dci 4X4 Cvt
Dacia	Duster	Lpg	Duster Essential Lpg Tce 4X2
Ford	Focus	Petrol	Focus St-Line X Edition Auto
Mazda	3	Petrol	3 Sport Lux Mhev
BMW	218d	Diesel	218d
Volvo	V90	Diesel	V90 Cross Country D5 Awd Auto
Jaguar	F-Pace	Diesel	NaN
Volkswagen	Golf	Diesel	Golf Life Tdi
Vauxhall	Grandland	Petrol	Grandland X Se Turbo
Volvo	Xc90	Petrol	Xc90 B6 Mhev Awd Auto
Peugeot	308	Petrol	308 Allure Sw Puretech S S A
Fiat	Panda	Petrol	Panda Lounge Twinair
MG	Zs	Petrol	Zs Excite Turbo Auto
Ford	Fiesta	Petrol	Fiesta Titanium Turbo Auto
Volvo	Xc90	Diesel	Xc90 Inscrpt Pro B5 Mhev Awd A
Renault	Koleos	Diesel	Koleos Gt Line Blue Dci 4X4Cvt
Honda	Civic	Petrol	Civic Sport + Vtec
Ford	Fiesta	Petrol	Fiesta Titanium X Turbo Mhev
Audi	A4	Diesel	A4 S Line 35 Tdi S-A
Seat	Ateca	Diesel	Ateca Se Technology Tdi 4D A
Peugeot	3008	Petrol	3008 Allure Puretech S S
Ford	Tourneo	Diesel	Tourneo Connect Gr T-Nium Tdci
Renault	Megane	Diesel	Megane Iconic Blue Dci
BMW	M760Li	Petrol	M760Li xDrive
BMW i	i3s	Electric	i3s 94
Porsche	Panamera	Petrol	Panamera 4 Sport Turismo S-A
Ford	Ecosport	Diesel	Ecosport Titanium Ecoblue
Mercedes	A-class	Petrol	A 200 Sport Executive Auto
Ford	Kuga	Diesel	Kuga Titanium Ecoblue Auto
Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet Mhev
Volkswagen	Touran	Petrol	Touran Se Tsi
Vauxhall	Grandland	Diesel	Grandland X Tech Ln Nav T D Ss
Alfa Romeo	Stelvio	Diesel	Stelvio Nero Edizione Td Awd A
Volkswagen	Transporter	Diesel	Transporter Se Tdi
Ford	Transit	Diesel	Transit Custom 320Nuget Eblu A
Ford	Focus	Petrol	Focus Titanium X
Audi	A3	Diesel	A3 S Lne Blk Ed 40 Tdi Quat Sa
Seat	Tarraco	Petrol	Tarraco Se Tsi Evo S-A
Volvo	V60	Diesel	V60 Momentum + D3 Auto
Porsche	718	Petrol	718 Boxster S
Audi	A7	Diesel	A7 S Line Black Ed 40 Tdi S-A
Nissan	Micra	Petrol	Micra Tekna Dig-T
Mercedes	A-class	Petrol	A 180 Amg Line Executive Auto
Ford	Mondeo	Diesel	Mondeo Titanium Ed Econet Tdci
Audi	TT	Petrol	Tts Tfsi Quattro S-A
Mercedes	E-class	Diesel	E 220 D Amg Line Premium+ Auto
Citroen	C5	Petrol	C5 Aircross Feel Puretech S S
Mercedes	G-class	Petrol	Gle 450 Amg Line Prem + 4M A
Mercedes	E-class	Petrol	E 450 Amg Line 4Matic Auto
Seat	Ateca	Petrol	Ateca Fr Sport Tsi Evo S-A
Mazda	6	Petrol	6 Se-L Nav + Auto
Nissan	Qashqai	Diesel	Qashqai Tekna + Dci S-A
Seat	Ibiza	Petrol	Ibiza Se Technology Mpi
Skoda	Superb	Petrol	Superb Se Technology Tsi
Mazda	3	Petrol	3 Gt Sport Tech Mhev 4X4
Audi	Q3	Petrol	Q3 S Ln Blk Ed 35 Tfsi Mhev Sa
Volkswagen	T-Roc	Diesel	T-Roc Se Tdi S-A
Renault	Clio	Petrol	Clio Rs Line Bose Tce
Ford	Mondeo	Petrol	Mondeo Zetec Tdci 4X4
Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet
Vauxhall	Insignia	Diesel	Insignia Design Turbo D Auto
Ford	Kuga	Petrol	Kuga Zetec
Audi	A5	Diesel	A5 S Line Ed 1 40 Tdi Quat S-A
Volkswagen	Tiguan	Petrol	Tiguan R-Line Tech Tsi 4M Sa
Peugeot	2008	Diesel	2008 Allure Premium Bluehdi Ss
Toyota	C-Hr	Petrol	C-Hr Dynamic
Volkswagen	Touran	Diesel	Touran S Tdi S-A
Volkswagen	Golf	Petrol	Golf Match Edition Tsi Evo S-A
Volvo	Xc60	Diesel	Xc60 R-Design Pro B5 Mhev Auto
Volvo	Xc40	Diesel	Xc40 Momentum Pro D3
Kia	Picanto	Petrol	Picanto X-Line
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T Boosterjet A
Mercedes	A-class	Diesel	A 180 Amg Line Premium + D A
Audi	A3	Petrol	A3 Se Technik 35 Tfsi
Volvo	Xc60	Diesel	Xc60 R-Design B4 Awd Auto
Audi	A1	Petrol	A1 Citycarver 30 Tfsi S-A
Peugeot	208	Petrol	208 Active Puretech S S Auto
Vauxhall	Grandland	Petrol	Grandland X Se Premium Turbo
Audi	A4	Diesel	A4 S Line 40 Tdi Quattro S-A
Volvo	Xc60	Hybrid	Xc60 Inscript T6 Rcharge Awd A
Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D 4X4
Audi	Q2	Petrol	Q2 S Line 35 Tfsi
Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Shvs
Audi	Q3	Petrol	Q3 Sport 35 Tfsi
Toyota	Corolla	Petrol	Corolla Excel Hev Cvt
Mercedes	E-class	Petrol	E 350 Amg Line Auto
Audi	R8	Petrol	R8 Performance V10 Quattro S-A
Volvo	V60	Diesel	V60 Inscription + D4
Seat	Tarraco	Petrol	Tarraco X-Lnc 1St Ed Tsi Evo
Mercedes	C-class	Petrol	C 200 Sport Premium Auto
Mercedes	C-class	Petrol	C 300 Amg Line Exec Mhev 4M A
Lexus	Ls	Petrol	Ls 500H Takumi 4X4 Auto
Renault	Grand	Diesel	Grand Scenic Iconic Blue Dci A
Peugeot	3008	Petrol	3008 Gt Puretech S S Auto
Peugeot	2008	Petrol	2008 Gt Premium Puretech S S A
Citroen	Spacetourer	Diesel	Spacetourer Flair Bluehdi S S
Audi	A3	Diesel	A3 Se Technik 35 Tdi
Vauxhall	Combo	Petrol	Combo Life Elite S S Auto
Hyundai	Ix20	Petrol	Ix20 Premium Nav Mpi
Mercedes	G-class	Petrol	Gla 200 Amg Line Edition A
Mercedes	C-class	Petrol	Amg C 43 Edition Prem + 4M A
Volvo	Xc40	Diesel	Xc40 R-Design Pro D3 Awd Auto
Volvo	Xc60	Petrol	Xc60 R-Design Pro T5 Awd Auto
Audi	A6	Diesel	A6 Sport 50 Tdi Quattro S-A
Vauxhall	Corsa	Petrol	Corsa Sri Nav Turbo
Renault	Captur	Hybrid	Captur S Edition Bose E-Tech A
Volvo	V90	Petrol	V90 Inscription B5 Mhev Auto
Peugeot	5008	Diesel	5008 Gt Line Bluehdi S S
Honda	Jazz	Petrol	Jazz Sport I-Vtec Cvt
Porsche	Macan	Petrol	Macan S S-A
Audi	E-Tron	Electric	E-Tron S Line 50 Quattro
Volkswagen	T-Roc	Diesel	T-Roc Black Edition Tdi Scr
Fiat	500	Petrol	500 C Rockstar
MINI	Cooper S	Diesel	Cooper SD ALL4
Audi	SQ7	Petrol	Sq7 Vorsprung Tfsi Quattro A
Vauxhall	Insignia	Diesel	Insignia Elite Nav Turbo D A
Mercedes	A-class	Hybrid	A 250 Amg Line Executive E A
Audi	Q7	Diesel	Q7 Sport 50 Tdi Mhev Quattro A
Skoda	Fabia	Petrol	Fabia Colour Edition Mpi
Vauxhall	Vivaro-E	Electric	Vivaro-E Life Elite
Seat	Leon	Diesel	Leon Fr Black Edition Tdi
Mercedes	C-class	Diesel	C 220 Sport D Auto
Lexus	Nx	Petrol	Nx 300H Premium Cvt
Volvo	V90	Petrol	V90 Cross Country T6 Awd Auto
Ford	Mondeo	Diesel	Mondeo St-Line Ed Eblue 4X4 A
Mazda	3	Petrol	3 Gt Sport Tech Mhev 4X4 Auto
Ford	Kuga	Diesel	Kuga St-Line X Ecoblue
Ford	Kuga	Diesel	Kuga Titanium Ed Eblue Mhev
Audi	A7	Petrol	A7 S Line 45 Tfsi Quattro S-A
Mercedes	C-class	Hybrid	C 300 Sport Edition Prem E A
Peugeot	508	Hybrid	508 Allure Sw S S Phev Auto
Peugeot	Elddis	Diesel	Elddis Accordo Envy 135
Mazda	3	Petrol	3 Se-L Lux Mhev Auto
Vauxhall	Grandland	Petrol	Grandland X Design Line T Ss A
Seat	Arona	Petrol	Arona Xcellence Tsi
Audi	A5	Petrol	A5 S Line 35 Tfsi Mhev S-A
Volvo	Xc40	Petrol	Xc40 Momentum Pro T4 Awd Auto
Toyota	Prius	Petrol	Prius Plus Icon Tss Hev Cvt
Vauxhall	Insignia	Petrol	Insignia Gsi Turbo 4X4 Auto
Audi	Q3	Petrol	Q3 S Line Vor 45 Tfsi Quat S-A
Skoda	Karoq	Petrol	Karoq Se L Tsi
Audi	Q7	Diesel	Q7 Sport 45 Tdi Quattro Auto
Fiat	500	Petrol	500 C Pop
Citroen	C4	Diesel	C4 Gr Stourer Sense Bhdi Ss A
Seat	Arona	Petrol	Arona Xcellence Ecotsi S-A
Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi 4Motion S-A
BMW	316d	Diesel	316d
Mitsubishi	Eclipse	Petrol	Eclipse Cross 4 4X2
Citroen	C3	Diesel	C3 Shine + Bluehdi S S
Ford	Transit	Diesel	Transit Custom 320 Sport Eblue
Audi	A5	Diesel	A5 S Line 40 Tdi Quattro S-A
Ford	Puma	Petrol	Puma Titanium Mhev
Volkswagen	Arteon	Petrol	Arteon Elegance Tsi 4Motion Sa
Abarth	595C	Petrol	595C
Volkswagen	Arteon	Diesel	Arteon Se Tdi
Renault	Clio	Petrol	Clio Rs Line Bose Edition Tce
Audi	RS 6	Petrol	Rs 6 Crbn Blk Tfsi Mhev Quat A
Audi	A3	Petrol	A3 S Line Edition 1 35 Tfsi
Skoda	Karoq	Diesel	Karoq Se Drive Tdi Scr
Ford	Kuga	Diesel	Kuga Zetec Tdci 4X4
Peugeot	508	Hybrid	508 Gt S S Phev Auto
Honda	Civic	Diesel	Civic Sr I-Dtec
Fiat	Panda	Petrol	Panda Waze Edition Mhev
Renault	Captur	Petrol	Captur Gt Line Tce
Ford	Mustang	Petrol	Mustang Ecoboost
Mitsubishi	Eclipse	Petrol	Eclipse Cross 4 Cvt
Dacia	Logan	Petrol	Logan Mcv Comfort Tce
Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue 4X4 A
Seat	Ibiza	Petrol	Ibiza Xcellence Lux Tsi S-A
Renault	Clio	Petrol	Clio Rs Line Bose Tce Auto
Kia	Optima	Diesel	Optima 2 Crdi Isg
BMW	X1	Diesel	X1 sDrive18d
Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi S S A
Volvo	V90	Petrol	V90 C-Country B5 Mhev Awd Auto
Volkswagen	Tiguan	Petrol	Tiguan Match Tsi Evo
Mercedes	A-class	Petrol	A 180 Amg Line Executive
Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci
Renault	Trafic	Diesel	Trafic Sl27 Business Dci
Peugeot	Traveller	Diesel	Traveller Business Bluehdi
Alfa Romeo	Giulia	Petrol	Giulia Super Tb Auto
Volkswagen	Passat	Diesel	Passat R-Line Tdi
Mercedes	G-class	Petrol	Amg Gle 53 Premium+ Mhev 4M+ A
Skoda	Superb	Diesel	Superb Laurin &Klem Tdi 4X4 Sa
Renault	Captur	Petrol	Captur S Edition Bose Tce Auto
Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi
Volvo	V60	Diesel	V60 Momentum Pro D3 Auto
Peugeot	308	Petrol	308 Alure Prem Dig Sw Ptech Ss
Volvo	Xc40	Petrol	Xc40 Momentum T3 Auto
Skoda	Kodiaq	Petrol	Kodiaq Sportline Tsi S-A
Fiat	500	Petrol	500 Lounge S-A
Volvo	Xc40	Diesel	Xc40 R-Design Pro D3 Auto
Mercedes	C-class	Diesel	Cla 200 Amg Line Premium D A
Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D Auto
Citroen	C1	Petrol	C1 Shine
Mercedes	G-class	Diesel	Gla 200 Amg Line D Auto
Peugeot	208	Electric	208 Gt Line Ev
Mazda	6	Diesel	6 Sport Nav + D
Audi	RS 4	Petrol	Rs 4 Audi Sport Ed Tfsi Quat A
Ford	Mustang	Petrol	Mustang Bullitt
Mercedes	G-class	Hybrid	Gle 350 Amg Line Prem+ De 4M A
BMW	520d	Diesel	520d
Audi	A3	Diesel	A3 Sport 30 Tdi
Hyundai	Tucson	Diesel	Tucson Prm Se48V Mhev Crdi 2Wd
Seat	Arona	Diesel	Arona Se Technology Lux Tdi
Citroen	C4	Diesel	C4 Gr Stourer Flair Bhdi Ss A
Audi	R8	Petrol	R8 Prfrm Carbn Blk V10 Quat Sa
Hyundai	I800	Diesel	I800 Se Nav Crdi
Peugeot	108	Petrol	108 Active Top
Hyundai	I30	Diesel	I30 Se Connect Mhev Crdi Auto
Skoda	Scala	Petrol	Scala Se Tsi S-A
Seat	Ibiza	Petrol	Ibiza Xcellence Lux Tsi
Vauxhall	Insignia	Petrol	Insignia Design Turbo
Porsche	Macan	Petrol	Macan Turbo S-A
Mercedes	V-class	Diesel	V 220 D Amg Ln Marcopolo Hzn A
Fiat	Panda	Petrol	Panda City Cross
Tesla	Model 3	Electric	Model 3 Long Range Awd
Peugeot	508	Diesel	508 Gt Bluehdi S S Auto
Kia	Sorento	Petrol	Sorento 2 Hev Awd Auto
Renault	Zoe	Electric	Zoe I Dynamique Nav Ze 40 Auto
Volkswagen	Passat	Hybrid	Passat Gte S-A
Porsche	911	Petrol	911 Targa 4S Heritage
Fiat	500	Petrol	500 Launch Edition Mhev
Seat	Ibiza	Petrol	Ibiza Fr Tsi S-A
Land Rover	Discovery	Diesel	NaN
Fiat	500	Petrol	500 Dolcevita S-A
Peugeot	508	Diesel	508 Active Sw Bluehdi S S
Ford	Kuga	Diesel	Kuga St-Line Tdci
Dacia	Sandero	Petrol	Sandero Essential Sce
BMW	X1	Diesel	X1 xDrive20d
Kia	Rio	Petrol	Rio Gt-Line S Isg
Kia	Proceed	Petrol	Proceed Gtline Lunar Ed Isg Sa
Seat	Arona	Diesel	Arona Se Technology Tdi
MINI	One	Petrol	One
Renault	Master	Diesel	Master Mm33 Business Dci
Mercedes	B-class	Petrol	B 200 Amg Line Auto
Volvo	S60	Hybrid	S60 P-Star Engrd T8 Phev Awd A
Mercedes	B-class	Diesel	B 200 Amg Line Executive D A
Mercedes	G-class	Diesel	Gla 200 Amg Line Exec D 4M A
Lexus	Ux	Petrol	Ux 250H F Sport 4X2 Cvt
BMW	730d	Diesel	730d xDrive
Kia	Sportage	Diesel	Sportage 1 Crdi Isg
Ford	Independence	Diesel	Independence Twin
BMW	M5	Petrol	M5 Competition
Hyundai	Ioniq	Petrol	Ioniq Se Hev S-A
Mercedes	A-class	Diesel	A 180 Amg Line D
Jaguar	XF	Petrol	NaN
Mercedes	E-class	Diesel	E 300 D Amg Line Premium + A
Hyundai	Kona	Electric	Kona Premium Se Ev Auto
Citroen	C3	Petrol	C3 Aircross Feel Puretech S S
Volvo	V60	Petrol	V60 Inscription + T5 Auto
Peugeot	5008	Petrol	5008 Gt Line Premium P-Tech Ss
Mercedes	S-class	Diesel	S 350 D L Amg Line Premium A
Volkswagen	Golf	Diesel	Golf Se Navigation Tdi
Vauxhall	Corsa	Petrol	Corsa Se Turbo Auto
Kia	Rio	Petrol	Rio 1 Isg
Volkswagen	Sharan	Diesel	Sharan Sel Tdi
BMW	530e	Hybrid	530e xDrive iPerformance
Mercedes	A-class	Petrol	A 200 Sport Auto
Volkswagen	Polo	Petrol	Polo United Tsi S-A
Volkswagen	Touran	Diesel	Touran R-Line Tdi S-A
Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Mhev
Volvo	Xc90	Diesel	Xc90 Momentum Pro B5Mhev Awd A
Audi	Q2	Petrol	Q2 S Line Vorsprung 35 Tfsi
Toyota	C-Hr	Petrol	C-Hr Design
Peugeot	Elddis	Diesel	Elddis Accordo Envy 120
Mercedes	G-class	Hybrid	Gle 350 Amg Line De 4Matic A
Fiat	500	Petrol	500 Star
Mercedes	A-class	Petrol	Amg A 35 4Matic Premium Auto
Renault	Grand	Petrol	Grand Scenic Signature Tce A
Volvo	Xc40	Diesel	Xc40 Inscription D3 Auto
Honda	Jazz	Petrol	Jazz Sport Navi I-Vtec Cvt
Audi	A4	Diesel	A4 Se 35 Tdi S-A
Ford	Focus	Diesel	Focus Vignale Tdci Auto
Mercedes	C-class	Diesel	C 300 Amg Line Premium D 4M A
Skoda	Octavia	Diesel	Octavia Se L Tdi S-A
Porsche	718	Petrol	718 Cayman S
Nissan	Leaf	Electric	Leaf E + 3Zero
Ford	Mondeo	Diesel	Mondeo Zetec Edition Ecoblue
BMW	220i	Petrol	220i
Mercedes	E-class	Diesel	E 220 Amg Ln Ngt Ed Prm+D 4M A
Citroen	C4	Diesel	C4 Cactus Flair Bluehdi S S
Volkswagen	Golf	Petrol	Golf
Vauxhall	Insignia	Petrol	Insignia Sri Turbo Auto
Abarth	595	Petrol	595 Trofeo
Mercedes	E-class	Diesel	E 400 Amg Line Edition D 4M A
Volvo	Xc40	Diesel	Xc40 Momentum D3 Auto
BMW	620d	Diesel	620d
Porsche	Taycan	Electric	Taycan Turbo S
Mercedes	G-class	Hybrid	Gla 250 Exclusive Edition E A
Mercedes	C-class	Hybrid	C 300 Amg Line Edition E Auto
Peugeot	2008	Petrol	2008 Allure Puretech S S Auto
Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Mhev
Toyota	Aygo	Petrol	Aygo X-Cite Tss Vvt-I
Ford	Transit	Diesel	Transit Custom 320Trend Tdci A
Volvo	Xc40	Petrol	Xc40 R-Design T4 Auto
Peugeot	208	Electric	208 Allure Ev
Mercedes	B-class	Petrol	B 220 Amg Line Executive 4M A
Mercedes	S-class	Petrol	Sl 400 Amg Line Premium Auto
Mercedes	C-class	Petrol	C 200 Sport Premium + Auto
BMW	125d	Diesel	125d
Volkswagen	Passat	Petrol	Passat Se Nav Tsi Evo
Mercedes	G-class	Hybrid	Glc 300 Amg Ln Ultimate E 4M A
Mercedes	C-class	Petrol	C 200 Amg Line Premium+ 4Mat A
Volvo	Xc90	Hybrid	Xc90 Inscrp Pro T8Rchrge Awd A
Volvo	S90	Petrol	S90 R-Design + T4 Auto
Vauxhall	Corsa	Petrol	Corsa Se Turbo
Audi	A7	Diesel	A7 S Line 40 Tdi S-A
Seat	Alhambra	Diesel	Alhambra Xcellence Tdi S-A
Seat	Ateca	Petrol	Ateca Se Tech Ecomotive Tsi
Dacia	Sandero	Petrol	Sandero Stepway Essential Sce
BMW	X2	Diesel	X2 xDrive18d
Honda	Hr-V	Petrol	Hr-V Ex I-Vtec
Mercedes	C-class	Hybrid	C 300 Amg Line Ed Premium De A
Mercedes	B-class	Petrol	B 220 Amg Line Premium 4M A
Seat	Ateca	Petrol	Ateca Fr Tsi 4Drive S-A
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz-T B-Jet Mhev
Peugeot	5008	Diesel	5008 Active Bluehdi S S Auto
Mitsubishi	Mirage	Petrol	Mirage 3
Renault	Captur	Diesel	Captur Iconic Dci Auto
Ford	Transit	Petrol	Transit 290 Trend Ecoblue
Vauxhall	Grandland	Diesel	Grandland X Elite Nav Turbo D
BMW	M4	Petrol	M4
Skoda	Kodiaq	Petrol	Kodiaq Se Tsi
Seat	Tarraco	Petrol	Tarraco Fr Tsi 4Drive S-A
Vauxhall	Grandland	Petrol	Grandland X Tech Line Nav T Ss
Fiat	Tipo	Petrol	Tipo Sport T-Jet
Renault	Clio	Diesel	Clio Iconic Bose Blue Dci
Skoda	Octavia	Petrol	Octavia Se Drive Tsi
Mercedes	G-class	Hybrid	Glc 300 Amg Line Prem De 4M A
Mercedes	C-class	Petrol	Amg Cla 45 S 4Matic+ Auto
Mazda	6	Petrol	6 Sport Nav +
Vauxhall	Crossland	Petrol	Crossland X B-Ness Ed Nav T A
Seat	Tarraco	Petrol	Tarraco Xcellence Tsi 4D Sa
Peugeot	308	Petrol	308 Gt Digital Sw P-Tech S S A
Peugeot	3008	Hybrid	3008 Allure S S Phev Auto
Mercedes	C-class	Petrol	Amg Cla 45 S 4Matic+ Plus Auto
Mazda	Cx-30	Petrol	Cx-30 Se-L Lux Mhev Auto
Skoda	Kamiq	Diesel	Kamiq Se L Tdi S-A
Audi	A6	Petrol	A6 Sport 55 Tfsi Quattro S-A
Hyundai	I30	Petrol	I30 Se Nav T-Gdi
Volkswagen	Golf	Diesel	Golf Gt Edition Tdi
Ford	Focus	Petrol	Focus Active X Vignale Auto
Vauxhall	Vivaro	Diesel	Vivaro 2700 Edition S S
Ford	Fiesta	Petrol	Fiesta St-3 Turbo
Skoda	Superb	Petrol	Superb Sportline + Tsi S-A
Audi	A6	Petrol	A6 S Line 45 Tfsi Mhev Quat Sa
Skoda	Octavia	Petrol	Octavia Se Technology Tsi S-A
Audi	S5	Diesel	S5 Vorsprung Tdi Mhev Quat A
Renault	Clio	Petrol	Clio Iconic Bose Tce
Mercedes	E-class	Diesel	E 220 D Se Auto
Dacia	Sandero	Diesel	Sandero Stepway Comfort B-Dci
BMW	520d	Diesel	520d EffDyn Edition
Mercedes	A-class	Petrol	A 180 Se Executive Auto
Hyundai	I30	Petrol	I30 N Line Mhev T-Gdi Auto
Audi	Q8	Diesel	Q8 S-Ln Vorsprung50 Tdi Quat A
Renault	Clio	Petrol	Clio Play Sce
Hyundai	Ix20	Petrol	Ix20 Premium Nav Mpi Auto
Nissan	Juke	Petrol	Juke Acenta Dig-T
Ford	Puma	Petrol	Puma St-Line X Auto
Hyundai	Ioniq	Hybrid	Ioniq Premium Se Phev S-A
Audi	A1	Petrol	A1 Citycarver 35 Tfsi
Honda	Hr-V	Diesel	Hr-V Se I-Dtec
Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi Evo
Mercedes	B-class	Diesel	B 220 Amg Line Premium + D A
Jeep	Wrangler	Petrol	Wrangler Sahara Unlimited Auto
Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Auto
Peugeot	508	Diesel	508 Gt Line Sw Bluehdi S S
DS	7	Diesel	Ds7 C-Back Pfrmnc Ln Bhdi Ss A
Peugeot	5008	Diesel	5008 Active Premium Bluehdi Ss
Seat	Ibiza	Petrol	Ibiza Se Tsi
Dacia	Sandero	Lpg	Sandero Stpway Comfort Lpg Tce
Audi	A5	Diesel	A5 S Ln Vor 40Tdi Mhev Quat Sa
Volkswagen	Sharan	Diesel	Sharan S Tdi S-A
Volkswagen	Golf	Diesel	Golf Sv Match Tdi
Volvo	S90	Diesel	S90 R-Design + D4 Auto
Vauxhall	Insignia	Diesel	Insignia Elite Nav Ecotec D
Ford	Kuga	Diesel	Kuga Titanium First Ed Eblue A
Hyundai	Tucson	Diesel	Tucson Premium Crdi 2Wd S-A
Toyota	C-Hr	Petrol	C-Hr Dynamic Hev Cvt
Volvo	Xc60	Diesel	Xc60 R-Design B6 Mhev Awd Auto
Peugeot	208	Electric	208 Gt Premium Ev
Volkswagen	Golf	Petrol	Golf Gti Tsi S-A
BMW	740Le	Hybrid	740Le xDrive iPerformance
Peugeot	5008	Diesel	5008 Gt Line Premium B-Hdi S S
Mazda	Mx-5	Petrol	Mx-5 Rf Sport
Ford	Kuga	Diesel	Kuga Zetec Tdci Auto
Mercedes	S-class	Petrol	S 450 L Grand Ed Exec Mhev A
Mercedes	G-class	Petrol	Gla 200 Urban Edition + A
Hyundai	I10	Petrol	I10 Se Auto
DS	7	Petrol	Ds7 C-Back Ultraprstg Ptch Ssa
Mercedes	E-class	Hybrid	E 300 Amg Line Premium E Auto
Kia	Sportage	Diesel	Sportage 4 Crdi Isg
Nissan	Juke	Petrol	Juke Tekna + Dig-T
Lexus	Lc	Petrol	Lc 500H Sport Auto
Mercedes	G-class	Hybrid	Gla 250 Exclsive Ed Prem + E A
Volkswagen	Golf	Petrol	Golf Se Tsi Bmt S-A
Mercedes	C-class	Diesel	C 220 Amg Line Premium D 4M A
Audi	A8	Diesel	A8 50 Tdi Quattro Auto
Skoda	Fabia	Petrol	Fabia Monte Carlo Tsi
Volkswagen	Tiguan	Petrol	Tiguan Aspace Match Tsi Evo Sa
Mazda	Mx-5	Petrol	Mx-5 Rf Sport Tech Auto
Nissan	Micra	Petrol	Micra Acenta Ig-T Cvt
BMW	530d	Diesel	530d
Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo
Vauxhall	Crossland	Diesel	Crossland X Elite Turbo D
Porsche	718	Petrol	718 Boxster Gts
BMW	435d	Diesel	435d xDrive
Kia	Sportage	Petrol	Sportage Platinum Edition Isg
Ford	Fiesta	Petrol	Fiesta Zetec Turbo Auto
Mercedes	C-class	Hybrid	C 300 Sport Ed Premium De Auto
Peugeot	308	Diesel	308 Allure Prem Dig Sw Bhdi Ss
BMW	640d	Diesel	640d
Skoda	Octavia	Petrol	Octavia Sportline Tsi
Audi	TT	Petrol	Tt Sport 40 Tfsi S-A
Mercedes	A-class	Diesel	A 180 D Sport Premium + Auto
Seat	Ibiza	Petrol	Ibiza Fr Sport Tsi
Kia	Sportage	Petrol	Sportage 3 Isg 4X4
Renault	Clio	Petrol	Clio S Edition Tce Auto
Audi	TT	Petrol	Tt Sport 45 Tfsi
Mercedes	E-class	Diesel	E 400 Amg Line Prem + D 4M A
Kia	Xceed	Petrol	Xceed First Edition Isg S-A
Vauxhall	Corsa	Petrol	Corsa Sri Turbo
Skoda	Superb	Diesel	Superb Se L Tdi
Audi	A7	Petrol	A7 S-Ln Blk Ed45 Tfsi Quat S-A
Vauxhall	Crossland	Petrol	Crossland X Tech Ln Nav Eco Ss
Jeep	Compass	Petrol	Compass Nightegle M-Air Ii 4X2
Audi	A5	Electric	A5 Se Tfsi
Volkswagen	Tiguan	Diesel	Tiguan Aspace Match Tdi 4M Sa
Mitsubishi	Mirage	Petrol	Mirage Design Pro Cvt
Ford	Transit	Diesel	Transit Custom 320Sprt Eblue A
Vauxhall	Grandland	Petrol	Grandland X Se Premium Turbo A
Alfa Romeo	Giulietta	Diesel	Giulietta Super Jtdm-2 S-A
Nissan	Gt-R	Petrol	Gt-R Track Edition S-A
Renault	Captur	Petrol	Captur Iconic Tce Auto
Peugeot	3008	Petrol	3008 Gt Line Puretech S S Auto
Mitsubishi	Outlander	Petrol	Outlander Black Cvt
Audi	A3	Petrol	A3 Se Technik 30 Tfsi
Mazda	Mx-5	Petrol	Mx-5 Sport Tech
Hyundai	Tucson	Diesel	Tucson Premium Se Crdi 2Wd S-A
Audi	Q2	Petrol	Q2 S Line 30 Tfsi
Volkswagen	Up	Petrol	Up R-Line
Peugeot	3008	Hybrid	3008 Gt S S Phev Auto
Audi	A4	Petrol	A4 Sport 35 Tfsi S-A
Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci Cvt
Mercedes	A-class	Diesel	A 180 Sport Executive D
Volkswagen	Touareg	Diesel	Touareg V6 Se Tdi Auto
Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi Evo
Skoda	Karoq	Diesel	Karoq Edition Tdi Scr
Seat	Ateca	Petrol	Ateca Xcellence Tsi Evo S-A
Mercedes	G-class	Petrol	Glc 300 Sport 4Matic Auto
Hyundai	Tucson	Petrol	Tucson Se Nav Gdi 2Wd
Peugeot	5008	Diesel	5008 Allure Bluehdi S S
Peugeot	308	Diesel	308 Allure Premium Dig Bhdi Ss
Mercedes	C-class	Petrol	Amg C 43 Edition Premium 4M A
Mercedes	E-class	Diesel	E 220 Amg Lne Night Ed Prm D A
Audi	Q7	Diesel	Q7 S Line 50 Tdi Mhev Quat A
Kia	Sorento	Diesel	Sorento Kx-2 Crdi Isg 4X4
Dacia	Logan	Petrol	Logan Mcv Stpway Se Twenty Tce
Dacia	Duster	Petrol	Duster Comfort Tce 4X2
Ford	Kuga	Diesel	Kuga Stln X Frst Ed Eblue 4X4A
Ford	Roller	Petrol	Roller Team Zefiro 696
Volvo	V60	Diesel	V60 C-Country B4 Mhev Awd Auto
Seat	Leon	Diesel	Leon Fr Black Edition Tdi S-A
Volkswagen	Golf	Petrol	Golf R-Line Tsi Evo
Honda	Cr-V	Petrol	Cr-V Se I-Vtec
Land Rover	Defender	Petrol	NaN
Mercedes	C-class	Diesel	C 220 Amg Line Ed Prem D A
Vauxhall	Crossland	Diesel	Crossland X B-Ness Ed Nav Td A
Nissan	Micra	Petrol	Micra N-Tec Ig-T
Ford	Fiesta	Petrol	Fiesta Titanium X Turbo Auto
Fiat	Tipo	Petrol	Tipo Mirror T-Jet
Seat	Arona	Petrol	Arona Fr Ecotsi
Renault	Master	Diesel	Master Ll35 Business Dci
Mercedes	Vito	Diesel	Vito 110Cdi Tourer Pro
Ford	Tourneo	Petrol	Tourneo Courier Zetec
Volvo	V90	Diesel	V90 Cross Country + D4 Awd A
Ford	Fiesta	Diesel	Fiesta Vignale Edition Tdci
Fiat	Panda	Petrol	Panda Waze Edition
BMW	M135i	Petrol	M135i xDrive
Volkswagen	Caddy	Diesel	Caddy Maxi C20 Life Tdi S-A
Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Agrip A
Dacia	Duster	Diesel	Duster Essential Blue Dci 4X2
BMW	220d	Diesel	220d xDrive
BMW	420i	Petrol	420i xDrive
Mercedes	C-class	Hybrid	Cla 250 Amg Line Premium + E A
Mercedes	C-class	Petrol	Cla 200 Amg Line Premium +
Volkswagen	Arteon	Petrol	Arteon Se Tsi S-A
Skoda	Fabia	Petrol	Fabia Se Drive Tsi
Volkswagen	Transporter	Diesel	Transporter T30 Highline Tdi
Honda	Jazz	Petrol	Jazz Ex Navi I-Vtec
Ford	Mondeo	Diesel	Mondeo Titanium Ed Tdci 4X4
Volkswagen	T-Roc	Petrol	T-Roc Design Tsi Evo
Audi	A3	Hybrid	A3 E-Tron S-A
Seat	Ateca	Diesel	Ateca Xcellence Tdi S-A
Mercedes	E-class	Electric	Eqv 300 Sport
Mercedes	E-class	Hybrid	E 300 Amg Line Premium + E A
Seat	Leon	Petrol	Leon Fr Black Edition Tsi Evo
Toyota	Proace	Diesel	Proace Verso Shuttle L2 D-4D
Toyota	Prius	Hybrid	Prius Business Ed + Phev Cvt
Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Q-Rifoglio Awd A
Hyundai	I30	Petrol	I30 Se Connect Mhev T-Gdi
Volkswagen	Caravelle	Diesel	Caravelle Se Tdi S-A
Peugeot	Rifter	Petrol	Rifter Gt Line Puretech S S
Mazda	2	Petrol	2 Se-L Mhev
Audi	A3	Petrol	A3 Sport 35 Tfsi S-A
Audi	SQ8	Petrol	Sq8 Black Edition Tfsi Quat A
Ford	Freedom	Diesel	Freedom Grand Rs Auto
Skoda	Fabia	Petrol	Fabia Se L Tsi S-A
Volkswagen	High Up	Petrol	High Up
Nissan	Micra	Petrol	Micra Acenta Limited Ed Ig-T
Vauxhall	Astra	Petrol	Astra Sri Nav Turbo Cvt
Audi	A3	Petrol	A3 S Line 40 Tfsi Quattro S-A
Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi Evo S-A
Audi	R8	Petrol	R8 V10 Quattro S-A
Peugeot	208	Petrol	208 Gt Puretech S S
BMW	X3	Petrol	X3 M40i
Volvo	V60	Diesel	V60 Momentum D3
Hyundai	I30	Petrol	I30 N Performance T-Gdi
Volkswagen	Up	Petrol	Up By Beats
Renault	Clio	Hybrid	Clio Rs Line E-Tech Auto
Lexus	Rc	Petrol	Rc 300H F Sport Cvt
Skoda	Karoq	Diesel	Karoq Edition Tdi Scr 4X4 S-A
Volvo	V90	Petrol	V90 Cross Country + T6 Awd A
Mitsubishi	Outlander	Hybrid	Outlander 4Hs Phev Cvt
Hyundai	I30	Petrol	I30 N Line T-Gdi S-A
Citroen	C3	Petrol	C3 Shine + Puretech S S
Fiat	500	Petrol	500 Sport
Peugeot	3008	Hybrid	3008 Gt Premium S S Phev Auto
Mercedes	G-class	Petrol	Gla 180 Amg Line Executive A
Mercedes	E-class	Petrol	E 450 Amg Line Edition 4M A
Fiat	Qubo	Petrol	Qubo Lounge
Toyota	Aygo	Petrol	Aygo X-Play Vvt-I
Volvo	V60	Petrol	V60 R-Design B3 Mhev Auto
Peugeot	Rifter	Diesel	Rifter Horizon Re Td
Skoda	Superb	Hybrid	Superb Se Tech Iv Phev S-A
Mazda	6	Diesel	6 Se-L Nav + D Auto
BMW	330e	Hybrid	330e
Audi	TT	Petrol	Tt Sport 45 Tfsi S-A
Peugeot	5008	Diesel	5008 Gt Bluehdi S S Auto
Audi	A5	Petrol	A5 Sport 35 Tfsi S-A
Skoda	Scala	Petrol	Scala Se Tsi
Mercedes	G-class	Diesel	Gls 400 Amg Line Prem D 4Mat A
Audi	A7	Petrol	A7 Sln Blk Ed 55Tfsi Mhev Q Sa
Toyota	Rav4	Petrol	Rav4 Black Edition Hev Cvt
Volvo	Xc40	Petrol	Xc40 Inscription T5 Awd Auto
Ford	Mondeo	Diesel	Mondeo Zetec Edition Tdci
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Shvs
Audi	A5	Diesel	A5 Sport 40 Tdi Mhev Quat Sa
Mercedes	G-class	Petrol	Amg Gla 45 S 4Matic+ Plus Auto
Ford	Focus	Diesel	Focus St-Line X Ecoblue
Mercedes	C-class	Petrol	C 200 Amg Line Ed Prem Mhev A
Volkswagen	Golf	Diesel	Golf R-Line Edition Tdi S-A
Audi	A6	Petrol	A6 S Ln Blk Ed 45 Tfsi Quat Sa
Mercedes	A-class	Diesel	A 200 D Sport Executive Auto
Lexus	Ux	Petrol	Ux 250H Takumi 4X2 Cvt
Audi	Q8	Diesel	Q8 S Line 50Tdi Mhev Quattro A
Kia	Ceed	Diesel	Ceed Gt-Line Crdi Isg
Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi
Skoda	Fabia	Petrol	Fabia Se Drive Tsi S-A
Ford	Kuga	Diesel	Kuga St-Line Tdci 4X4 Auto
Audi	A5	Petrol	A5 S Line Vorsprung 40 Tfsi Sa
Audi	A4	Petrol	A4 Vsprung Aroad 45Tfsi Qto Sa
BMW	840d	Diesel	840d xDrive
Abarth	595	Petrol	595 Esseesse
Vauxhall	Astra	Petrol	Astra Ultimate Nav Turbo Cvt
Skoda	Octavia	Petrol	Octavia Se L Tsi S-A
Ford	Procab	Diesel	Procab Auto
Peugeot	308	Diesel	308 Gt Sw Bluehdi S S Auto
Vauxhall	Crossland	Diesel	Crossland X Sport Nav Prem Td
Seat	Tarraco	Diesel	Tarraco Xcellence Lux Tdi
Vauxhall	Corsa	Petrol	Corsa Se Nav
Vauxhall	Crossland	Petrol	Crossland X Elite Ecotec S S
Ford	Puma	Petrol	Puma St
Fiat	500	Petrol	500 C Lounge
Volkswagen	Touareg	Diesel	Touareg V6 Sel Tech Tdi Auto
Volkswagen	Golf	Diesel	Golf S Tdi
Peugeot	2008	Petrol	2008 Allure Premium Ptech Ss A
Peugeot	308	Diesel	308 Gti By Peugeotsport Thp Ss
Alfa Romeo	Giulia	Petrol	Giulia Nero Edizione Tb Auto
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz4 Boosterjet
Fiat	Tipo	Petrol	Tipo Lounge T-Jet
Audi	A5	Diesel	A5 S-Ln Black Ed40 Tdi Quat Sa
Mercedes	G-class	Petrol	Gla 180 Urban Edition Auto
Mercedes	C-class	Hybrid	C 300 Amg Line Premium E 4M A
Volvo	V60	Diesel	V60 R-Design D4
Toyota	Aygo	Petrol	Aygo X-Trend Tss Vvt-I Cvt
Dacia	Duster	Petrol	Duster Access Tce 4X2
Mercedes	E-class	Diesel	E 400 All Terrain Ed D 4M A
Ford	Tourneo	Diesel	Tourneo Custom 320 Ti X Eblue
Vauxhall	Astra	Petrol	Astra Sri Vx Line Nav T Cvt
Skoda	Octavia	Petrol	Octavia Se Drive Tsi S-A
Ford	Procab	Diesel	Procab
Mercedes	G-class	Petrol	Gla 180 Urban Edition
Volvo	V60	Diesel	V60 R-Design + D3
Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D
DS	7	Petrol	Ds7 C-Back Elegance Ptech Ss A
Vauxhall	Crossland	Petrol	Crossland X Se Nav
Ford	Mondeo	Diesel	Mondeo Vignale Ecoblue Auto
Skoda	Superb	Diesel	Superb Laurin &Klement Tdi S-A
Kia	Xceed	Petrol	Xceed First Edition Isg
Peugeot	Rifter	Diesel	Rifter Allure Bluehdi S S Auto
Lexus	Ux 300E	Electric	Ux 300E
Hyundai	I20	Petrol	I20 Premium Se Nav T-Gdi
Seat	Ateca	Diesel	Ateca Fr Sport Tdi S-A
Mercedes	G-class	Petrol	Gla 180 Amg Line Edition Auto
Mercedes	E-class	Hybrid	E 300 Amg Line E Auto
Citroen	C1	Petrol	C1 Airscape Urban Ride
Mercedes	E-class	Diesel	E 400 Amg Ln Ngt Ed Prm D 4M A
Volkswagen	Polo	Petrol	Polo Gti Plus Tsi S-A
Audi	S8	Petrol	S8 Tfsi Mhev Quattro Auto
Volvo	Xc60	Diesel	Xc60 Inscription B5 Awd Auto
Audi	RS 3	Petrol	Rs 3 Audi Sprt Ed Tfsi Quat Sa
Toyota	Aygo	Petrol	Aygo X-Cite Vvt-I
Mazda	Mx-5	Petrol	Mx-5 Rf Gt Sport Tech Auto
Abarth	595	Petrol	595 Turismo S-A
Audi	A6	Diesel	A6 Aroad Spt 50Tdi Mhev Quat A
Alfa Romeo	Giulietta	Diesel	Giulietta Sprint Jtdm-2 S-A
Citroen	C3	Petrol	C3 Sense Puretech S S
Volkswagen	T-Cross	Diesel	T-Cross R-Line Tdi
Honda	Civic	Petrol	Civic Type R Gt
Fiat	Panda	Petrol	Panda Twinair 4X4
Volvo	Xc60	Diesel	Xc60 Inscription D4 Auto
Peugeot	5008	Petrol	5008 Gt Prem P-Tech S S Auto
Renault	Clio	Petrol	Clio S Edition Bose Tce Auto
MG	Zs	Electric	Zs Exclusive Ev
Mercedes	C-class	Petrol	Cla 250 Amg Line Premium Auto
Volvo	Xc90	Diesel	Xc90 Inscription B5 Awd Auto
Audi	Q5	Diesel	Q5 Sport 40 Tdi Mhev Quat S-A
Kia	Sportage	Petrol	Sportage 1 Crdi Isg Mhev
Honda	Cr-V	Petrol	Cr-V Sr I-Mmd 4X2 Cvt
Volkswagen	Polo	Petrol	Polo Se Evo
Vauxhall	Astra	Diesel	Astra Se Turbo D Auto
Mercedes	C-class	Diesel	Cla 220 Amg Line Prem + D 4M A
Volvo	V60	Diesel	V60 Inscription + D4 Auto
Volvo	Xc40	Petrol	Xc40 Inscription Pro T3
Ford	Focus	Diesel	Focus Zetec Tdci
Citroen	C4	Petrol	C4 Gr Stourer Feel + Ptch Ss A
Volvo	Xc90	Diesel	Xc90 Inscription Pro B5 Awd A
Volkswagen	T-Roc	Petrol	T-Roc S Tsi
Mercedes	Citan	Diesel	Citan Tourer Pro 111Cdi
Honda	Jazz	Petrol	Jazz Ex I-Mmd Cvt
Vauxhall	Corsa	Petrol	Corsa Sri Nav Premium Turbo
Volkswagen	Golf	Petrol	Golf Life Tsi
Volkswagen	Golf	Petrol	Golf Gti Tcr S-A
Volkswagen	California	Diesel	California Ocean Tdi Bmt S-A
Dacia	Sandero	Petrol	Sandero Essential Tce
Audi	A4	Diesel	A4 S Ln Vsprung 30 Tdi Mhev Sa
Volvo	Xc60	Hybrid	Xc60 Inscrpt Exp T6Rchrg Awd A
Volvo	Xc90	Petrol	Xc90 R-Design T6 Awd Auto
Volkswagen	Transporter	Diesel	Transporter T32 S Tdi Bmt S-A
Mercedes	B-class	Hybrid	B 250 Amg Line Premium+ E Auto
Ford	Kuga	Diesel	Kuga Vignale Ecoblue 4X4 Auto
Audi	S4	Diesel	S4 Tdi Quattro Auto
Volkswagen	Golf	Petrol	Golf Gti Tsi
Ford	Transit	Diesel	Transit Connect 230Trnd Tdci A
Alfa Romeo	Stelvio	Diesel	Stelvio Milano Ed Td Awd Auto
Vauxhall	Astra	Diesel	Astra Ultimate Nav Turbo D A
Peugeot	508	Petrol	508 Gt Puretech S S Auto
Seat	Ibiza	Diesel	Ibiza Se Tdi
Ford	Fiesta	Diesel	Fiesta Trend Tdci
Skoda	Octavia	Hybrid	Octavia Vrs Tsi Iv S-A
Mercedes	E-class	Diesel	E 220 D Amg Line Auto
Mercedes	S-class	Petrol	S 500 L Amg Line Executive A
Mazda	Cx-5	Petrol	Cx-5 Sport
Ford	Fiesta	Petrol	Fiesta Titanium Turbo
Volvo	Xc90	Diesel	Xc90 Inscription B6 Mhev Awd A
Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Allgrip
Mercedes	G-class	Petrol	Glc 300 Amg Line Prem + 4M A
Seat	Leon	Diesel	Leon Xcellence Lux Tdi
Nissan	Gt-R	Petrol	Gt-R 50Th Anniversary S-A
Ford	Puma	Petrol	Puma St-Line X First Ed + Mhev
Suzuki	Jimny	Petrol	Jimny Sz5 4X4 Auto
Volkswagen	Up	Petrol	Up Black Edition
Peugeot	308	Diesel	308 Gt Digital Sw Bluehdi Ss A
BMW	725d	Diesel	725d
Volkswagen	Passat	Diesel	Passat R-Line Ed Tdi 4Mot S-A
Porsche	Panamera	Petrol	Panamera Gts Sport Turismo S-A
Mazda	2	Petrol	2 Se-L Nav Mhev
Audi	TT	Petrol	Tt S-Ln Blk Ed 45 Tfsi Quat Sa
Volvo	Xc60	Diesel	Xc60 Inscrpt Pro B5 Mhev Awd A
Lexus	Rc	Petrol	Rc 300H Takumi Cvt
Mercedes	G-class	Diesel	Gla 200 Amg Line Executive D A
Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Auto
Hyundai	Ioniq	Petrol	Ioniq First Edition Hev S-A
Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I
Toyota	Prius	Hybrid	Prius Excel Phev Cvt
Kia	Stinger	Petrol	Stinger Gt S Auto
Volkswagen	Passat	Diesel	Passat R-Line Tdi 4Motion S-A
Peugeot	Partner	Diesel	Partner S L2 Bluehdi
Mercedes	S-class	Diesel	S 350 Grand Edition D Auto
Volvo	Xc60	Diesel	Xc60 Inscription Pro B4 Mhev A
Audi	A8	Hybrid	A8 L 60 Tfsi E Quattro Auto
Audi	Q3	Petrol	Q3 S Line Ed 1 40 Tfsi Quat Sa
Peugeot	308	Petrol	308 Gt Line Sw Puretech S S
MG	Hs	Petrol	Hs Exclusive S-A
Volkswagen	Caddy	Diesel	Caddy C20 Life Tdi S-A
Volvo	Xc40	Diesel	Xc40 Inscription D3 Awd Auto
Seat	Ateca	Diesel	Ateca Se Tdi S-A
Kia	Xceed	Petrol	Xceed 3 Isg
Abarth	595C	Petrol	595C Competizione
Ford	Kuga	Petrol	Kuga Vignale Hev Cvt
Mercedes	G-class	Diesel	Gle 300 Amg Line D 4Matic Auto
Toyota	Supra	Petrol	Supra A90 Auto
Mercedes	G-class	Petrol	Amg Gle 43 Night Edition 4M A
Kia	Stonic	Petrol	Stonic Connect Mhev
Kia	Soul	Electric	Soul First Edition Ev
Toyota	Rav4	Hybrid	Rav4 Dynamic Phev Auto
Audi	TT	Petrol	Ttrs Vorsprung Tfsi Quattro Sa
Volkswagen	California	Diesel	California Coast Tdi S-A
Renault	Kadjar	Diesel	Kadjar Iconic Blue Dci Auto
Mitsubishi	Outlander	Hybrid	Outlander Juro Phev Cvt
Audi	Q7	Petrol	Q7 S Line 55 Tfsi Mhev Quat A
Audi	RS 5	Petrol	Rs 5 Carbon Black Tfsi Quat A
Seat	Ateca	Petrol	Ateca Fr Sport Tsi 4Drive S-A
Audi	A3	Petrol	A3 Sport 40 Tfsi S-A
Mercedes	A-class	Petrol	A 220 Amg Line Auto
Porsche	Panamera	Petrol	Panamera Turbo Spt Turismo S-A
Ford	Kuga	Diesel	Kuga St-Ln X First Editn Eblue
Audi	SQ7	Diesel	Sq7 Tdi Mhev Quattro Auto
MINI	John Cooper Works	Petrol	John Cooper Works
Fiat	500	Petrol	500X S-Design
Volkswagen	Tiguan	Petrol	Tiguan Elegance Tsi S-A
Volkswagen	Crafter	Diesel	Crafter Cr35 Startline Tdi
Fiat	500	Petrol	500X Cross S-A
Volvo	V90	Diesel	V90 Cross Country+ D5 Pp Awd A
Mercedes	C-class	Diesel	C 300 Amg Line Edition D 4M A
Nissan	X-Trail	Diesel	X-Trail Acenta Dci
Mercedes	S-class	Petrol	Slc 200 Final Edition Premium
Vauxhall	Corsa	Diesel	Corsa Se Turbo D
Skoda	Fabia	Petrol	Fabia Colour Edition Tsi
Ford	Tourneo	Diesel	Tourneo Custom Titanium X Tdci
Volkswagen	Golf	Diesel	Golf Match Tdi
Mazda	Cx-30	Petrol	Cx-30 100Th Anniversry Ed Mhev
Volvo	V60	Hybrid	V60 P-Star Engrd T8Rchrg Awd A
Kia	Sorento	Diesel	Sorento Kx-3 Crdi Isg 4X4 Auto
Dacia	Logan	Lpg	Logan Mcv Sway Comfort Lpg Tce
Audi	A6	Diesel	A6 S Line 40 Tdi S-A
Audi	A5	Petrol	A5 S Line Edition 40 Tfsi
Volkswagen	Sharan	Diesel	Sharan Se Navigation Tdi
Mercedes	S-class	Hybrid	S 560 E L Amg Line Auto
Honda	Cr-V	Petrol	Cr-V Se I-Mmd Cvt
Fiat	Qubo	Petrol	Qubo Pop
Ford	Focus	Petrol	Focus Active X
Mercedes	A-class	Petrol	A 180 Sport Auto
Volvo	V90	Diesel	V90 Inscription Pro D4 Auto
Mazda	Cx-5	Diesel	Cx-5 Gt Sport Nav Plus D 4X4
MG	3	Petrol	3 Excite Vti-Tech
Mitsubishi	Eclipse	Petrol	Eclipse Cross Dsign Se 4X2 Cvt
Ford	Kuga	Petrol	Kuga Vignale
Mazda	6	Diesel	6 Gt Sport Nav + D Auto
Lexus	Ux	Petrol	Ux 250H F Sport Cvt
Mercedes	C-class	Petrol	C 300 Amg Line Ngt Ed Prem + A
Mazda	Cx-30	Petrol	Cx-30 Se-L Lux Mhev
Dacia	Duster	Petrol	Duster Essential Tce 4X2
Volvo	V90	Diesel	V90 Momentum D4 Auto
Skoda	Karoq	Diesel	Karoq Se Drive Tdi S-A
Mercedes	C-class	Petrol	C200 Amg Ln Ngt Ed Prem Mhev A
Ford	Fiesta	Diesel	Fiesta St-Line X Edition Tdci
BMW	X4	Diesel	X4 xDrive30d
Volvo	V90	Petrol	V90 R-Design B6 Mhev Awd Auto
Fiat	Tipo	Petrol	Tipo Lounge
Volvo	V90	Petrol	V90 Inscription + T5 Auto
Peugeot	308	Petrol	308 Active Puretech S S Auto
Mercedes	C-class	Hybrid	C 300 Amg Line E 4Matic Auto
Audi	A5	Diesel	A5 Sport 40 Tdi S-A
Mercedes	A-class	Petrol	A 200 Sport Premium +
Lexus	Ux	Petrol	Ux 250H 4X2 Cvt
Mercedes	G-class	Diesel	Gle 400 Amg Line Prem D 4M A
Mercedes	C-class	Diesel	Cls 220 Amg Line Premium + D A
Skoda	Kamiq	Diesel	Kamiq Se Tdi S-A
Mercedes	G-class	Diesel	Glc 220 D 4Matic Amg Line Auto
Rolls-Royce	Ghost	Petrol	Ghost
Kia	Stonic	Petrol	Stonic 2 S-A
Seat	Leon	Diesel	Leon Se Tdi S-A
Ford	Independence	Diesel	Independence Rs
Ford	Fiesta	Diesel	Fiesta St-Line Edition Tdci
Audi	A7	Petrol	A7 S Line 55 Tfsi Quattro S-A
Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue 4X4
Fiat	500	Petrol	500X City Cross
Hyundai	Kona	Petrol	Kona S
BMW	X2	Diesel	X2 xDrive20d
Audi	A7	Petrol	A7 Sport 45 Tfsi Quattro S-A
Mercedes	A-class	Petrol	A 180 Amg Line
Nissan	Qashqai	Petrol	Qashqai Acenta Dig-T
Peugeot	Horizon	Diesel	Horizon Re
Fiat	Tipo	Diesel	Tipo Lounge Multijet
Nissan	Micra	Petrol	Micra N-Sport Dig-T
Volkswagen	Tiguan	Diesel	Tiguan S Tdi 4Motion S-A
Ford	Mondeo	Diesel	Mondeo Titanium Edition Tdci
Ford	Fiesta	Petrol	Fiesta Active 1 Turbo Auto
Peugeot	308	Diesel	308 Gt Digital Bluehdi Ss Auto
Seat	Tarraco	Petrol	Tarraco Fr Tsi
Ford	Mustang	Petrol	Mustang 55 Edition
Honda	Jazz	Petrol	Jazz Se I-Vtec
Mazda	Cx-5	Diesel	Cx-5 Gt Sport D 4X4
Mercedes	G-class	Diesel	Glc 300 Amg Ln Ultimate D 4M A
Audi	Q2	Petrol	Q2 S Line Black Ed 30 Tfsi
Seat	Ateca	Petrol	Ateca Se Tech Tsi Evo S-A
Audi	A3	Hybrid	A3 E-Tron 40 S-A
Vauxhall	Crossland	Petrol	Crossland X Sport Turbo
Volvo	V60	Diesel	V60 Inscription + D3
Seat	Ateca	Petrol	Ateca Se Technology Tsi
Hyundai	Ioniq	Petrol	Ioniq Se Connect Hev S-A
Mercedes	C-class	Diesel	C 220 Sport Premium + D Auto
Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi
Ford	Focus	Petrol	Focus Titanium Auto
Mercedes	E-class	Diesel	E 300 Amg Line D Auto
Fiat	500	Petrol	500 C Dolcevita S-A
Peugeot	508	Petrol	508 Gt Line Sw Puretech S S A
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi
Ford	Kuga	Diesel	Kuga Zetec Ecoblue Mhev
Audi	SQ8	Diesel	Sq8 Tdi Mhev Quattro Auto
Citroen	Dispatch	Diesel	Dispatch Combi Bluehdi S S
Audi	A6	Diesel	A6 Aroad Spt 45Tdi Mhev Quat A
Vauxhall	Corsa	Petrol	Corsa Sri
Skoda	Superb	Petrol	Superb Se L Exec Tsi 4X4 Sa
Seat	Arona	Petrol	Arona Fr Tsi
Ford	Fiesta	Petrol	Fiesta Trend Turbo
Vauxhall	Corsa	Petrol	Corsa Se
Mercedes	E-class	Diesel	E 400 Amg Line D 4Matic Auto
Mercedes	E-class	Hybrid	E 300 Amg Line Edition E Auto
Vauxhall	Corsa	Electric	Corsa E Se Nav
Seat	Ibiza	Diesel	Ibiza Xcellence Lux Tdi
Ford	Kuga	Diesel	Kuga St-Line Edition Ecoblue
Jeep	Wrangler	Petrol	Wrangler Night Eagle Unltd A
Dacia	Sandero	Petrol	Sandero Stepway Comfort Tce
Vauxhall	Astra	Petrol	Astra Se Turbo Cvt
Renault	Clio	Diesel	Clio Play Dci
Mercedes	B-class	Diesel	B 200 Sport D Auto
Hyundai	Tucson	Petrol	Tucson N Line T-Gdi 2Wd S-A
Ford	Fiesta	Petrol	Fiesta Active X Turbo
Vauxhall	Corsa	Diesel	Corsa Elite Cdti Ecotec S S
Skoda	Scala	Petrol	Scala S Tsi
Jaguar	F-Type	Petrol	NaN
Ford	Focus	Diesel	Focus Titanium X Tdci Auto
Citroen	C4	Diesel	C4 Cactus Flair Bluehdi S S A
Audi	A4	Petrol	A4 A-Road Vor 45Tfsi Mhev Q Sa
Volvo	V90	Petrol	V90 Momentum + T4 Auto
Mercedes	B-class	Diesel	B 200 Amg Line Premium + D A
Ford	Focus	Diesel	Focus Vignale Ecoblue Auto
Volkswagen	Tiguan	Petrol	Tiguan Life Tsi
Mercedes	G-class	Diesel	Glb 200 Amg Line Prem + D 4M A
Jeep	Compass	Diesel	Compass Limited M-Jet Ii 4X2
Ford	Focus	Diesel	Focus Titanium Tdci
Ford	Fiesta	Petrol	Fiesta Trend Turbo Auto
Alfa Romeo	Stelvio	Diesel	Stelvio Sprint Td Awd Auto
Mercedes	G-class	Hybrid	Gla 250 Exclusive Ed Prem E A
Renault	Grand	Petrol	Grand Scenic Signature Tce
Peugeot	3008	Diesel	3008 Allure Bluehdi S S
Vauxhall	Corsa	Diesel	Corsa Sri Nav Premium Turbo D
Renault	Megane	Petrol	Megane Rs Trophy-R Tce
Volkswagen	Touareg	Petrol	Touareg V6 R-Line Tsi Auto
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 Boosterjet A
Kia	Pride	Petrol	Pride Sx
Mercedes	A-class	Petrol	A 250 Amg Line Premium + A
Suzuki	Swift	Petrol	Swift Sz5 Boosterjet Auto
Citroen	C3	Diesel	C3 Flair + Bluehdi S S
Audi	E-Tron	Electric	E-Tron Launch Ed 55 Quat
Volvo	Xc90	Petrol	Xc90 Inscription T6 Awd Auto
Hyundai	Tucson	Petrol	Tucson N Line Gdi 2Wd
Volvo	V60	Petrol	V60 Momentum B4 Mhev Auto
Volvo	Xc40	Petrol	Xc40 Inscription B5 Mhev Awd A
Toyota	Rav4	Petrol	Rav4 Dynamic Hev 4X2 Cvt
Peugeot	5008	Diesel	5008 Allure Premium B-Hdi Ss A
Ford	Focus	Diesel	Focus Active Ecoblue
Audi	A5	Diesel	A5 S Line 40 Tdi S-A
Renault	Kadjar	Petrol	Kadjar Iconic Tce Auto
Seat	Leon	Petrol	Leon Cupra 300 Tsi 4Drive S-A
Toyota	Aygo	Petrol	Aygo X-Trend Vvt-I Cvt
Jeep	Wrangler	Diesel	Wrangler Rubicon Multijet Ii A
Mercedes	A-class	Diesel	A 200 D Amg Line Executive A
Volkswagen	T-Roc	Petrol	T-Roc United Tsi Evo
Mercedes	A-class	Petrol	A 200 Exclusive Edition Auto
Honda	Jazz	Petrol	Jazz Ex I-Vtec Cvt
DS	3	Petrol	Ds3 C-Back Pfrmnc Ln Ptch Ss A
Volkswagen	Polo	Petrol	Polo Se Tsi S-A
Volvo	Xc40	Petrol	Xc40 R-Design B5 Mhev Awd Auto
Peugeot	308	Diesel	308 Allure Sw Bluehdi S S Auto
Mercedes	Evito	Electric	Evito Tourer Pro
Volvo	Xc60	Hybrid	Xc60 R-Design T8 Phev Awd Auto
Citroen	C5	Petrol	C5 Aircross Shine + Ptech Ss A
Volvo	S90	Hybrid	S90 Inscription T8 Rchrg Awd A
Vauxhall	Crossland	Diesel	Crossland X Spt Nav Prem Td A
Mercedes	E-class	Diesel	E 350 Amg Line Ed Premium D A
Ford	Tourneo	Diesel	Tourneo Custom 320Ztec Eblue A
Kia	Rio	Petrol	Rio 1
Suzuki	Vitara	Petrol	Vitara Sz4 Boosterjet Mhev
Citroen	C4	Petrol	C4 Gr Stourer Tch Ed Ptech Ss
Ford	Kuga	Hybrid	Kuga Titanium Frst Ed Phev Cvt
Volvo	Xc60	Petrol	Xc60 Momentum Pro T5 Awd Auto
Renault	Clio	Petrol	Clio Iconic Sce
Vauxhall	Insignia	Diesel	Insignia Tech Line Nav Turbo D
Audi	TT	Petrol	Tt S Line Vorsprung 40 Tfsi Sa
Peugeot	508	Petrol	508 Allure Puretech S S Auto
Mercedes	A-class	Petrol	A 200 Amg Line
Hyundai	I10	Petrol	I10 S
Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr S-A
Ford	S-Max	Diesel	S-Max Zetec Ecoblue
Jeep	Compass	Diesel	Compass Sport Multijet Ii 4X2
Mercedes	C-class	Petrol	Cla 180 Amg Line
DS	3	Petrol	Ds3 C-Back Elegance Ptech Ss
Peugeot	208	Diesel	208 Active Bluehdi S S
Ford	Independence	Diesel	Independence Re Twin
Toyota	Supra	Petrol	Supra Fuji Speedway Auto
Nissan	Micra	Petrol	Micra N-Tec Ig-T Cvt
Volvo	S90	Petrol	S90 Momentum + T4 Auto
Mercedes	E-class	Hybrid	E 300 Amg Line Premium + De A
Mercedes	G-class	Diesel	G 350 Amg Line D 4Matic Auto
Volkswagen	Arteon	Diesel	Arteon R-Line Ed Tdi Scr Sa
Peugeot	5008	Diesel	5008 Allure Bluehdi S S Auto
Audi	A3	Diesel	A3 S Line 35 Tdi
Mercedes	G-class	Petrol	Gla 200 Amg Line Edition +
Mercedes	A-class	Petrol	A 180 Sport Executive Auto
Toyota	Prius	Petrol	Prius Business Edtn Vvt-I Cvt
Citroen	C1	Petrol	C1 Origins
Toyota	Prius	Petrol	Prius Plus Excel Tss Hev Cvt
Ford	Tourneo	Diesel	Tourneo Connect Grd Actve Eblu
Renault	Clio	Petrol	Clio Gt Line Tce
Vauxhall	Grandland	Petrol	Grandland X Se Turbo S S
Mazda	Mx-5	Petrol	Mx-5 Sport
Hyundai	Ioniq	Electric	Ioniq Premium Ev
Volkswagen	Passat	Petrol	Passat Sel Tsi Evo
MINI	One	Diesel	One D
Volkswagen	Tiguan	Diesel	Tiguan Elegance Tdi S-A
Renault	Megane	Diesel	Megane Gt Line Dci
Porsche	911	Petrol	911 Carrera Auto
Peugeot	3008	Diesel	3008 Gt Line Bluehdi S S
Volkswagen	Passat	Diesel	Passat Alltrack Tdi 4Motion Sa
Vauxhall	Corsa	Petrol	Corsa Se Premium
Skoda	Karoq	Petrol	Karoq Edition Tsi
Volvo	Xc40	Diesel	Xc40 R-Design D3 Awd Auto
Citroen	C5	Diesel	C5 Aircross Flair Bluehdi S S
Ford	Focus	Diesel	Focus Zetec Tdci Auto
Peugeot	Traveller	Diesel	Traveller Bness Stnd Bhdi Ss A
Audi	A8	Petrol	A8 L S Ln Blk Ed 55Tfsi Quat A
Audi	A1	Petrol	A1 Sport 25 Tfsi S-A
Skoda	Fabia	Petrol	Fabia Monte Carlo Tsi S-A
Mercedes	B-class	Hybrid	B 250 Amg Line Executive E A
Mercedes	A-class	Petrol	A 180 Amg Line Premium +
Toyota	Gr	Petrol	Gr Yaris 4Wd
Mercedes	S-class	Diesel	S 350 D Amg Line Executive A
Volkswagen	Polo	Petrol	Polo R-Line Tsi S-A
Ford	Kuga	Diesel	Kuga St-Ln X First Ed Eblue A
Polestar	Polestar	Electric	Polestar 2 Pilot Plus Ev Awd
Mercedes	G-class	Diesel	Gla 200 Sport D Auto
Toyota	Corolla	Petrol	Corolla Design Vvt-I Hev Cvt
Lexus	Rxl	Petrol	Rxl 450H Cvt
Mercedes	C-class	Petrol	C 200 Amg Line Premium 4Mat A
Volkswagen	T-Roc	Petrol	T-Roc Design Tsi
Kia	Stonic	Petrol	Stonic Connect Mhev S-A
Volvo	Xc40	Petrol	Xc40 Inscrpt Pro B4 Mhev Awd A
Audi	Q8	Diesel	Q8 S Line Ed 1 50 Tdi Quat A
Seat	Leon	Diesel	Leon Fr Sport Tdi
DS	7	Diesel	Ds7 C-Back Ultraprstg Bhdiss A
Ford	Fiesta	Petrol	Fiesta Active 1 Turbo
Mercedes	C-class	Petrol	C 180 Amg Line Auto
Mercedes	C-class	Petrol	C 300 Amg Line Ed Prem Mhev A
Citroen	C4	Petrol	C4 Gr Stourer Flair + Ptech Ss
Ford	Transit	Petrol	Transit 120 L
Nissan	Qashqai	Diesel	Qashqai Tekna Dci
Nissan	X-Trail	Diesel	X-Trail Visia Dci
Audi	A7	Diesel	A7 S Line 40 Tdi Quattro S-A
Volkswagen	Up	Petrol	Up White Edition
Volvo	Xc40	Petrol	Xc40 R-Design Pro B4 Mhev Auto
Honda	Civic	Petrol	Civic Sport + Vtec Cvt
Peugeot	508	Diesel	508 Gt Sw Bluehdi S S Auto
Toyota	Aygo	Petrol	Aygo X-Play Vvt-I Cvt
Lexus	Ls	Petrol	Ls 500H F Sport Auto
Alfa Romeo	Giulia	Diesel	Giulia Super Td Auto
Hyundai	I30	Petrol	I30 Premium Mhev T-Gdi
Ford	Fiesta	Petrol	Fiesta St-Line Edition T Mhev
Peugeot	208	Petrol	208 Allure Puretech S S Auto
Mercedes	S-class	Petrol	Amg Sl 63 Auto
Mercedes	E-class	Diesel	E 400 Amg Line Premium D 4M A
Porsche	718	Petrol	718 Cayman Gt4
Ford	Puma	Petrol	Puma St-Line Vignale Mhev
Ford	Focus	Diesel	Focus St Ecoblue
Dacia	Duster	Lpg	Duster Se Twenty Lpg Tce 4X2
Volkswagen	Transporter	Diesel	Transporter T32 Se Tdi Bmt
Citroen	C5	Hybrid	C5 Aircross Flair Phev Auto
DS	3	Electric	Ds 3 Crossback Prfrmnc Line Ev
Vauxhall	Astra	Petrol	Astra Business Ed Nav T Cvt
Nissan	Qashqai	Diesel	Qashqai Acenta Premium Dci
Mercedes	G-class	Petrol	Gla 200 Sport Executive Auto
Smart	Eq	Electric	Eq Fortwo Passion Advanced
Dacia	Logan	Lpg	Logan Mcv Essential Lpg Tce
Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Allgrip
Mercedes	E-class	Petrol	E 200 Se Auto
Kia	Optima	Hybrid	Optima Phev Auto
Audi	S7	Diesel	S7 Tdi Quattro Auto
Renault	Clio	Hybrid	Clio Iconic E-Tech Auto
Nissan	Gt-R	Petrol	Gt-R Recaro S-A
Citroen	Berlingo	Petrol	Berlingo Flair Puretech S S A
Nissan	Micra	Petrol	Micra Acenta
Mercedes	C-class	Petrol	Amg Cla 35 4Matic Auto
Audi	Q2	Petrol	Q2 Sport 30 Tfsi
Mercedes	C-class	Diesel	C 220 Amg Line Edition D Auto
Fiat	Panda	Petrol	Panda Waze Edition Twinair 4X4
Seat	Ibiza	Petrol	Ibiza Fr Tsi
Renault	Trafic	Diesel	Trafic Spaceclass Energy Dci A
Audi	A4	Diesel	A4 Technik 50 Tdi Quattro Auto
Ford	Fiesta	Petrol	Fiesta Active Edition T Mhev
Mercedes	E-class	Hybrid	E 300 Amg Line Premium+ E 4M A
Ford	Ka+	Diesel	Ka+ Active Tdci
Cupra	Leon	Hybrid	Leon Vz3 Phev S-A
Audi	A4	Diesel	A4 S Line 40 Tdi S-A
Volkswagen	Tiguan	Diesel	Tiguan Match Tdi S-A
Seat	Arona	Diesel	Arona Xcellence Tdi Auto
Mercedes	S-class	Petrol	Amg S 63 L Executive Auto
Kia	Ceed	Petrol	Ceed Gt-Line Lunar Ed Isg Sa
Ford	Transit	Diesel	Transit Custom 310 Tdci
Volvo	Xc60	Diesel	Xc60 R-Design B4 Mhev Auto
Audi	A5	Diesel	A5 S Lne Ed 1 40Tdi Mhev Q Sa
Peugeot	5008	Petrol	5008 Active Puretech S S Auto
Mercedes	E-class	Diesel	E 220 D Se Premium+ Auto
Ford	Puma	Petrol	Puma St-Line X Mhev
Honda	Cr-V	Petrol	Cr-V Se I-Vtec 4X2
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev 4X4
Seat	Ateca	Diesel	Ateca Fr Black Edition Tdi S-A
MG	Hs	Petrol	Hs Excite S-A
Volvo	S60	Petrol	S60 R-Design B5 Mhev Auto
Audi	A3	Diesel	A3 S Line Edition 1 35 Tdi S-A
Honda	Civic	Petrol	Civic Ex Sport Line Vtec
Renault	Megane	Diesel	Megane Play Blue Dci Auto
Vauxhall	Insignia	Diesel	Insignia Design Nav Ecotec D
Volkswagen	California	Diesel	California Beach Tdi Bmt S-A
Peugeot	2008	Petrol	2008 Active Premium Ptech S S
Mercedes	G-class	Hybrid	Gla 250 Amg Line Executive E A
Renault	Captur	Petrol	Captur Play Tce Auto
Peugeot	3008	Petrol	3008 Active Premium P-Tech S S
BMW	220d	Diesel	220d
MG	Zs	Petrol	Zs Exclusive
Peugeot	508	Diesel	508 Gt Line Bluehdi S S Auto
Mercedes	G-class	Diesel	Gle 350 Amg Line Prem + D 4M A
Peugeot	308	Diesel	308 Tech Edition Bluehdi S S A
Hyundai	I20	Petrol	I20 Se Mpi
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev Cvt
Volkswagen	Golf	Diesel	Golf Style Tdi S-A
Volkswagen	Golf	Diesel	Golf Match Edition Tdi
Honda	Hr-V	Petrol	Hr-V S I-Vtec
Vauxhall	Corsa	Diesel	Corsa Sri Premium Turbo D
BMW	X3	Diesel	X3 M40d
Audi	A4	Diesel	A4 Sport 35 Tdi Mhev S-A
Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci 4X4
Volkswagen	Golf	Petrol	Golf Match Tsi S-A
BMW	X6	Diesel	X6 xDrive30d
Volkswagen	Transporter	Diesel	Transporter Se Tdi S-A
Seat	Tarraco	Diesel	Tarraco Se Tdi
Audi	E-Tron	Electric	E-Tron Black Edition 50 Quat
Porsche	718	Petrol	718 Cayman S-A
Citroen	C3	Petrol	C3 Aircross C-Series Ptech S S
Fiat	500	Petrol	500 S
Mazda	Cx-5	Diesel	Cx-5 Sport D
Volvo	V60	Petrol	V60 R-Design B5 Mhev Auto
Skoda	Kodiaq	Diesel	Kodiaq Se Technology Tdi S-A
Mazda	Cx-5	Diesel	Cx-5 Se-L D
Mercedes	A-class	Diesel	A200 Special Edition A
Audi	A1	Petrol	A1 S Line 35 Tfsi S-A
Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi 4Drive Sa
Mitsubishi	ASX	Petrol	Asx Exceed 4X4 Cvt
Ford	Tourneo	Diesel	Tourneo Courier Zetec Tdci
Ford	Kuga	Petrol	Kuga St-Line Edition
Volvo	Xc60	Hybrid	Xc60 Inscrp Pro T8Rechrg Awd A
Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi 4M S-A
MG	Hs	Petrol	Hs Excite
Honda	Civic	Petrol	Civic Sport Vtec
Mercedes	G-class	Petrol	Amg Gt 63 Premium + 4Matic + A
Audi	A4	Diesel	A4 Sport 40 Tdi Quattro S-A
Skoda	Octavia	Petrol	Octavia Vrs Tsi S-A
Nissan	Dynamo	Electric	Dynamo Taxi E-Nv200
BMW	330d	Diesel	330d
Volkswagen	Arteon	Petrol	Arteon R-Line Tsi 4Motion S-A
Fiat	500	Petrol	500 C Star
Renault	Kadjar	Diesel	Kadjar Iconic Blue Dci
Seat	Malaga	Diesel	Malaga Premier
Jeep	Renegade	Petrol	Renegade Night Eagle Auto
Audi	A7	Hybrid	A7 Sport 50 Tfsi E Quattro S-A
Seat	Arona	Petrol	Arona Xcellence Lux Ecotsi
Audi	RS Q3	Petrol	Rs Q3 Tfsi Quattro S-A
Mitsubishi	Eclipse	Petrol	Eclipse Cross Black 4X4 Cvt
Mercedes	C-class	Diesel	C 200 Amg Line Ed Prem D A
Vauxhall	Crossland	Petrol	Crossland X Sport Nav Prem T A
Mazda	6	Diesel	6 Sport Nav + D Auto
Ford	Focus	Petrol	Focus St Auto
Skoda	Kamiq	Diesel	Kamiq Se Tdi
Audi	Q2	Petrol	Q2 S-Ln Vsprung40 Tfsi Quat Sa
Mercedes	S-class	Diesel	S 350 D L Amg Line Executive A
Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D Ss
Mercedes	G-class	Diesel	Gla 200 Amg Line Premium D A
Volkswagen	Caddy	Petrol	Caddy C20 Life Tsi
Mercedes	C-class	Diesel	C 300 Amg Line D Auto
Citroen	C4	Diesel	C4 Gr Stourer Shine Bhdi Ss A
Citroen	C4	Diesel	C4 Flair Bluehdi S S
Audi	Q8	Petrol	Q8 Sln Blk Ed 55Tfsi Mhev Qt A
Audi	TT	Petrol	Tt S Line Black Ed 40 Tfsi S-A
Hyundai	Tucson	Diesel	Tucson Premium Crdi Auto
Skoda	Karoq	Petrol	Karoq Sportline Tsi
Ford	Galaxy	Diesel	Galaxy Zetec Ecoblue
BMW	X4	Diesel	X4 M40d
Audi	TT	Petrol	Tt Sport Edition 45 Tfsi S-A
Seat	Ibiza	Petrol	Ibiza Xcellence Tsi S-A
Tesla	Model S	Electric	Model S Standard Range Awd
Peugeot	Rifter	Diesel	Rifter Horizon Re
Mercedes	A-class	Petrol	A 200 Amg Line Premium + Auto
Mercedes	G-class	Diesel	Gle 400 Amg Line Prem + D 4M A
Citroen	Spacetourer	Diesel	Spacetourer Business Bhdi S S
Skoda	Kodiaq	Diesel	Kodiaq Se Technology Tdi 4X4
Lexus	Ls	Petrol	Ls 500H Premium Auto
Volvo	Xc60	Diesel	Xc60 Inscription Pro B4 Awd A
Audi	A7	Diesel	A7 Sport 50 Tdi Quattro S-A
Toyota	Yaris	Petrol	Yaris Dynamic Hev Cvt
MG	Zs	Petrol	Zs Exclusive Vti-Tech
Mercedes	C-class	Hybrid	C 300 Sport Ed Premium + De A
Kia	Rio	Petrol	Rio 2 S-A
Seat	Ateca	Petrol	Ateca Se Tsi Evo
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Auto
Renault	Grand	Petrol	Grand Scenic Iconic Tce Auto
Ford	Kuga	Diesel	Kuga St-Line First Ed E-Blue A
Mercedes	S-class	Petrol	S 650 Maybach Auto
Mercedes	A-class	Petrol	A 200 Amg Line Auto
Jeep	Compass	Petrol	Compass S Multiair Ii Auto
Audi	A3	Diesel	A3 S Line Black Edition 30 Tdi
Vauxhall	Corsa	Petrol	Corsa Elite Nav Turbo
Fiat	500	Petrol	500 120Th Anniversary
Kia	Ceed	Petrol	Ceed 3 Isg S-A
Citroen	C5	Petrol	C5 Aircross Flair Puretech S S
Seat	Ateca	Petrol	Ateca Xcellence Tsi Evo
BMW	320d	Diesel	320d Efficient Dynamics
Seat	Ateca	Petrol	Ateca Cup300 C&S+ Design 4D Sa
Mercedes	Vito	Diesel	Vito 119Cdi Tourer Select Auto
Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci Cvt
Fiat	500	Petrol	500 C Sport
Volkswagen	Golf	Petrol	Golf Clubsport Gti Tsi S-A
BMW	630i	Petrol	630i
Alfa Romeo	Stelvio	Petrol	Stelvio V6 Bt Qfglo Arr Awd A
Audi	Q3	Petrol	Q3 S Line Vor 40 Tfsi Quat S-A
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev Allgrip
Audi	Q3	Diesel	Q3 S Line 35 Tdi S-A
Kia	Sportage	Petrol	Sportage Gt-Line Isg
Mazda	Cx-3	Petrol	Cx-3 Sport Nav +
Mercedes	C-class	Hybrid	C 300 Amg Line Ed Prem + De A
Audi	A1	Petrol	A1 Technik 25 Tfsi S-A
Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi S-A
Peugeot	308	Petrol	308 Allure Sw Puretech S S
Volvo	V90	Diesel	V90 R-Design + D4 Auto
Volvo	Xc60	Petrol	Xc60 Momentum T5 Auto
Mitsubishi	Eclipse	Petrol	Eclipse Cross Verve 4X2
Mercedes	C-class	Petrol	Cls 450 Amg Line 4Matic Auto
Honda	Jazz	Petrol	Jazz Se Navi I-Vtec Cvt
Peugeot	508	Hybrid	508 Gt Sw S S Phev Auto
Audi	A4	Diesel	A4 S Line Black Ed 30 Tdi S-A
Audi	Q3	Petrol	Q3 S Line Ed 1 35 Tfsi Mhev Sa
Mercedes	S-class	Diesel	S 350 D L Amg Line Exec Prem A
Ford	Kuga	Diesel	Kuga Vignale Tdci 4X4 Auto
Volkswagen	T-Cross	Petrol	T-Cross R-Line Tsi Evo S-A
Audi	SQ8	Diesel	Sq8 Vorsprung Tdi Mhev Quat A
Volkswagen	Golf	Petrol	Golf Gt Edition Tsi Evo
Skoda	Superb	Hybrid	Superb L And K Iv Phev S-A
Volkswagen	Polo	Petrol	Polo Se Tsi
Audi	A4	Petrol	A4 Sport 35 Tfsi Mhev
Ford	Tourneo	Diesel	Tourneo Custom 320 Ecoblue
Peugeot	2008	Electric	2008 Gt Premium Ev
Vauxhall	Crossland	Petrol	Crossland X Elite Turbo S S
Renault	Trafic	Diesel	Trafic Business Energy Dci
BMW	X1	Petrol	X1 sDrive20i
Volkswagen	Golf	Diesel	Golf R-Line Edition Tdi
Peugeot	Traveller	Diesel	Traveller Bness Vip Bhdi S S A
Ford	Mondeo	Diesel	Mondeo St-Line Ed Tdci 4X4 A
Vauxhall	Insignia	Diesel	Insignia Sri Nav Ecotec D
Skoda	Fabia	Petrol	Fabia S Tsi S-A
Seat	Arona	Petrol	Arona Se Technology Tsi S-A
Volkswagen	Golf	Hybrid	Golf Gte Advance S-A
Mercedes	A-class	Diesel	A 180 Sport Executive D Auto
Volkswagen	Arteon	Diesel	Arteon Elegance Tdi
Seat	Leon	Petrol	Leon Fr Black Ed Tsi Evo S-A
Vauxhall	Grandland	Diesel	Grandland X Elite Nav T D A
Seat	Ateca	Diesel	Ateca Fr Sport Tdi 4Drive Auto
Volvo	V90	Diesel	V90 R-Design D4 Auto
Ford	Focus	Diesel	Focus Titanium Tdci Auto
Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi S S
Ford	Focus	Petrol	Focus Vignale Edition Mhev
Seat	Arona	Petrol	Arona Se Technology Ecotsi S-A
Audi	A6	Diesel	A6 S Line 50 Tdi Quattro S-A
Abarth	595	Petrol	595 Scorpioneoro
Mercedes	A-class	Petrol	A 200 Sport
Ford	Mondeo	Diesel	Mondeo St-Line Tdci Auto
Vauxhall	Crossland	Diesel	Crossland X Elite Ecotec D S S
Suzuki	Swace	Petrol	Swace Sz-T Hev Cvt
BMW	525d	Diesel	525d
Vauxhall	Insignia	Diesel	Insignia Design Ecotec D
Kia	Sportage	Petrol	Sportage Gt-Line S Crdi Isg Sa
Mercedes	E-class	Petrol	E 450 Amg Line Premium + 4M A
Skoda	Karoq	Diesel	Karoq Se Technology Tdi S-A
Nissan	Juke	Petrol	Juke Tekna Dig-T S-A
Mercedes	E-class	Diesel	E 300 Amg Line Premium D Auto
Alfa Romeo	Giulietta	Petrol	Giulietta Tb
Mitsubishi	Outlander	Hybrid	Outlander Dyn Safety Phev Cvt
MINI	Cooper D	Diesel	Cooper D ALL4
Alfa Romeo	Giulietta	Petrol	Giulietta Speciale Tb
Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev Auto
Ford	Ka+	Petrol	Ka+ Zetec
Ford	Fiesta	Petrol	Fiesta Active Edition Turbo
Audi	S3	Petrol	S3 Tfsi Quattro S-A
Peugeot	Horizon	Diesel	Horizon Rs
Kia	Ceed	Diesel	Ceed 3 Crdi Isg
Mercedes	A-class	Petrol	A 250 Amg Line Executive Auto
Hyundai	Tucson	Petrol	Tucson Premium Se T-Gdi 2Wd Sa
Fiat	500	Petrol	500 Sport Mhev
Audi	A6	Petrol	A6 Aroad Vor 55Tfsi Mhev Qto A
Hyundai	I20	Petrol	I20 Premium Se Nav Mpi
Audi	A4	Diesel	A4 Sport 40 Tdi Mhev Quat Sa
Volkswagen	Golf	Diesel	Golf Gt Tdi
Kia	Picanto	Petrol	Picanto Wave
Seat	Ibiza	Petrol	Ibiza Fr Sport Tsi S-A
Audi	A7	Diesel	A7 S-Ln Blk Ed 40 Tdi Quat S-A
Toyota	Yaris	Petrol	Yaris Y20 Vvt-I
Kia	Sportage	Petrol	Sportage Gt-Ln Crdi Mhev4X4 Sa
Hyundai	Ix20	Petrol	Ix20 Se Mpi
Hyundai	I30	Petrol	I30 N
Ford	Ecosport	Diesel	Ecosport Zetec Ecoblue
Audi	RS 6	Petrol	Rs 6 Launch Ed Tfsi Mhev Qto A
Volvo	Xc60	Petrol	Xc60 R-Design Pro T5 Auto
Seat	Leon	Petrol	Leon Se Tsi Evo
Seat	Leon	Petrol	Leon First Edition Etsi Evo Sa
Mercedes	G-class	Petrol	Amg Glb 35 Premium 4Matic Auto
Audi	A1	Petrol	A1 S Line Black Ed 30 Tfsi S-A
Seat	Leon	Petrol	Leon Se Dynamic Tsi Evo
Peugeot	5008	Petrol	5008 Active Premium P-Tech Ss
Peugeot	206	Diesel	206 Zest 3 Hdi
Seat	Ateca	Petrol	Ateca Cupra 300 Dsgn Tsi 4D Sa
Audi	Q2	Petrol	Q2 Sport 35 Tfsi S-A
Ford	Fiesta	Petrol	Fiesta St-Line Edition Turbo A
Cupra	Formentor	Petrol	Formentor Vz Edition Tsi 4D Sa
Ford	Journey	Diesel	Journey Grand Rx
Kia	Ceed	Diesel	Ceed 3 Crdi Isg S-A
Mercedes	A-class	Diesel	A 200 D Amg Line Auto
Ford	Mondeo	Diesel	Mondeo Zetec Edition Ecoblue A
Skoda	Kodiaq	Petrol	Kodiaq Se Drive Tsi
Mercedes	C-class	Petrol	Cla 250 Amg Line Premium + A
Ford	Kuga	Diesel	Kuga St-Line Ecoblue Mhev
Audi	A6	Petrol	A6 S Ln Blk Ed45Tfsi Mhev Q Sa
Kia	Picanto	Petrol	Picanto Gt-Line Auto
Mazda	Cx-5	Diesel	Cx-5 Sport D Auto
Vauxhall	Corsa	Petrol	Corsa Se Nav Premium Turbo A
Volvo	V90	Diesel	V90 Inscription D5 Awd Auto
Citroen	C3	Diesel	C3 Feel Bluehdi S S
Seat	Alhambra	Diesel	Alhambra Se L Tdi S-A
Ford	Mustang	Electric	Mustang Mach-E Ext Range Rwd
Audi	A6	Diesel	A6 S Ln Vor 40Tdi Mhev Quat Sa
Volvo	Xc90	Diesel	Xc90 Inscription B5 Mhev Awd A
Lexus	Is	Petrol	Is 300H Cvt
Volkswagen	T-Roc	Petrol	T-Roc R-Line Tsi 4Motion S-A
Mercedes	C-class	Diesel	C 200 Amg Line D
Porsche	Panamera	Hybrid	Panamera Turbo S E-Hyb Sp Tour
Peugeot	508	Petrol	508 Gt Line Puretech S S Auto
Renault	Grand	Diesel	Grand Scenic Play Blue Dci A
Mazda	Cx-5	Petrol	Cx-5 Gt Sport Nav +
BMW	330e	Hybrid	330e iPerformance
Mercedes	E-class	Petrol	Amg E 53 Premium + 4Matic Auto
Volvo	Xc60	Hybrid	Xc60 Rdesign Pro T8 Phev Awd A
Ford	Independence	Diesel	Independence Rs Auto
BMW	540i	Petrol	540i xDrive
Volkswagen	Golf	Petrol	Golf R-Line Tsi
Mazda	Cx-5	Petrol	Cx-5 Kuro Edition
Skoda	Octavia	Diesel	Octavia Se Drive Tdi S-A
Mercedes	C-class	Petrol	C 200 Amg Line Premium Auto
Renault	Clio	Petrol	Clio Play Tce Cvt
Citroen	C3	Diesel	C3 Flair Bluehdi S S
Volvo	Xc60	Petrol	Xc60 R-Design Pro T6 Awd Auto
Renault	Captur	Diesel	Captur S Edition Dci Auto
Audi	S4	Diesel	S4 Vorsprung Tdi Quattro Auto
Skoda	Octavia	Hybrid	Octavia Se Tech Tsi Iv S-A
Fiat	Tipo	Petrol	Tipo S-Design
Hyundai	I10	Petrol	I10 Premium Mpi
Abarth	595	Petrol	595 Competizione S-A
Mercedes	B-class	Diesel	B 220 Amg Line Premium D Auto
Fiat	Tipo	Petrol	Tipo Sport
Skoda	Octavia	Diesel	Octavia Laurin And Klem Tdi Sa
Audi	Q2	Petrol	Q2 S Line Vorsprung 35 Tfsi Sa
Renault	Megane	Diesel	Megane Gt Line Blue Dci Auto
Renault	Captur	Petrol	Captur Iconic Tce
Renault	Koleos	Diesel	Koleos Gt Line Dci 4X4 Cvt
Ford	Kuga	Diesel	Kuga Titan First Ed Eblue Mhev
Fiat	Panda	Petrol	Panda Lounge
Volkswagen	T-Roc	Petrol	T-Roc Se Tsi
Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 4X2 Cvt
Vauxhall	Crossland	Petrol	Crossland X Sport
Ford	Tourneo	Diesel	Tourneo Connect Gr Tnium Tdcia
Vauxhall	Vivaro-E	Electric	Vivaro-E Life Edition
Volkswagen	Crafter	Diesel	Crafter Cr35 Trendline Tdi
Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev
Ford	Kuga	Petrol	Kuga Titanium X Edition Auto
BMW	X4	Petrol	X4 M40i
Mercedes	G-class	Petrol	Amg Glc 43 Premium 4Matic Auto
Mercedes	G-class	Petrol	Gla 200 Sport Auto
Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr S-A
Vauxhall	Grandland	Petrol	Grandland X Sri Nav Turbo
Vauxhall	Crossland	Diesel	Crossland X Tec Ln Nv Eco D Ss
Renault	Clio	Petrol	Clio S Edition Tce
Peugeot	208	Diesel	208 Allure Premium Bluehdi S S
Volvo	V60	Petrol	V60 Momentum B5 Mhev Auto
Volvo	Xc90	Hybrid	Xc90 Momentum T8 Phev Awd Auto
Honda	Hr-V	Petrol	Hr-V Sport I-Vtec
Skoda	Kamiq	Petrol	Kamiq Se Tsi S-A
Ford	Kuga	Hybrid	Kuga St-Ln X First Ed Phev Cvt
Skoda	Kodiaq	Diesel	Kodiaq Se Tdi Scr 4X4 S-A
Mercedes	B-class	Diesel	B 200 Sport Premium D Auto
Audi	A8	Petrol	A8 S Line 55 Tfsi Quattro Auto
Peugeot	2008	Petrol	2008 Allure Puretech S S
Kia	Stonic	Petrol	Stonic Maxx S-A
Dacia	Sandero	Diesel	Sandero Stepway Essential Bdci
Jeep	Renegade	Hybrid	Renegade Longitude 4Xe Auto
BMW	740e	Hybrid	740e iPerformance
Audi	Q7	Petrol	Q7 Sln Blk Ed 55Tfsi Mhev Qt A
Jeep	Wrangler	Diesel	Wrangler Ovrlnd Unltd Mjt Ii A
Hyundai	Ix20	Petrol	Ix20 Se Mpi Auto
Mercedes	A-class	Petrol	A 180 Amg Line Premium Auto
Jeep	Renegade	Petrol	Renegade Night Eagle
Mercedes	G-class	Diesel	Gla 220 Amg Line Prem + D 4M A
Jeep	Grand	Diesel	Grand Cherokee Oland Mjet Ii A
Seat	Alhambra	Petrol	Alhambra Se L Tsi
Peugeot	Traveller	Diesel	Traveller Active Cpact Bhdi Ss
Kia	Ceed	Diesel	Ceed Gt-Line Crdi
Skoda	Karoq	Diesel	Karoq Se L Tdi Scr
Audi	A4	Petrol	A4 Technik 35 Tfsi
Kia	Picanto	Petrol	Picanto 3 Auto
Toyota	Aygo	Petrol	Aygo X-Play Tss Vvt-I Cvt
Vauxhall	Corsa	Electric	Corsa E Elite Nav
Skoda	Karoq	Petrol	Karoq Se Drive Tsi S-A
Ford	Kuga	Diesel	Kuga Zetec Ecoblue Auto
Peugeot	Traveller	Diesel	Traveller Allure Bluehdi S S A
Peugeot	308	Petrol	308 Gti Puretech S S
Ford	Benimar	Petrol	Benimar Tessoro T483
Toyota	Land	Diesel	Land Cruiser Invincible D-4D A
Volvo	S90	Diesel	S90 Incription + D5 Awd Auto
Volvo	Xc40	Hybrid	Xc40 Inscript Pro T5 Rcharge A
Toyota	Corolla	Petrol	Corolla Icon Vvt-I Hev Cvt
Peugeot	308	Diesel	308 Active Bluehdi S S Auto
Lexus	Es	Petrol	Es 300H F Sport Cvt
Fiat	500	Petrol	500X Lounge
Vauxhall	Insignia	Diesel	Insignia Design Nav Turbo D
Ford	S-Max	Diesel	S-Max Titanium Ecoblue
Audi	A4	Petrol	A4 S Line 35 Tfsi
Volkswagen	Transporter	Diesel	Transporter S Tdi S-A
Audi	Q3	Petrol	Q3 S Line 35 Tfsi S-A
Mercedes	A-class	Petrol	A 220 Amg Line Executive Auto
Volkswagen	Polo	Petrol	Polo Match Evo
Hyundai	I20	Petrol	I20 Premium Mhev T-Gdi
Ford	Mondeo	Diesel	Mondeo Vignale Ecoblue 4X4 A
Mercedes	E-class	Diesel	E 300 Amg Line Ed Premium D A
Audi	A5	Petrol	A5 S Line 45 Tfsi Quattro S-A
Peugeot	308	Diesel	308 Active Premium Dig Bhdi Ss
Mercedes	E-class	Diesel	E 220 Amg Line D 4Matic Auto
Audi	A3	Petrol	A3 S Line Black Ed 30 Tfsi
Peugeot	3008	Petrol	3008 Active Puretech S S Auto
Ford	Kuga	Diesel	Kuga St-Line X Tdci
Audi	A5	Petrol	A5 S Line Ed 1 40 Tfsi Mhev Sa
Lexus	Ux	Petrol	Ux 250H Takumi Cvt
Skoda	Octavia	Diesel	Octavia Se Tdi S-A
Peugeot	5008	Petrol	5008 Gt Line Prem P-Tech S S A
Volvo	Xc60	Diesel	Xc60 Inscription D4 Awd Auto
Citroen	Berlingo	Diesel	Berlingo 650 En-Prise Bhdi Ss
Nissan	Micra	Petrol	Micra N-Connecta Ig-T
Seat	Ateca	Diesel	Ateca Fr Black Edition Tdi
Kia	Ceed	Petrol	Ceed Gt-Line S Isg S-A
Renault	Kadjar	Petrol	Kadjar S Edition Tce Auto
Toyota	C-Hr	Petrol	C-Hr Dynamic Awd Cvt
Peugeot	5008	Petrol	5008 Active Puretech S S
Volkswagen	Up	Petrol	Up Beats
Vauxhall	Corsa	Diesel	Corsa Sri Turbo D
Volkswagen	T-Roc	Petrol	T-Roc R Tsi 4Motion S-A
Kia	Picanto	Petrol	Picanto 2 Auto
Hyundai	I30	Petrol	I30 Premium Se T-Gdi S-A
Citroen	Spacetourer	Diesel	Spacetourer Feel Bluehdi S S
Fiat	500	Petrol	500L 120Th Anniversary
Volkswagen	Transporter	Diesel	Transporter T32 St-Line Tdi Sa
Kia	Sportage	Diesel	Sportage 4 Crdi Isg S-A
Peugeot	Rifter	Diesel	Rifter Allure Bluehdi S S
Audi	A4	Petrol	A4 Technik 35 Tfsi Mhev S-A
Fiat	Tipo	Petrol	Tipo Easy + T-Jet
Kia	Proceed	Petrol	Proceed Gt-Line S Isg S-A
Vauxhall	Grandland	Petrol	Grandland X Businss Ed Nav T A
Volvo	Xc90	Petrol	Xc90 Inscription Pro T6 Awd A
Seat	Leon	Petrol	Leon Fr Etsi S-A
Audi	Q7	Diesel	Q7 S Line 45 Tdi Mhev Quat A
Jeep	Renegade	Diesel	Renegade Trailhawk Mjetii 4X4A
Mazda	Cx-3	Petrol	Cx-3 Sport Nav + Auto
Mercedes	A-class	Diesel	A 200 D Sport Auto
Audi	Q7	Diesel	Q7 S Ln Vor 50 Tdi Mhev Quat A
Peugeot	3008	Diesel	3008 Gt Line Premium B-Hdi S S
Kia	Ceed	Diesel	Ceed Gt-Line Crdi Isg S-A
Vauxhall	Grandland	Diesel	Grandland X Sport Nav T D Ss
Mazda	Cx-5	Petrol	Cx-5 Se-L Nav + Auto
Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci
Vauxhall	Astra	Diesel	Astra Sri Turbo D Auto
Audi	Q3	Petrol	Q3 S Line Black Ed 35 Tfsi
Toyota	Rav4	Petrol	Rav4 Excel Hev Cvt
Volkswagen	Golf	Petrol	Golf Sv Match Tsi Evo
Fiat	500	Petrol	500X Cross +
Peugeot	208	Petrol	208 Active Puretech S S
Volkswagen	Tiguan	Petrol	Tiguan Allspace Sel Tsi Evo Sa
Mazda	3	Petrol	3 Gt Sport Mhev
Audi	A5	Petrol	A5 Sport 40 Tfsi
MG	Zs	Petrol	Zs Excite T-Gdi Auto
Kia	Proceed	Petrol	Proceed Gt-Line Isg S-A
Jeep	Compass	Diesel	Compass Limited Multijet Ii
Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 4X2
Audi	A3	Petrol	A3 Technik 30 Tfsi Mhev S-A
Mercedes	G-class	Hybrid	Glc 300 Amg Lne Prem + De 4M A
Ford	Transit	Diesel	Transit 110 T350M Fwd
Peugeot	508	Petrol	508 First Ed Sw Puretech S S A
Ford	Galaxy	Diesel	Galaxy Titanium Ecoblue Auto
Fiat	500	Petrol	500 C Launch Edition Mhev
Porsche	911	Petrol	911 Carrera 4S Auto
Audi	Q5	Petrol	Q5 S Ln V-Sprng 45Tfsi Quat Sa
Skoda	Octavia	Diesel	Octavia Se First Edition Tdi
Hyundai	I20	Petrol	I20 S-Connect Mpi
Fiat	Panda	Petrol	Panda City Life Mhev
Peugeot	308	Petrol	308 Tech Ed Sw Puretech S S
BMW	X3	Diesel	X3 xDrive30d
Skoda	Karoq	Diesel	Karoq Se Tdi S-A
Ford	Focus	Petrol	Focus Zetec Auto
Skoda	Octavia	Petrol	Octavia Se Tsi
Renault	Kadjar	Petrol	Kadjar Gt Line Tce
Mercedes	A-class	Petrol	A 180 Se
Audi	Q7	Diesel	Q7 S Line 45 Tdi Quattro Auto
Audi	S8	Petrol	S8 Vorsprung Tfsi Mhev Quat A
Lexus	Nx	Petrol	Nx 300H F Sport Cvt
Mercedes	C-class	Petrol	Amg C 63 Premium + Auto
Audi	Q2	Petrol	Q2 Sport 35 Tfsi
Volvo	Xc40	Hybrid	Xc40 R-Design Pro T5 Phev Auto
Fiat	500	Petrol	500X Cross
Hyundai	I30	Petrol	I30 N Line Plus T-Gdi S-A
Suzuki	Swace	Petrol	Swace Sz5 Hev Cvt
Ford	Fiesta	Petrol	Fiesta St Performance Ed Turbo
Peugeot	308	Diesel	308 Allure Bluehdi S S Auto
Ford	Kuga	Diesel	Kuga Titan Frst Ed Eblue 4X4 A
Toyota	Proace	Diesel	Proace Verso Family L1 D-4D A
Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci 4X4
Volkswagen	T-Roc	Petrol	T-Roc Se Tsi Evo S-A
Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi
Volvo	V60	Diesel	V60 Momentum D3 Auto
Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci
DS	7	Hybrid	Ds7 Cback Ultra Prstg Phev4X4A
Nissan	E-Nv200	Electric	E-Nv200 Visia
Peugeot	208	Diesel	208 Gt Line Bluehdi S S
Mercedes	G-class	Petrol	Amg Gt Edition 476 Auto
Levc	Tx	Hybrid	Tx Vista
Volkswagen	Golf	Petrol	Golf S Tsi
Seat	Leon	Petrol	Leon Xcellence Tsi S-A
Mercedes	A-class	Petrol	A 180 Amg Line Premium
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi
Seat	Ateca	Petrol	Ateca Se Tsi Evo S-A
Seat	Ateca	Diesel	Ateca Fr Sport Tdi
Porsche	911	Petrol	911 Carrera 4S S-A
Kia	Sportage	Petrol	Sportage 1 Isg
Mazda	Cx-5	Diesel	Cx-5 Sport D 4X4 Auto
Renault	Clio	Diesel	Clio S Edition Blue Dci
Vauxhall	Astra	Diesel	Astra Sri Vx Line Nav T D A
Peugeot	Rifter	Diesel	Rifter Horizon Re Td Auto
Alfa Romeo	Giulia	Petrol	Giullia Veloce Tb Auto
Volkswagen	Touran	Petrol	Touran R Line Tsi S-A
Peugeot	508	Diesel	508 First Ed Sw Bluehdi S S A
Audi	A5	Diesel	A5 S-Ln V-Sprung 40Tdi Quat Sa
Mercedes	A-class	Diesel	A 180 Amg Line Executive D A
Mazda	Cx-5	Petrol	Cx-5 Gt Sport Auto
Toyota	Proace	Diesel	Proace Verso Family L0 D-4D A
Mazda	6	Petrol	6 Se-L Lux Nav +
Mercedes	A-class	Hybrid	A 250 Amg Line E Auto
Seat	Arona	Petrol	Arona Xcellence Tsi S-A
Mercedes	G-class	Petrol	Amg Gt Premium Auto
Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Isg 4X4A
Ford	Mondeo	Diesel	Mondeo Zetec Ed Econetic Tdci
Peugeot	108	Petrol	108 Collection
Mercedes	C-class	Petrol	Amg C 43 Night Ed Prem + 4M A
Seat	Ateca	Petrol	Ateca Xcellence Lux Tsi Evo
Mercedes	C-class	Petrol	C 200 Amg Line Edition Mhev A
Seat	Leon	Petrol	Leon Fr Tsi Evo S-A
Vauxhall	Insignia	Petrol	Insignia Design Turbo Auto
Mazda	Cx-30	Petrol	Cx-30 Se-L Mhev
Ford	Mondeo	Petrol	Mondeo Titanium Edition
Mercedes	G-class	Petrol	Glb 200 Sport Auto
Volvo	Xc40	Hybrid	Xc40 R-Design T5 Phev Auto
Honda	Nsx	Petrol	Nsx V6 Auto
Volvo	V90	Hybrid	V90 Inscription T6 Rchrg Awd A
Ford	Focus	Diesel	Focus St-Line X Tdci Auto
Volvo	V90	Diesel	V90 R-Design + D5 Awd Auto
Nissan	Micra	Petrol	Micra Visia + Ig-T Cvt
Skoda	Karoq	Diesel	Karoq Se L Tdi
Ford	Focus	Diesel	Focus Vignale Tdci
Ford	Tourneo	Diesel	Tourneo Custom 320 T-Nium Mhev
Fiat	500	Petrol	500X City Cross S-A
Skoda	Superb	Diesel	Superb Se Technology Tdi
Volvo	Xc40	Petrol	Xc40 R-Design B4 Mhev Awd Auto
Mercedes	E-class	Hybrid	E 300 Se De Auto
Toyota	Aygo	Petrol	Aygo X-Clusiv Vvt-I
Dacia	Duster	Diesel	Duster Comfort Blue Dci 4X4
Audi	A3	Diesel	A3 Se Technik 30 Tdi S-A
Audi	Q8	Diesel	Q8 Sln Blk Ed 50 Tdi Mhev Qt A
Vauxhall	Combo	Petrol	Combo Life Energy S S Auto
Vauxhall	Astra	Diesel	Astra Sri Nav Turbo D Auto
Mercedes	B-class	Petrol	B 200 Amg Line
Volvo	Xc40	Petrol	Xc40 Inscription Pro B4 Mhev A
Audi	A7	Diesel	A7 Sport 40 Tdi Quattro S-A
Volkswagen	Tiguan	Diesel	Tiguan Allspace R-Line Tdi
Audi	A8	Diesel	A8 S Line Blk Ed 50 Tdi Quat A
Vauxhall	Grandland	Petrol	Grandland X Elite Nav Prem T A
Renault	Clio	Petrol	Clio Rs Line Bose Tce Cvt
BMW	120i	Petrol	120i
Citroen	Spacetourer	Diesel	Spacetourer Feel Bluehdi S S A
Audi	A3	Diesel	A3 S Line Black Ed 35 Tdi S-A
Vauxhall	Astra	Petrol	Astra Se Turbo
BMW	M2	Petrol	M2 Competition
Peugeot	208	Petrol	208 Allure Premium Ptech S S A
Kia	Niro	Electric	Niro 4 Ev
Ford	Mondeo	Petrol	Mondeo Titanium Hev Auto
Audi	A5	Petrol	A5 S Line 40 Tfsi
Audi	TT	Petrol	Tt S Ln Vsprung45 Tfsi Quat Sa
Volkswagen	Golf	Petrol	Golf Gt Tsi Evo
Audi	Q2	Diesel	Q2 Sport 30 Tdi S-A
Peugeot	Rifter	Petrol	Rifter Active Puretech S S
Alfa Romeo	Giulia	Petrol	Giulia Sprint Tb Auto
Skoda	Octavia	Diesel	Octavia Se L Tdi
Lexus	Lc	Petrol	Lc 500 Sport + Auto
Audi	SQ7	Petrol	Sq7 Tfsi Quattro Auto
Audi	A4	Petrol	A4 Sport Ed 40 Tfsi Mhev S-A
Volvo	V60	Petrol	V60 R-Design B6 Mhev Awd Auto
Volkswagen	T-Cross	Diesel	T-Cross R-Line Tdi S-A
Volkswagen	Touran	Diesel	Touran Sel Tdi S-A
Toyota	Camry	Petrol	Camry Excel Vvt-I Cvt
Citroen	C3	Petrol	C3 Flair Nav Ed Puretech S S
Mercedes	C-class	Diesel	C 220 Amg Line D 4Matic Auto
Volvo	Xc90	Diesel	Xc90 B5 Awd Auto
Volkswagen	Tiguan	Diesel	Tiguan Aspace Rln Tec Tdi4M Sa
Hyundai	Kona	Electric	Kona Se Ev Auto
Hyundai	I30	Petrol	I30 N Line + Nav T-Gdi S-A
Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi Bmt
Skoda	Fabia	Petrol	Fabia Se L Tsi
Kia	Rio	Petrol	Rio Gt-Line Isg S-A
Vauxhall	Crossland	Petrol	Crossland X Se
Mazda	2	Petrol	2 100Th Anniversary Ed Mhev
Honda	Hr-V	Petrol	Hr-V Se I-Vtec
Peugeot	3008	Petrol	3008 Allure Premium P-Tech S S
Mercedes	G-class	Petrol	Amg Gla 45 S 4Matic+ Auto
Ford	Puma	Petrol	Puma St-Line Vignale Auto
Cupra	Formentor	Petrol	Formentor Vz2 Tsi 4Drive S-A
Seat	Ateca	Petrol	Ateca Cupra 300 C&S 4Drive S-A
Citroen	C3	Petrol	C3 Aircross Origins P-Tech S S
Abarth	595C	Petrol	595C Pista 70Th Anniversary
Seat	Tarraco	Petrol	Tarraco Se Tsi Evo
Peugeot	3008	Diesel	3008 Gt Line Bluehdi S S Auto
Mercedes	G-class	Diesel	Gle 300 Amg Line Prem D 4M A
Lexus	Ct	Petrol	Ct 200H Cvt
Ford	Tourneo	Diesel	Tourneo Connect Gr Ztec Tdci A
Porsche	Panamera	Petrol	Panamera Turbo S S-A
Kia	Sportage	Petrol	Sportage 3 Crdi Isg Mhev S-A
Toyota	Supra	Petrol	Supra Pro Auto
Honda	Cr-V	Petrol	Cr-V Sr I-Vtec Cvt
Volvo	V60	Petrol	V60 Inscription B5 Mhev Auto
Kia	Niro	Hybrid	Niro 2 Phev S-A
Seat	Tarraco	Petrol	Tarraco Se Technology Tsi Evo
Mercedes	G-class	Petrol	Amg Glc 63 Premium 4Matic Auto
Audi	Q3	Diesel	Q3 S Line Ed 1 40 Tdi Quat Sa
Audi	A4	Petrol	A4 S Line 35 Tfsi S-A
Audi	A6	Diesel	A6 S Line Black Ed 40 Tdi Sa
Toyota	Yaris	Petrol	Yaris Icon Tech Vvt-I Hev Cvt
Renault	Megane	Diesel	Megane Play Blue Dci
Ford	Fiesta	Petrol	Fiesta Active X Ed Turbo Auto
Peugeot	2008	Petrol	2008 Active Premium Ptech Ss A
Jaguar	E-Pace	Petrol	NaN
Skoda	Superb	Diesel	Superb Se L Executive Tdi S-A
Peugeot	5008	Diesel	5008 Gt Line Bluehdi S S Auto
Vauxhall	Corsa	Petrol	Corsa Se Nav Premium Turbo
Audi	A5	Petrol	A5 S Line Edition 40 Tfsi S-A
Volvo	V90	Diesel	V90 Inscription D4 Auto
Fiat	Qubo	Diesel	Qubo Lounge Multijet
Mercedes	C-class	Hybrid	C 300 Amg Line Ed Prem + E A
Fiat	500	Petrol	500 C Sport Twinair
Volvo	Xc60	Petrol	Xc60 Inscription T5 Awd Auto
Toyota	Yaris	Petrol	Yaris Icon Hev Cvt
Ford	Focus	Petrol	Focus Active Auto
Ford	Tourneo	Diesel	Tourneo Custom 320Actve Eblu A
Alfa Romeo	Giulietta	Diesel	Giulietta Sprint Jtdm-2
Vauxhall	Insignia	Diesel	Insignia Sri Nav Turbo D Auto
Mercedes	E-class	Petrol	E 450 Amg Lne Ngt Ed Prm+ 4M A
Nissan	Leaf	Electric	Leaf E + Tekna
Renault	Clio	Petrol	Clio Iconic Tce Cvt
Vauxhall	Corsa	Petrol	Corsa Elite Turbo Auto
Vauxhall	Corsa	Petrol	Corsa Elite Nav Premium Turbo
Volkswagen	Passat	Hybrid	Passat Gte Advance S-A
Peugeot	3008	Hybrid	3008 Gt Line S S Phev 4X4 Auto
Levc	Tx	Hybrid	Tx Icon
Kia	Sportage	Petrol	Sportage 2 Isg 4X4
Mercedes	G-class	Diesel	Gla 220 Amg Line Prem D 4M A
Toyota	Yaris	Petrol	Yaris Icon Vvt-I
Skoda	Scala	Petrol	Scala Se L Tsi
DS	3	Petrol	Ds3 Crossback Prstge Ptch Ss A
Seat	Alhambra	Diesel	Alhambra S Tdi S-A
Ford	Kuga	Diesel	Kuga Zetec Tdci 4X4 Auto
Mitsubishi	ASX	Petrol	Asx Dynamic
Honda	Cr-V	Petrol	Cr-V S I-Vtec 4X2
Peugeot	508	Petrol	508 Allure Sw Puretech S S A
Mazda	3	Petrol	3 Gt Sport Tech Mhev Auto
Audi	A1	Petrol	A1 S Line 25 Tfsi
Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi 4Drive Sa
Audi	A3	Petrol	A3 Technik 35 Tfsi
Skoda	Karoq	Diesel	Karoq Edition Tdi Scr 4X4
Dacia	Duster	Diesel	Duster Prestige Blue Dci 4X4
Renault	Zoe	Electric	Zoe I Gt Line Ze 50
Vauxhall	Insignia	Petrol	Insignia Tech Line Nav Turbo
Skoda	Superb	Petrol	Superb Se L Tsi S-A
Mercedes	B-class	Petrol	B 250 Amg Line Executive Auto
Kia	Proceed	Petrol	Proceed Gt Isg S-A
Renault	Koleos	Diesel	Koleos Gt Line Blue Dci Cvt
Vauxhall	Insignia	Diesel	Insignia Ultimate Nav Turbo D
Vauxhall	Crossland	Petrol	Crossland X Design Ln Eco S S
Kia	Mentor	Diesel	Mentor Glx Exec
Jeep	Wrangler	Diesel	Wrangler Overland M-Jet Ii A
BMW	Z4	Petrol	Z4 sDrive20i
Mercedes	A-class	Petrol	A 200 Amg Line Premium
Renault	Trafic	Diesel	Trafic Sl28 B-Ness+ Energy Dci
Seat	Ateca	Diesel	Ateca Xcellence Tdi
Mercedes	G-class	Diesel	Gla 220 Amg Line Exec D 4M A
Audi	Q7	Diesel	Q7 Sln Blk Ed 50Tdi Mhev Qto A
BMW	X5	Hybrid	X5 xDrive45e
Audi	Q3	Petrol	Q3 Sport 35 Tfsi S-A
Mercedes	C-class	Hybrid	Cla 250 Amg Line E Auto
Mercedes	C-class	Diesel	C 200 Se D
Ford	Fiesta	Petrol	Fiesta Zetec
Mercedes	G-class	Petrol	Glc 300 Amg Line Ultimate 4M A
Vauxhall	Crossland	Petrol	Crossland X Elite
Mercedes	C-class	Diesel	Cls 300 D Amg Line Premium + A
Cupra	Leon	Hybrid	Leon First Edition Phev S-A
Ford	Kuga	Petrol	Kuga St-Line X Edition
Seat	Ateca	Petrol	Ateca Se Technology Tsi Evo Sa
Peugeot	3008	Diesel	3008 Gt Line Premium Bhdi Ss A
BMW	740Li	Petrol	740Li
Peugeot	208	Petrol	208 Allure Puretech S S
Nissan	Micra	Petrol	Micra N-Tec Dig-T
Mercedes	A-class	Petrol	A 200 Sport Premium Auto
Volkswagen	Caravelle	Diesel	Caravelle Se Tdi Bmt S-A
Volvo	V60	Diesel	V60 Se Lux Nav D3
Mercedes	C-class	Petrol	Amg Cla 35 Premium 4Matic Auto
Kia	Rio	Petrol	Rio 2
Peugeot	308	Petrol	308 Gt Digital Puretech S S A
Audi	A7	Petrol	A7 S-Ln Vrsprng55 Tfsi Quat Sa
Kia	Niro	Petrol	Niro 3 Hev S-A
Vauxhall	Corsa	Petrol	Corsa Sri Premium Turbo Auto
Citroen	E-Spacetourer	Electric	E-Spacetourer Business
MG	Mg	Electric	Mg 5 Excite Ev
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Mhev 4X4 Auto
Mercedes	G-class	Petrol	Gla 200 Amg Line Executive A
Volvo	Xc40	Petrol	Xc40 Inscription B4 Mhev Auto
Toyota	Gt86	Petrol	Gt86 D-4S
Hyundai	I800	Diesel	I800 Se Crdi Auto
Ford	Tourneo	Diesel	Tourneo Custom 320 Actve Eblue
MINI	Cooper	Petrol	Cooper ALL4
Fiat	500	Petrol	500X 120Th Anniversary
Volkswagen	T-Cross	Petrol	T-Cross United Tsi S-A
Skoda	Octavia	Petrol	Octavia Sportline Tsi S-A
Porsche	911	Petrol	911 Carrera S-A
Peugeot	Bailey	Petrol	Bailey Approach Autograph 625
Dacia	Logan	Petrol	Logan Mcv Stepway Comfort Tce
Hyundai	I30	Petrol	I30 S T-Gdi
Volvo	V90	Diesel	V90 R-Design+ D5 P-Pulse Awd A
Volvo	S90	Hybrid	S90 Inscription + T8 Phev A A
Fiat	500	Petrol	500 C Pop Mhev
Audi	E-Tron	Electric	E-Tron 55 Quattro
Seat	Leon	Petrol	Leon Fr Tsi S-A
Volvo	Xc40	Petrol	Xc40 Inscription T3 Auto
Suzuki	Swift	Petrol	Swift Sz-T Dualjet Mhev
Vauxhall	Astra	Petrol	Astra Sri Turbo Cvt
Mazda	6	Petrol	6 100Th Anniversary Edition A
Volvo	Xc90	Petrol	Xc90 Momentum B5 Mhev Awd Auto
Citroen	C4	Petrol	C4 Gr Stourer Feel Ptech S S
Vauxhall	Corsa	Petrol	Corsa Ultimate Nav Turbo Auto
Mercedes	A-class	Petrol	Amg A 45 S 4Matic+ Auto
Vauxhall	Grandland	Diesel	Grandland X B-Ness Ed Nv T D A
Volvo	V90	Diesel	V90 Inscription + D5 Pp Awd A
BMW i	i3s	Electric	i3s
Renault	Koleos	Diesel	Koleos Iconic Dci Cvt
Lexus	Rc	Petrol	Rc F Auto
Citroen	Relay	Diesel	Relay 35 L4 Heavy + Bluehdi Ss
Nissan	X-Trail	Diesel	X-Trail Tekna Dci 4X4
Mazda	Cx-5	Petrol	Cx-5 Sport Auto
BMW	M8	Petrol	M8 Competition
Skoda	Superb	Diesel	Superb S Tdi
Peugeot	508	Petrol	508 Gt Sw Puretech S S Auto
Alfa Romeo	Stelvio	Diesel	Stelvio Super Td Awd Auto
Mercedes	E-class	Diesel	E 220 Amg Line Ed Prem + D A
BMW	X2	Petrol	X2 sDrive20i
Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci 4X4
Peugeot	508	Hybrid	508 Gt Line Sw S S Phev Auto
Audi	Q3	Petrol	Q3 S Line 40 Tfsi Quattro S-A
Mazda	6	Diesel	6 Gt Sport Nav + D
Volkswagen	Take Up	Petrol	Take Up
Ford	Focus	Diesel	Focus Active X Vignale Ecoblue
Ford	Fiesta	Petrol	Fiesta St-Line X Ed Turbo Auto
Mercedes	G-class	Petrol	Amg Gt Edition + 476 Auto
Audi	R8	Petrol	R8 V10 Rwd S-A
Vauxhall	Corsa	Petrol	Corsa Se Nav Turbo Auto
Seat	Arona	Petrol	Arona Xcellence Lux Ecotsi S-A
BMW	530d	Diesel	530d xDrive
Volkswagen	Touran	Petrol	Touran R-Line Tsi S-A
Audi	A5	Petrol	A5 S Line Vorsprung 35 Tfsi Sa
Audi	A5	Diesel	A5 S Line 35 Tdi Mhev S-A
Seat	Ateca	Petrol	Ateca Fr Tsi Evo S-A
Kia	Sorento	Diesel	Sorento Kx-2 Crdi Isg 4X4 Auto
Dacia	Logan	Diesel	Logan Mcv Stepway Comfrt B-Dci
Skoda	Karoq	Diesel	Karoq Se Technology Tdi Scr
Mazda	Mx-5	Petrol	Mx-5 100Th Anniversary Edition
Renault	Megane	Hybrid	Megane Rs Line E-Tech Auto
Vauxhall	Insignia	Diesel	Insignia Design Nav Turbo D A
Skoda	Octavia	Petrol	Octavia S Tsi S-A
Audi	RS 4	Petrol	Rs 4 Bronze Ed Tfsi Quat A
Renault	Grand	Petrol	Grand Scenic Iconic Tce
Ford	Fiesta	Petrol	Fiesta St-2 Turbo
Ford	Fiesta	Petrol	Fiesta Vignale Edition Turbo
Toyota	Corolla	Petrol	Corolla Icon Tech Vvti Hev Cvt
Vauxhall	Combo	Petrol	Combo Life Design S S
Suzuki	Swift	Petrol	Swift Attitude Dualjet Shvs
Ford	Mondeo	Diesel	Mondeo Titanium Tdci
Peugeot	3008	Petrol	3008 Gt Line Premium P-Tech Ss
Kia	Picanto	Petrol	Picanto Gt-Line
Ford	Fiesta	Petrol	Fiesta Vignale Turbo Auto
Audi	A4	Petrol	A4 S Line 35 Tfsi Mhev
Ford	Focus	Diesel	Focus Titanium Ecoblue
Mercedes	G-class	Diesel	Gle 350 Amg Night Ed D 4M A
Jaguar	I-Pace	Electric	NaN
Mercedes	A-class	Petrol	A 200 Amg Line Premium Auto
Audi	A3	Diesel	A3 Technik 35 Tdi S-A
Fiat	500	Petrol	500 C Sport Mhev
Lexus	Nx	Petrol	Nx 300H Takumi Cvt
Nissan	Leaf	Electric	Leaf E + N-Tec
Mazda	Cx-5	Petrol	Cx-5 100Th Anniversary Edition
Volkswagen	Transporter	Diesel	Transporter S Tdi
Toyota	Corolla	Petrol	Corolla Icon Hev Cvt
Mercedes	C-class	Petrol	C 300 Amg Line Night Ed Prem A
Audi	E-Tron	Electric	E-Tron Edition 1 55 Quattro
Mercedes	G-class	Petrol	Amg Gle 63 S Night Ed 4M A
Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Mhev
Audi	A6	Hybrid	A6 S Line 50 Tfsi E Quattro Sa
Audi	A4	Petrol	A4 Sln Blk Ed 45Tfsi Mhev Q Sa
Peugeot	308	Petrol	308 Allure Puretech S S Auto
Volvo	V90	Petrol	V90 R-Design + T4 Auto
Volkswagen	Passat	Petrol	Passat Se Tsi Evo
BMW	218i	Petrol	218i
Volvo	Xc40	Diesel	Xc40 Inscription Pro D4 Awd A
Peugeot	308	Diesel	308 Gt Bluehdi S S Auto
Peugeot	308	Petrol	308 Tech Edition Puretech S S
Audi	E-Tron	Electric	E-Tron Technik 50 Quattro
Kia	Stinger	Petrol	Stinger Gt-Line Isg Auto
Peugeot	5008	Petrol	5008 Allure Premium Ptech Ss A
Peugeot	308	Diesel	308 Allure Dig Sw Bhdi S S A
Audi	Q5	Diesel	Q5 S Line Tdi Quattro S-A
Peugeot	308	Petrol	308 Active Sw Puretech S S A
Toyota	Proace	Diesel	Proace Verso Combi L1 D-4D
Mercedes	C-class	Petrol	C 300 Amg Line Ed Prem + A
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi S-A
Honda	Cr-V	Petrol	Cr-V Se I-Vtec Cvt
Honda	Civic	Petrol	Civic Ex Vtec Cvt
Jeep	Compass	Diesel	Compass Nighteagle Multijet Ii
Mazda	3	Petrol	3 Se-L Lux Mhev
Volkswagen	E-Golf	Electric	E-Golf
Mercedes	G-class	Diesel	Glc 220 D 4M Amg Line Prem A
Mercedes	C-class	Diesel	Cla 200 Amg Line Prem D 4M A
Skoda	Superb	Diesel	Superb Se Technology Tdi S-A
Land Rover	Range Rover	Diesel	NaN
Mercedes	Sprinter	Diesel	Sprinter 315 Progressive Cdi
Citroen	Relay	Diesel	Relay 35 + Bluehdi
Nissan	Juke	Petrol	Juke Premiere Edition Dig-T
Hyundai	I30	Diesel	I30 Premium Crdi S-A
Fiat	500	Petrol	500 Collezione
Mazda	Cx-5	Petrol	Cx-5 Gt Sport Nav + Auto
Seat	Alhambra	Diesel	Alhambra Se Tdi
Volvo	Xc40	Diesel	Xc40 Inscription Pro D3
Mercedes	C-class	Petrol	Cla 200 Amg Line Premium + A
Citroen	Berlingo	Diesel	Berlingo Flair Bluehdi
Volkswagen	Id3	Electric	Id3 Life
Seat	Leon	Petrol	Leon Cupra Lux 290 Tsi S-A
Abarth	595C	Petrol	595C Competizione S-A
Hyundai	Kona	Diesel	Kona Se Crdi
Skoda	Karoq	Petrol	Karoq Se Technology Tsi
Volvo	Xc60	Diesel	Xc60 Rdesign Pro B4 Mhev Awd A
Volvo	Xc40	Hybrid	Xc40 Rdesign Pro T5 Recharge A
Mercedes	C-class	Diesel	C 300 Amg Line Premium+ D 4M A
Mazda	3	Petrol	3 Gt Sport Mhev Auto
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz5 B-Jet Mhev
Mitsubishi	Outlander	Hybrid	Outlander Verve Phev Cvt
Mercedes	C-class	Diesel	C 200 Sport D
Audi	SQ7	Petrol	Sq7 Black Edition Tfsi Quat A
Vauxhall	Grandland	Diesel	Grandland X Se Premium Turbo D
Mercedes	A-class	Diesel	A 220 D Amg Line Premium Auto
Skoda	Karoq	Diesel	Karoq Se Tdi Scr
Skoda	Karoq	Diesel	Karoq Se Tech Tdi Scr 4X4 S-A
BMW	520i	Petrol	520i
Renault	Captur	Diesel	Captur S Edition Bose Dci Auto
Toyota	Aygo	Petrol	Aygo X-Cite Vvt-I Cvt
Skoda	Kodiaq	Diesel	Kodiaq Sportline Tdi Scr 4X4
Porsche	718	Petrol	718 Cayman S S-A
Audi	A4	Diesel	A4 Technik 35 Tdi S-A
Porsche	Panamera	Hybrid	Panamera 4Spt Turismo E-Hyb Sa
Volkswagen	Golf	Petrol	Golf Se Tsi
Jeep	Renegade	Petrol	Renegade S Auto
Volvo	V60	Diesel	V60 R-Design D4 Auto
Skoda	Fabia	Petrol	Fabia Se Tsi
Mercedes	C-class	Diesel	Cla 200 Amg Line Premium D
Mercedes	S-class	Petrol	S 450 L Grand Edition Mhev A
Volkswagen	Polo	Petrol	Polo Gti Tsi S-A
Audi	A7	Diesel	A7 S Line 50 Tdi Quattro S-A
BMW	116d	Diesel	116d
Seat	Ateca	Diesel	Ateca Fr Sport Tdi 4Drive S-A
Mercedes	B-class	Petrol	B 180 Sport Auto
Audi	S3	Petrol	S3 Black Ed Tfsi Quattro S-A
Volvo	Xc90	Hybrid	Xc90 Inscrpt T8 Rcharge Awd A
Porsche	Taycan	Electric	Taycan Turbo
Peugeot	5008	Diesel	5008 Gt Line Premium Bhdi Ss A
Vauxhall	Combo	Petrol	Combo Life Energy S S
Ford	Mondeo	Petrol	Mondeo Zetec Tdci
Volvo	V60	Petrol	V60 C-Country B5 Mhev Awd Auto
Audi	Q8	Petrol	Q8 Sln Vor 55 Tfsi Mhev Quat A
Nissan	E-Nv200	Electric	E-Nv200 Acenta
Mercedes	C-class	Diesel	C 300 Amg Line Edition D Auto
Ford	Ecosport	Diesel	Ecosport Titanium Tdci
DS	7	Hybrid	Ds7 Crossback Prstge Phev4X4A
Renault	Megane	Petrol	Megane Gt Line Tce Auto
Dacia	Logan	Lpg	Logan Mcv Comfort Lpg Tce
Audi	A1	Petrol	A1 Citycarver 35 Tfsi S-A
Mercedes	S-class	Petrol	Slc 200 Final Edition
Audi	Q5	Petrol	Q5 S Line 45 Tfsi Quattro S-A
Seat	Tarraco	Diesel	Tarraco Fr Sport Tdi S-A
Smart	Eq	Electric	Eq Fortwo Pulse Premium
Mercedes	Vito	Diesel	Vito 114Cdi Tourer Select Auto
Audi	A4	Petrol	A4 Sport 40 Tfsi Mhev S-A
Audi	A3	Diesel	A3 S Line 35 Tdi S-A
Mercedes	C-class	Diesel	C 200 Amg Line D Auto
Peugeot	308	Petrol	308 Gt Digital Puretech S S
Fiat	500	Petrol	500 Star Twinair
Citroen	Berlingo	Diesel	Berlingo Multispace Feel B-Hdi
Volvo	Xc40	Hybrid	Xc40 R-Design T4 Recharge Auto
MG	3	Petrol	3 Exclusive Vti-Tech
Volkswagen	Tiguan	Diesel	Tiguan Match Tdi 4Motion S-A
Peugeot	5008	Petrol	5008 Gt Line Puretech S S Auto
Mitsubishi	Eclipse	Petrol	Eclipse Cross 3 Cvt
Mercedes	E-class	Petrol	E 450 Amg Line Ed Prem + 4M A
Citroen	C5	Hybrid	C5 Aircorss Flair + Phev A
Seat	Arona	Diesel	Arona Xcellence Lux Tdi Auto
Ford	Focus	Petrol	Focus Active X Auto
Dacia	Duster	Petrol	Duster Techroad Tce 4X2
Vauxhall	Astra	Diesel	Astra Elite Nav Premium Td
Mercedes	G-class	Hybrid	Glc 300 Amg Line E 4Matic Auto
Kia	Sportage	Diesel	Sportage 2 Crdi Isg
Audi	Q5	Petrol	Q5 S Line 45 Tfsi Mhev Quat Sa
Volkswagen	Id3	Electric	Id3 Tech
Hyundai	Ioniq	Petrol	Ioniq Premium Se Hev S-A
Mercedes	G-class	Petrol	Amg Gt S Premium Auto
Volvo	V60	Petrol	V60 Inscription B4 Mhev Auto
Volkswagen	Grand	Diesel	Grand California Tdi Auto
Mercedes	G-class	Petrol	Gla 180 Amg Line Premium + A
Mazda	3	Petrol	3 Sport Mhev Auto
Vauxhall	Grandland	Petrol	Grandland X Elite Nav T Ss A
Skoda	Octavia	Diesel	Octavia Vrs Tdi 4X4 S-A
Volkswagen	Tiguan	Diesel	Tiguan Aspace R-Line Tdi 4M Sa
Seat	Ateca	Petrol	Ateca Xperience Tsi 4Drive S-A
Peugeot	Rifter	Diesel	Rifter Active Bluehdi S S
Audi	A5	Diesel	A5 Sport 35 Tdi S-A
Peugeot	Boxer	Diesel	Boxer 335 L3 Bluehdi
Kia	Rio	Petrol	Rio Gt-Line S Mhev S-A
Audi	A4	Diesel	A4 S Ln Vsprung 40 Tdi Quat Sa
Ford	Ecosport	Petrol	Ecosport Zetec Auto
Skoda	Fabia	Petrol	Fabia Se L Mpi
Porsche	Panamera	Petrol	Panamera Executive 4 S-A
Vauxhall	Grandland	Petrol	Grandland X Elite Nav Turbo Ss
Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo
Citroen	C4	Petrol	C4 Cactus Feel Puretech S S
Kia	Picanto	Petrol	Picanto Zest
Volvo	Xc40	Diesel	Xc40 Momentum Pro D3 Auto
Audi	E-Tron	Electric	E-Tron Sport 55 Quattro
MG	Hs	Petrol	Hs Explore
Mercedes	E-class	Electric	Eqc 400 Amg Line 4Matic
Volvo	Xc60	Diesel	Xc60 Momentum Pro B5 Mhev Auto
Volvo	V60	Petrol	V60 R-Design + T5 Auto
Ford	Mondeo	Diesel	Mondeo St-Line Tdci
Audi	A7	Hybrid	A7 Black Ed 50 Tfsi E Quat S-A
Mercedes	A-class	Hybrid	A 250 Amg Line Premium E Auto
Mazda	6	Petrol	6 Se-L Nav +
Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi Bmt Sa
Audi	A7	Petrol	A7 Sport 55 Tfsi Quattro S-A
BMW	225xe	Hybrid	225xe iPerformance
Audi	A4	Petrol	A4 S Line 35 Tfsi Mhev S-A
Mercedes	G-class	Petrol	Amg Gt 63 S Edition 1 4M + A
Nissan	370Z	Petrol	370Z Nismo V6
Hyundai	I20	Petrol	I20 Play Mpi
Audi	A5	Petrol	A5 S Line 45 Tfsi Mhev Quat Sa
Porsche	718	Petrol	718 Boxster S-A
Nissan	Nv400	Diesel	Nv400 Tekna Dci
Kia	Sportage	Petrol	Sportage 3 Isg
Hyundai	I20	Petrol	I20 Premium Nav Mpi
Suzuki	Swift	Petrol	Swift Attitude Dualjet
Volvo	Xc40	Diesel	Xc40 Inscription D4 Awd Auto
Audi	A3	Petrol	A3 S Line Black Ed 35 Tfsi
Mercedes	G-class	Petrol	Gle 450 Amg Line Premium 4M A
DS	7	Petrol	Ds7 C-Back Elegance Ptech Ss
Mercedes	A-class	Petrol	A 220 Amg Line 4Matic Auto
Smart	Eq	Electric	Eq Forfour Prime Exclusive
Seat	Leon	Diesel	Leon Fr Tdi
Honda	Jazz	Petrol	Jazz S I-Vtec
Mercedes	B-class	Petrol	B 200 Amg Line Premium
Vauxhall	Grandland	Petrol	Grandland X Business Ed Nav T
Ford	S-Max	Diesel	S-Max Titanium Tdci
Ford	Kuga	Petrol	Kuga Titanium X Edition
Ford	Fiesta	Diesel	Fiesta St-Line X Tdci
Kia	Ceed	Petrol	Ceed Gt-Line Isg S-A
Ford	Puma	Petrol	Puma Titanium
Skoda	Superb	Diesel	Superb Sportline + Tdi S-A
Volvo	S90	Petrol	S90 B6 Mhev Awd Auto
Vauxhall	Grandland	Diesel	Grandland X Se Turbo D S S
Fiat	500	Petrol	500X Lounge S-A
Audi	E-Tron	Electric	E-Tron Sport 50 Quattro
Volvo	V90	Diesel	V90 R-Design B5 Mhev Awd Auto
Ford	Fiesta	Petrol	Fiesta
BMW	M5	Petrol	M5
BMW	420d	Diesel	420d
Nissan	Qashqai	Diesel	Qashqai N-Tec Dci
Suzuki	Vitara	Petrol	Vitara Sz-T Boosterjet Auto
BMW	M3	Petrol	M3 CS
Audi	A6	Diesel	A6 Aroad Vor 50Tdi Mhev Quat A
Alpine	Alpine	Petrol	Alpine Color Edition Auto
Kia	Picanto	Petrol	Picanto Gt-Line Isg
Fiat	500	Petrol	500 C Star Mhev
Skoda	Kodiaq	Diesel	Kodiaq Sportline Tdi 4X4
Audi	Q3	Diesel	Q3 S Line Black Ed 35 Tdi S-A
Vauxhall	Insignia	Diesel	Insignia Elite Nav Turbo D
Peugeot	5008	Diesel	5008 Gt Premium Bluehdi S S A
Mitsubishi	ASX	Petrol	Asx Black
Mercedes	G-class	Diesel	Glc 220 Amg Night Ed D 4M A
Renault	Captur	Diesel	Captur Bose Launch Edition Dci
Mercedes	C-class	Petrol	Cla 180 Amg Line Premium Auto
Peugeot	308	Petrol	308 Allure Dig Sw Ptech S S A
Mazda	2	Petrol	2 Gt Sport Nav Mhev
Kia	Ceed	Petrol	Ceed Gt-Line Isg
Ford	Fiesta	Petrol	Fiesta Sport Tdci
Dacia	Sandero	Diesel	Sandero Essential Blue Dci
Audi	RS Q8	Petrol	Rs Q8 Carbn Blk Tfsi Mhev Qt A
Audi	A3	Diesel	A3 S Line 40 Tdi Quattro S-A
Seat	Ateca	Petrol	Ateca Cup 300 Ltd Ed Tsi 4D Sa
Mazda	Cx-5	Diesel	Cx-5 Gt Sport D 4X4 Auto
Audi	Q5	Diesel	Q5 S Line 40 Tdi Quattro S-A
Ford	Independence	Diesel	Independence Re Auto
Hyundai	Tucson	Diesel	Tucson Prem Se 48V Mhev Crdi A
Vauxhall	Corsa	Petrol	Corsa Se Nav Premium
Volvo	Xc40	Petrol	Xc40 Momentum Core T2
Alpine	A110	Petrol	A110 Legende Auto
Volkswagen	Sharan	Diesel	Sharan S Tdi
Toyota	Proace	Diesel	Proace Verso Vip L2 D-4D Auto
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi 4Motion
Volkswagen	Arteon	Petrol	Arteon R-Line Ed Tsi 4M Sa
Volvo	V60	Diesel	V60 Momentum + D3
Audi	A3	Petrol	A3 S Line Black Ed 35 Tfsi S-A
Audi	A7	Hybrid	A7 Competition 55Tfsi E Qto Sa
Fiat	500	Petrol	500 Pop
Volkswagen	Sharan	Diesel	Sharan Se Navigation Tdi S-A
Mercedes	A-class	Diesel	A 220 Amg Line Premium D 4M A
Volvo	Xc60	Diesel	Xc60 Momentum Pro B4 Awd Auto
Audi	A7	Hybrid	A7 S Line 50 Tfsi E Quattro Sa
Volkswagen	Arteon	Diesel	Arteon Elegance Tdi S-A
Volvo	V90	Diesel	V90 R-Design D5 Awd Auto
Volkswagen	Tiguan	Petrol	Tiguan Aspace Rln Tec Tsi4M Sa
Dacia	Logan	Diesel	Logan Mcv Essential Blue Dci
Renault	Clio	Diesel	Clio Rs Line Dci
Ford	Ecosport	Diesel	Ecosport St-Line Tdci
Toyota	C-Hr	Petrol	C-Hr Orange Edition Hev Cvt
Fiat	Panda	Petrol	Panda City Cross Mhev
Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi S-A
Hyundai	Kona	Petrol	Kona Premium Gdi Hev S-A
Mercedes	E-class	Petrol	E 450 Amg Ln Ngt Ed Prm + 4M A
Renault	Zoe	Electric	Zoe I Iconc Rapid Charge Ze 50
Audi	Q3	Petrol	Q3 S Ln Blk Ed 45 Tfsi Quat Sa
Audi	RS Q3	Petrol	Rs Q3 Vsprung Tfsi Quattro Sa
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Mhev
Skoda	Octavia	Diesel	Octavia S Tdi
Mercedes	E-class	Petrol	E 220 D Se 4Matic Auto
Citroen	Spacetourer	Diesel	Spacetourer Flair Bluehdi Ss A
Vauxhall	Insignia	Diesel	Insignia Sri Nav Turbo D
Seat	Tarraco	Petrol	Tarraco Fr Tsi S-A
Citroen	C5	Diesel	C5 Aircross Feel Bluehdi S S
Kia	Sorento	Diesel	Sorento 3 Crdi Awd S-A
Seat	Ibiza	Petrol	Ibiza Xcellence Mpi
Peugeot	308	Petrol	308 Allure Digital Ptech S S A
Seat	Arona	Diesel	Arona Xcellence Tdi
Mercedes	G-class	Petrol	Gla 180 Amg Line Edition
Audi	S7	Diesel	S7 Vorsprung Tdi Quattro Auto
Audi	Q3	Diesel	Q3 Sport 35 Tdi S-A
Honda	Civic	Petrol	Civic Sr Vtec Cvt
Peugeot	2008	Petrol	2008 Gt Puretech S S Auto
Ford	Galaxy	Diesel	Galaxy Titanium X Ecoblue Auto
Volvo	Xc60	Diesel	Xc60 R-Design Pro B5 Awd Auto
Volkswagen	T-Roc	Diesel	T-Roc S Tdi
Vauxhall	Astra	Diesel	Astra Business Edition Nav T D
Mitsubishi	Outlander	Hybrid	Outlander 4H Phev Cvt
BMW	X5	Petrol	X5 M
Volkswagen	T-Cross	Diesel	T-Cross Sel Tdi S-A
Vauxhall	Grandland	Petrol	Grandland X Sport Nav T Ss A
Hyundai	I30	Petrol	I30 Premium Se T-Gdi
Renault	Zoe	Electric	Zoe I Play Ze 50
Peugeot	Traveller	Diesel	Traveller Active Bluehdi S S A
Toyota	Yaris	Petrol	Yaris Icon Vvt-I Cvt
Toyota	Land	Diesel	Land Cruiser Active D-4D Auto
MINI	Cooper S	Electric	Cooper SE
Mazda	3	Petrol	3 Sport Lux Mhev Auto
Ford	Fiesta	Petrol	Fiesta St Edition Turbo
Volvo	Xc60	Diesel	Xc60 Momentum Pro B5Mhev Awd A
Peugeot	308	Petrol	308 Active Sw Puretech S S
Volvo	Xc40	Diesel	Xc40 Inscription Pro D3 Auto
Toyota	Rav4	Petrol	Rav4 Icon Hev 4X2 Cvt
Renault	Captur	Petrol	Captur Gt Line Tce Auto
Citroen	C4	Petrol	C4 Cactus Origins Puretech S S
Ford	Kuga	Petrol	Kuga St-Line First Edition
Audi	A6	Petrol	A6 Sport 45 Tfsi Mhev Quat Sa
Peugeot	Rifter	Petrol	Rifter Allure Puretech S S
Ford	Fiesta	Petrol	Fiesta Vignale Edition T Mhev
Volkswagen	T-Roc	Petrol	T-Roc Black Edition Tsi Evo
Mercedes	C-class	Hybrid	C 300 Amg Line Ed Premium E A
MINI	Cooper S	Diesel	Cooper SD
Volvo	Xc40	Petrol	Xc40 Momentum B4 Mhev Awd Auto
Mercedes	G-class	Diesel	Gla 200 Amg Line Prem + D 4M A
BMW	640i	Petrol	640i xDrive
Mercedes	B-class	Petrol	B 180 Amg Line Premium Auto
Ford	Tourneo	Diesel	Tourneo Connect Grd Zetec Tdci
Volkswagen	Golf	Petrol	Golf Sv Gt Tsi Evo S-A
Renault	Captur	Petrol	Captur Play Tce
Kia	Stonic	Petrol	Stonic 3 Isg S-A
Honda	Hr-V	Petrol	Hr-V Se I-Vtec Cvt
Ford	Chausson	Diesel	Chausson Titanium 767Ga Auto
BMW	730Ld	Diesel	730Ld
Nissan	Qashqai	Diesel	Qashqai Acenta Premium Dci S-A
Kia	Picanto	Petrol	Picanto Titanium Edition Auto
Volkswagen	Tiguan	Diesel	Tiguan Aspace Se Nav Tdi 4M Sa
Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr 4X4
Seat	Arona	Petrol	Arona Fr Sport Tsi Evo
Fiat	500	Petrol	500 C S Twinair
Volvo	Xc40	Petrol	Xc40 Inscription T4 Awd Auto
Jeep	Compass	Diesel	Compass Limited Multijet Ii A
Seat	Ateca	Diesel	Ateca Xperience Tdi S-A
Mercedes	S-class	Petrol	Amg Slc 43 Auto
Volvo	Xc90	Diesel	Xc90 Inscrpt Pro B6 Mhev Awd A
Suzuki	Swift	Petrol	Swift Sz-T Dualjet Shvs
Mercedes	C-class	Petrol	Cla 200 Amg Line Auto
Kia	Ceed	Petrol	Ceed Gt Isg
Audi	A3	Diesel	A3 S Line 30 Tdi S-A
Mazda	2	Petrol	2 Sport Nav Mhev
Volvo	Xc90	Diesel	Xc90 R-Design B5 Awd Auto
Hyundai	Ioniq	Electric	Ioniq Premium Se Ev
Ford	Kuga	Diesel	Kuga Titanium Edition Tdci A
Volkswagen	Touareg	Diesel	Touareg V6 Black Edition Tdi A
Peugeot	Boxer	Diesel	Boxer 335 Bluehdi
Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi Evo S-A
Mercedes	B-class	Diesel	B 180 Amg Line Premium + D A
Ford	Sierra	Diesel	Sierra Sapphire Glx I
Hyundai	I20	Petrol	I20 Ultimate Mhev T-Gdi
Volkswagen	Transporter	Diesel	Transporter T30 Tdi Bmt S-A
Mercedes	S-class	Petrol	Slc 300 Amg Line Auto
Mitsubishi	Eclipse	Petrol	Eclipse Cross Exceed 4X4 Cvt
Ford	Kuga	Petrol	Kuga St-Line X Edition Hev Cvt
BMW	120d	Diesel	120d
Audi	Q3	Diesel	Q3 S Line Ed 1 35 Tdi Quattro
DS	7	Petrol	Ds7 C-Back Prestige Ptech Ss
Volvo	Xc60	Diesel	Xc60 Momentum Pro D4 Auto
Audi	Q2	Petrol	Q2 S Line 35 Tfsi S-A
Toyota	Gr	Petrol	Gr Yaris Circuit 4Wd
Kia	Sedona	Petrol	Sedona Sx V6
Audi	Q7	Diesel	Q7 Sport 45 Tdi Mhev Quattro A
Volvo	V60	Hybrid	V60 Inscription T6 Rchrg Awd A
Volkswagen	Golf	Hybrid	Golf Gte S-A
Mercedes	S-class	Petrol	Slc 200 Final Edition Auto
Volvo	V90	Diesel	V90 D5 Awd Auto
Mercedes	S-class	Hybrid	S 560 E L Se Auto
Porsche	718	Petrol	718 Cayman
Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi 4M S-A
Volkswagen	Golf	Petrol	Golf Gt Edition Tsi Evo S-A
Toyota	Yaris	Petrol	Yaris Icon Vvt-I Hev Cvt
Mercedes	C-class	Diesel	C 220 Amg Line Ed Prem + D A
Mercedes	G-class	Petrol	Amg Gle 53 Mhev 4Matic+ Auto
Audi	A7	Diesel	A7 S-Ln Vorsprung50 Tdi Quat A
Ford	Kuga	Diesel	Kuga Titanium Ecoblue
Ford	Kuga	Diesel	Kuga St-Line X Ed Eblue 4X4 A
Mercedes	C-class	Diesel	C 220 Amg Lne Ngt Ed Prm + D A
Hyundai	I30	Diesel	I30 Premium Mhev Crdi
Nissan	370Z	Petrol	370Z 50Th Anniversary V6
Renault	Kadjar	Petrol	Kadjar Dynamique S Nav Tce
BMW	X6	Diesel	X6 M50d
Peugeot	5008	Diesel	5008 Active Bluehdi S S
Volvo	Xc40	Petrol	Xc40 R-Design T4 Awd Auto
Mercedes	S-class	Petrol	S65 Amg L Auto
Mercedes	G-class	Petrol	Glb 200 Amg Line Premium + A
Jeep	Compass	Diesel	Compass Nightegle M-Jet Ii 4X2
Vauxhall	Astra	Petrol	Astra Business Edition Nav T
Kia	Rio	Petrol	Rio 3 Mhev S-A
Peugeot	308	Petrol	308 Allure Dig Sw Ptech S S
Mercedes	C-class	Diesel	Cla 180 Sport Premium + D
Volvo	S60	Hybrid	S60 P-Star Engrd T8Rchrg Awd A
Fiat	Rapido	Diesel	Rapido 650F Auto
Vauxhall	Combo	Petrol	Combo Life Edition S S
Volkswagen	Tiguan	Petrol	Tiguan Aspce Rln Tch Tsievo Sa
DS	7	Hybrid	Ds7 C-Back Pfrmnc Ln Phev 4X4A
BMW	125i	Petrol	125i
Dacia	Duster	Lpg	Duster Comfort Lpg Tce 4X2
Peugeot	308	Diesel	308 Actve Prm Dig Sw Bhdi Ss A
Ford	Focus	Petrol	Focus Titanium Edition Mhev
Skoda	Scala	Petrol	Scala Monte Carlo Tsi S-A
Audi	SQ8	Petrol	Sq8 Tfsi Quattro Auto
Mitsubishi	Outlander	Hybrid	Outlander Dynamic Phev Cvt
Porsche	718	Petrol	718 Cayman Gt4 S-A
Mercedes	G-class	Petrol	Amg Glb 35 Premium + 4Matic A
Audi	A6	Diesel	A6 S Lne Blk Ed 40 Tdi Quat Sa
Volvo	Xc40	Hybrid	Xc40 Inscription T5 Recharge A
Vauxhall	Crossland	Petrol	Crossland X Elite Turbo Auto
Mercedes	G-class	Petrol	Amg Glc 63 S Premium 4M + A
Mercedes	G-class	Diesel	Glb 200 Amg Line D Auto
Peugeot	2008	Diesel	2008 Active Bluehdi S S
Mitsubishi	Outlander	Petrol	Outlander 4 Cvt
BMW	320i	Petrol	320i
Kia	Rio	Petrol	Rio 3 Mhev
Seat	Tarraco	Diesel	Tarraco Xcellenc Lux Tdi 4D Sa
Fiat	500	Petrol	500 Rockstar Mhev
Seat	Arona	Petrol	Arona Fr Sport Tsi
Suzuki	Ignis	Petrol	Ignis Sz5 Dualjet Shvs Allgrip
Honda	Jazz	Petrol	Jazz Sr I-Mmd Cvt
Volkswagen	Passat	Diesel	Passat Se Tdi
Peugeot	108	Petrol	108 Allure Top
Toyota	Gt86	Petrol	Gt86 Pro D-4S Auto
Kia	Sportage	Diesel	Sportage Gt-Ln Crdi Isg 4X4 Sa
MG	Hs	Hybrid	Hs Excite Phev Auto
Porsche	718	Petrol	718 Boxster
Mercedes	C-class	Petrol	C 200 Se Auto
Ford	Ecosport	Diesel	Ecosport St-Line Ecoblue
Vauxhall	Corsa	Petrol	Corsa Se Premium Turbo
Peugeot	2008	Petrol	2008 Allure Premium Ptech S S
Mercedes	S-class	Petrol	Sl 500 Grand Edition Auto
Audi	A3	Petrol	A3 S Ln Blk Ed 40 Tfsi Quat Sa
Nissan	X-Trail	Diesel	X-Trail Tekna Dci
Seat	Ateca	Diesel	Ateca Xperience Lux Tdi S-A
Peugeot	208	Diesel	208 Allure Bluehdi S S
Dacia	Sandero	Petrol	Sandero Access Sce
Audi	Q3	Diesel	Q3 S Line 40 Tdi Quattro S-A
Audi	TT	Petrol	Tt S Line 40 Tfsi S-A
Vauxhall	Grandland	Diesel	Grandland X Griffin Turbo D
Nissan	Micra	Petrol	Micra Tekna Ig-T Cvt
Citroen	C4	Diesel	C4 Grand Stourer Feel+ Bhdi Ss
Mercedes	E-class	Hybrid	E 300 Amg Lne Ngt Ed Prem+ E A
Toyota	Yaris	Petrol	Yaris Y20 Vvt-I Hev Cvt
Dacia	Duster	Diesel	Duster Comfort Blue Dci 4X2
Seat	Ateca	Diesel	Ateca Fr Tdi 4Drive Auto
Seat	Ateca	Diesel	Ateca Xcellence Tdi 4Drive S-A
Mercedes	G-class	Petrol	Amg S 63 Auto
Peugeot	Rifter	Diesel	Rifter Premier Rs Td
Ford	Fiesta	Petrol	Fiesta B And O Play Titanium T
Renault	Clio	Petrol	Clio Iconic Bose Sce
Volkswagen	Polo	Petrol	Polo United Evo
Mercedes	E-class	Petrol	Amg E 53 4Matic Auto
Peugeot	2008	Diesel	2008 Gt Bluehdi S S
Dacia	Duster	Diesel	Duster Techroad Blue Dci 4X4
Suzuki	Ignis	Petrol	Ignis Sz3 Dualjet Shvs
Renault	Captur	Petrol	Captur Bose Launch Ed Tce Auto
Volkswagen	Tiguan	Diesel	Tiguan Se Navigation Tdi S-A
Volkswagen	Tiguan	Diesel	Tiguan Elegance Tdi 4Motion Sa
Peugeot	3008	Petrol	3008 Gt Line Prem P-Tech S S A
Mercedes	G-class	Petrol	Amg Glc 63 Premium 4Matic + A
Audi	A4	Petrol	A4 Sport 40 Tfsi S-A
Hyundai	Tucson	Petrol	Tucson Premium T-Gdi 2Wd
Renault	Megane	Diesel	Megane Iconic Dci
Volkswagen	Passat	Petrol	Passat R-Line Tsi S-A
Mercedes	E-class	Petrol	E 350 Amg Line Premium + Auto
Audi	A5	Petrol	A5 Sport 40 Tfsi S-A
Volkswagen	Touran	Petrol	Touran S Tsi
Kia	Picanto	Petrol	Picanto X-Line S Auto
Volkswagen	Touareg	Diesel	Touareg V6 R-Line Tdi Auto
Peugeot	Boxer	Diesel	Boxer 335 Pro L2H2 Bhdi
Skoda	Karoq	Diesel	Karoq Sportline Tdi Scr
Skoda	Karoq	Diesel	Karoq Se L Tdi Scr 4X4 S-A
Vauxhall	Grandland	Diesel	Grandland X Businss Ed Nav T D
Nissan	X-Trail	Diesel	X-Trail Tekna Dci Cvt
Mercedes	S-class	Hybrid	S 560 E L Amg Line Executive A
Volvo	Xc40	Petrol	Xc40 Rdesign Pro B4 Mhev Awd A
Skoda	Octavia	Diesel	Octavia Se Technology Tdi S-A
Audi	TT	Petrol	Ttrs Audi Sprt Ed Tfsi Quat Sa
Seat	Taracco	Petrol	Taracco X-Lnc Lux Tsi Evo Sa
BMW	750i	Petrol	750i xDrive
Peugeot	208	Electric	208 Allure Premium Ev
Ford	Mondeo	Diesel	Mondeo St-Line Edition Eblue A
Porsche	Cayenne	Petrol	Cayenne V8 Turbo Auto
Jeep	Renegade	Petrol	Renegade Longitude Auto
Dacia	Sandero	Petrol	Sandero Comfort Sce
Hyundai	I20	Petrol	I20 Se Connect Mhev T-Gdi Auto
Volvo	Xc60	Hybrid	Xc60 P-Str Engrd T8Rchrg Awd A
Mercedes	C-class	Petrol	Cls 350 Amg Line Premium + A
Mercedes	C-class	Petrol	Amg C 63 Auto
Citroen	C5	Petrol	C5 Aircross Shine Ptech S S A
Citroen	C5	Petrol	C5 Aircross Flair P-Tech Ss A
Fiat	500	Petrol	500X S-Design S-A
Volkswagen	Polo	Petrol	Polo Sel Tsi
Skoda	Superb	Diesel	Superb Se L Tdi S-A
Mercedes	A-class	Petrol	A 180 Se Executive
Volkswagen	Up	Petrol	Up
Mercedes	A-class	Petrol	A 250 Amg Line Auto
Mercedes	C-class	Petrol	Amg Cls 53 4Matic Plus Auto
Volkswagen	Sharan	Petrol	Sharan Se Navigation Tsi
Audi	Q5	Hybrid	Q5 S Line 50 Tfsi E Quattro Sa
Ford	Freedom	Diesel	Freedom Grand Rs
Mercedes	A-class	Petrol	A 220 Amg Line Prem + 4Matic A
Mercedes	E-class	Diesel	E 220 D Amg Line Premium Auto
Volkswagen	T-Cross	Diesel	T-Cross Se Tdi
Renault	Captur	Diesel	Captur Iconic Dci
Seat	Tarraco	Diesel	Tarraco Fr Tdi 4Drive S-A
Volvo	V90	Diesel	V90 Inscription B4 Mhev Auto
BMW	330d	Diesel	330d xDrive
Vauxhall	Combo	Diesel	Combo Life Energy Cdti Ss Auto
Dacia	Logan	Petrol	Logan Mcv Comfort Sce
Vauxhall	Grandland	Petrol	Grandland X Sport Nav Turbo Ss
Ford	Tourneo	Diesel	Tourneo Custom 310 Sprt Tdci A
Mercedes	G-class	Petrol	Glb 200 Amg Line Premium Auto
Peugeot	308	Petrol	308 Allure Digital Ptech S S
BMW	320d	Diesel	320d xDrive
Kia	Proceed	Diesel	Proceed Gt-Line Crdi Isg
Skoda	Kamiq	Petrol	Kamiq Monte Carlo Tsi S-A
Audi	A1	Petrol	A1 S Line Vorsprung 30 Tfsi
Ford	Kuga	Petrol	Kuga St-Line
Volkswagen	T-Roc	Diesel	T-Roc Design Tdi
Audi	E-Tron	Electric	E-Tron Launch Edition 50 Quat
Porsche	911	Petrol	911 Carrera S
Dacia	Duster	Petrol	Duster Prestige Tce 4X2
BMW i	i3s	Hybrid	i3s 94 REX
Audi	E-Tron	Electric	E-Tron S Quattro
Volvo	Xc40	Diesel	Xc40 Momentum Pro D3 Awd Auto
Ford	Fiesta	Diesel	Fiesta Zetec Tdci
Mercedes	B-class	Petrol	B 180 Sport Premium
Mazda	Cx-5	Petrol	Cx-5 Gt Sport
Mercedes	C-class	Diesel	C230 Esprit Komp Auto
Fiat	500	Petrol	500 Pop S-A
Mazda	Cx-5	Petrol	Cx-5 Se-L Auto
Ford	Ecosport	Petrol	Ecosport St-Line
Skoda	Superb	Petrol	Superb Se L Executive Tsi S-A
Porsche	Panamera	Petrol	Panamera Gts S-A
Ford	Mondeo	Petrol	Mondeo St-Line Edition Auto
Renault	Clio	Petrol	Clio S Edition Bose Tce Cvt
Hyundai	Santa	Diesel	Santa Fe Premium Crdi
Audi	A4	Diesel	A4 Allroad Vor 50 Tdi Quat A
Volkswagen	T-Roc	Diesel	T-Roc Sel Tdi
Citroen	C1	Petrol	C1 Airscape Shine
Ford	Mondeo	Diesel	Mondeo St-Line Edition Tdci A
Skoda	Superb	Diesel	Superb Sportline Tdi S-A
Seat	Ateca	Diesel	Ateca Xperience Lux Tdi 4D Sa
Audi	A4	Diesel	A4 S Line 30 Tdi S-A
Jeep	Renegade	Diesel	Renegade Longitude Multijet Ii
Nissan	E-Nv200	Electric	E-Nv200 Evalia
Seat	Arona	Petrol	Arona Se Tsi S-A
Mercedes	C-class	Diesel	Cla 180 Amg Line Executive D
Toyota	Aygo	Petrol	Aygo Jbl Edition Tss Vvt-I Cvt
Toyota	Rav4	Petrol	Rav4 Black Edition Hev 4X2 Cvt
Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci 4X4
Porsche	Panamera	Hybrid	Panamera 4 E-Hybrid S-A
Audi	A5	Diesel	A5 Sport 35 Tdi Mhev S-A
Ford	Tourneo	Diesel	Tourneo Custom 310 Ti Tdci A
Audi	Q2	Diesel	Q2 S Line 30 Tdi
Porsche	911	Petrol	911 Gt3 Rs S-A
Skoda	Kodiaq	Diesel	Kodiaq Se L Tdi Scr 4X4 S-A
Seat	Ateca	Diesel	Ateca Fr Tdi 4Drive S-A
Mercedes	V-class	Diesel	V 250 D Sprt Marco Polo Hrzn A
Mercedes	S-class	Petrol	Amg Slc 43 Premium Auto
Audi	Q3	Diesel	Q3 S Line Vorsprung 35 Tdi S-A
Porsche	Panamera	Hybrid	Panamera 4S Ehyb Spt Tour Sa
Volkswagen	Touran	Petrol	Touran Se Tsi S-A
Mercedes	G-class	Diesel	Gla 200 Amg Line Premium + D A
Lexus	Rx	Petrol	Rx 450H Cvt
Tesla	Model X	Electric	Model X Performance Awd
Toyota	Yaris	Petrol	Yaris Y20 Vvt-I Cvt
Volkswagen	Tiguan	Petrol	Tiguan R-Line Tech Tsi Evo S-A
Honda	E	Electric	E
Mercedes	C-class	Petrol	C 300 Amg Line Edition Auto
Mercedes	Vito	Diesel	Vito 119Cdi Tourer Pro Auto
Ford	Kuga	Diesel	Kuga Titanium Ecoblue Mhev
Jaguar	E-Pace	Diesel	NaN
Jeep	Compass	Diesel	Compass S Multijet Ii 4X2
Skoda	Octavia	Diesel	Octavia S Tdi S-A
Volvo	V90	Petrol	V90 R-Design + T6 Awd Auto
Porsche	Macan	Petrol	Macan S-A
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tdi 4Motion S-A
Honda	Jazz	Petrol	Jazz Se Navi I-Vtec
Audi	A4	Diesel	A4 S Line 40 Tdi Mhev Quat Sa
Tesla	Model S	Electric	Model S Long Range Awd
Skoda	Octavia	Diesel	Octavia Se Tech First Ed Tdi
Volkswagen	Tiguan	Petrol	Tiguan Allspace Match Tsi Evo
Kia	Picanto	Petrol	Picanto X-Line S
Citroen	E-Spacetourer	Electric	E-Spacetourer Feel
Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev 4X4 Auto
Mercedes	C-class	Diesel	Cls 400 D Amg Line 4Matic Auto
Peugeot	308	Diesel	308 Allure Digital B-Hdi S S A
Volkswagen	Golf	Diesel	Golf Gt Tdi S-A
Kia	Stonic	Petrol	Stonic 4 Isg
Skoda	Superb	Diesel	Superb Sportline + Tdi
Audi	A4	Diesel	A4 Allroad Sport 40Tdi Quat Sa
Audi	A8	Diesel	A8 L S Line 50 Tdi Quattro A
Peugeot	Traveller	Diesel	Traveller Actv Stand Bhdi Ss A
Ford	Kuga	Diesel	Kuga Zetec Ecoblue
Seat	Leon	Petrol	Leon Fr Sport Tsi S-A
Volkswagen	Passat	Petrol	Passat Se Tsi Evo S-A
Kia	Niro	Petrol	Niro 4 S-A
Skoda	Superb	Petrol	Superb Se Tsi
Peugeot	Traveller	Diesel	Traveller Business Bluehdi S S
Peugeot	Rifter	Diesel	Rifter Horizon Rs Td Auto
Mercedes	G-class	Diesel	Gla 200 Amg Line Prem D 4M A
Jaguar	XE	Petrol	NaN
Audi	A3	Diesel	A3 Technik 30 Tdi
Renault	Captur	Diesel	Captur Play Dci Auto
Ford	Kuga	Diesel	Kuga St-Line Edition Tdci Auto
Audi	Q3	Diesel	Q3 S Lne Blk Ed 35 Tdi Quat Sa
Audi	A6	Diesel	A6 Aroad Vor 45Tdi Mhev Quat A
BMW	745e	Hybrid	745e
Volvo	Xc40	Petrol	Xc40 Inscription T4 Auto
Ford	Fiesta	Petrol	Fiesta St-Line X Turbo
Kia	Rio	Petrol	Rio 2 Isg
Audi	A5	Petrol	A5 S Line Black Ed 35 Tfsi Sa
Mercedes	A-class	Diesel	A 220 Amg Line Premium+ D 4M A
Citroen	C4	Diesel	C4 Gr Stourer Flair Bhdi S S
Citroen	C3	Petrol	C3 Flair Puretech
Volvo	Xc60	Petrol	Xc60 R-Design T5 Awd Auto
Volkswagen	T-Roc	Petrol	T-Roc Design Tsi Evo S-A
Mercedes	E-class	Diesel	E 220 Amg Lne Ngt Ed Prm + D A
Renault	Megane	Diesel	Megane Iconic Blue Dci Auto
Kia	Sorento	Diesel	Sorento Kx-1 Crdi Isg 4X4
Fiat	500	Petrol	500L Urban
Abarth	595	Petrol	595 Monster Yamaha
Volvo	Xc60	Diesel	Xc60 Momentum B4 Mhev Auto
Hyundai	Tucson	Diesel	Tucson Se Nav Crdi 2Wd S-A
Dacia	Logan	Diesel	Logan Mcv Sway Se Twenty B-Dci
Kia	Niro	Electric	Niro 3 Ev
Volvo	V60	Petrol	V60 Momentum + T4 Auto
BMW	X7	Petrol	X7 xDrive40i
Skoda	Kodiaq	Diesel	Kodiaq Sportlne Tdi Scr 4X4 Sa
Mercedes	G-class	Diesel	Glb 220 Amg Line Prem D 4M A
Suzuki	Swift	Petrol	Swift Sport Boosterjet
Skoda	Karoq	Petrol	Karoq Se Tsi
Seat	Arona	Petrol	Arona Xcellence Ecotsi
Hyundai	I30	Diesel	I30 Se Nav Crdi S-A
Audi	Q8	Diesel	Q8 Sln Vsprung 50Tdi Mhev Qt A
Ford	S-Max	Petrol	S-Max St-Line Turbo
Hyundai	I30	Diesel	I30 Se Nav Crdi
Audi	Q7	Hybrid	Q7 Sport 55 Tfsi E Quattro A
Audi	A7	Diesel	A7 S-Ln Blk Ed 50 Tdi Quat S-A
Nissan	Leaf	Electric	Leaf Tekna
Honda	Cr-V	Petrol	Cr-V S I-Mmd 4X2 Cvt
Vauxhall	Grandland	Diesel	Grandland X Griffin Turbo D A
Audi	A6	Diesel	A6 Sport 40 Tdi Quattro S-A
Volkswagen	California	Diesel	California Ocean Tdi 4M S-A
Seat	Ibiza	Petrol	Ibiza Se Technology Tsi
Audi	A6	Petrol	A6 Aroad Sport 55Tfsi Mhev Q A
Skoda	Octavia	Petrol	Octavia Se First Edition Tsi
Peugeot	208	Petrol	208 Allure Premium Puretech Ss
Seat	Leon	Hybrid	Leon Fr Phev S-A
Ford	Kuga	Diesel	Kuga Titanium Tdci
Volkswagen	T-Roc	Petrol	T-Roc United Tsi
Nissan	Qashqai	Petrol	Qashqai Tekna + Dig-T
Ford	Transit	Petrol	Transit Custom 300 Limited A
Fiat	500	Petrol	500 S Twinair
Ford	Kuga	Diesel	Kuga St-Line Edit Tdci 4X4 A
Ford	Focus	Petrol	Focus Active Edition Mhev
Mercedes	G-class	Petrol	Amg Gla 35 Premium + 4Matic A
Audi	A6	Petrol	A6 S Line 45 Tfsi Quattro S-A
Volvo	Xc60	Hybrid	Xc60 Rdesgn Pro T8 Rchrg Awd A
Volkswagen	Passat	Petrol	Passat Sel Tsi Evo S-A
Vauxhall	Crossland	Diesel	Crossland X Elite Turbo D Auto
Mercedes	G-class	Petrol	Glb 200 Amg Line Auto
Fiat	500	Petrol	500 C Dolcevita
Ford	Mondeo	Diesel	Mondeo Titanium Ed Eblue A
Fiat	500	Petrol	500 Rockstar S-A
Volkswagen	Transporter	Diesel	Transporter T30 Startline Tdi
Volkswagen	Arteon	Petrol	Arteon Elegance Tsi Evo S-A
Skoda	Scala	Petrol	Scala Monte Carlo Tsi
Peugeot	308	Petrol	308 Gt Line Puretech S S
Citroen	C3	Petrol	C3 Shine Puretech S S Auto
Kia	Niro	Petrol	Niro 4 Hev S-A
Volkswagen	Arteon	Diesel	Arteon R-Line Tdi 4Motion S-A
Peugeot	308	Petrol	308 Gt Line Puretech S S Auto
Ford	Journey	Diesel	Journey Grand Rs Auto
Kia	Sportage	Petrol	Sportage Gt-Ln S Crdi Mhev Sa
Renault	Kadjar	Petrol	Kadjar Iconic Tce
Renault	Trafic	Diesel	Trafic Business Energy Dci A
Volvo	Xc60	Diesel	Xc60 Inscription B4 Mhev Auto
Ford	Kuga	Petrol	Kuga St-Line X
Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet
Seat	Ateca	Petrol	Ateca Cupra 300 Tsi 4Drive S-A
Kia	Sportage	Petrol	Sportage 2 Isg
Citroen	C5	Diesel	C5 Aircross Flair + Bhdi Ss
Mercedes	C-class	Diesel	C 200 Se D Auto
BMW	X4	Petrol	X4 xDrive20i
Renault	Scenic	Petrol	Scenic Iconic Tce
Volkswagen	Move Up	Petrol	Move Up
Suzuki	Vitara	Petrol	Vitara Sz5 Boosterjet Mhev
Nissan	Qashqai	Diesel	Qashqai N-Tec Dci S-A
Volvo	S90	Diesel	S90 Inscription + D4 Auto
DS	7	Diesel	Ds7 C-Back Elegance B-Hdi Ss A
Honda	Jazz	Petrol	Jazz Crosstar Ex I-Mmd Cvt
Hyundai	I20	Petrol	I20 Premium Nav T-Gdi
Hyundai	I30	Diesel	I30 Se Crdi
Hyundai	I30	Petrol	I30 N Line + Nav T-Gdi
Kia	Sorento	Petrol	Sorento 4 Hev Awd Auto
Mercedes	Vito	Diesel	Vito 114 Bluetec Tourer Pro
Audi	Q5	Diesel	Q5 S Line 40 Tdi Mhev Quat S-A
DS	3	Electric	Ds 3 Crossback Ultra Prstge Ev
Audi	Q3	Petrol	Q3 Sport 35 Tfsi Mhev S-A
Ford	Kuga	Diesel	Kuga St-Line Ecoblue 4X4 Auto
Skoda	Octavia	Petrol	Octavia Vrs 245 Tsi
Mercedes	E-class	Electric	Eqc 400 Amg Line Premium + 4M
Renault	Zoe	Electric	Zoe Signature Nav Ze 40 Auto
Toyota	Prius	Petrol	Prius Excel Vvt-I Cvt
Abarth	595	Petrol	595
Porsche	911	Petrol	911 Carrera 4 S-A
Peugeot	508	Diesel	508 Allure Sw Bluehdi S S A
Volvo	S90	Diesel	S90 Momentum + D4 Auto
Audi	A3	Diesel	A3 S Line 30 Tdi
Mercedes	B-class	Petrol	B 250 Amg Line Premium + Auto
Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev S-A
Volvo	Xc60	Diesel	Xc60 R-Design Pro B4 Awd Auto
Toyota	Corolla	Petrol	Corolla Gr Sport Hev Cvt
Mercedes	C-class	Petrol	C 300 Amg Line Auto
Lexus	Rc	Petrol	Rc F Track Edition Auto
Skoda	Karoq	Diesel	Karoq Se Drive Tdi
Ford	Mustang	Electric	Mustang Mach-E Std Range Awd
Peugeot	5008	Petrol	5008 Allure Puretech S S
Kia	Niro	Petrol	Niro 3 S-A
Jeep	Renegade	Petrol	Renegade Limited Auto
Renault	Kadjar	Petrol	Kadjar Play Tce
Porsche	Taycan	Electric	Taycan 4S 93Kwh
Audi	A6	Petrol	A6 Sln Vor 45Tfsi Mhev Quat Sa
Mercedes	B-class	Petrol	B 220 Amg Line D Auto
Ford	Kuga	Diesel	Kuga Zetec Tdci
Peugeot	108	Petrol	108 Allure
Ford	Mondeo	Diesel	Mondeo
Citroen	C4	Petrol	C4 Gr Stourer Flair+ Ptch Ss A
Kia	Picanto	Petrol	Picanto Titanium Edition
Mazda	6	Diesel	6 Se-L Nav + D
Alpine	A110	Petrol	A110 S Auto
Alfa Romeo	Giulia	Petrol	Giulia V6 Biturbo Q-Rifoglio A
Audi	A4	Petrol	A4 S Line Black Ed 40 Tfsi Sa
Audi	A1	Petrol	A1 Sport 30 Tfsi
Kia	Rio	Petrol	Rio 2 Auto
Seat	Ateca	Diesel	Ateca Se Tdi
Citroen	C1	Petrol	C1 Touch
Porsche	Panamera	Petrol	Panamera S-A
Porsche	718	Petrol	718 Cayman Gts
Fiat	Tipo	Diesel	Tipo Mirror Multijet
Renault	Megane	Diesel	Megane Play Dci
Dacia	Duster	Diesel	Duster Prestige Blue Dci 4X2
Nissan	Qashqai	Diesel	Qashqai Tekna Dci S-A
Vauxhall	Insignia	Petrol	Insignia Elite Nav Turbo Auto
Audi	A3	Petrol	A3 Technik 30 Tfsi
Mercedes	B-class	Hybrid	B 250 Amg Line Premium E Auto
Volvo	V90	Diesel	V90 Cross Country D4 Awd Auto
Mercedes	G-class	Petrol	Gla 250 Amg Line Auto
Skoda	Superb	Petrol	Superb Laurin &Klem Tsi 4X4 Sa
Land Rover	Discovery	Petrol	NaN
Volvo	S90	Diesel	S90 R-Design + D5 Awd Auto
Ford	Mustang	Petrol	Mustang Ecoboost Auto
Audi	A5	Diesel	A5 Sport 40 Tdi Quattro S-A
Toyota	Proace	Diesel	Proace Verso Family L0 D-4D
Mercedes	E-class	Petrol	E 200 Amg Line Edition Auto
Kia	Ceed	Hybrid	Ceed 3 Phev S-A
Hyundai	Tucson	Diesel	Tucson Se Nav Crdi Auto
Renault	Megane	Diesel	Megane Rs Line Blue Dci
Citroen	C4	Petrol	C4 Gr Stourer Feel Ptech S S A
Peugeot	308	Petrol	308 Access Puretech S S
Audi	RS Q8	Petrol	Rs Q8 Vsprung Tfsi Mhev Quat A
Volkswagen	Polo	Petrol	Polo Sel Tsi S-A
Skoda	Octavia	Petrol	Octavia Vrs Tsi
Nissan	Juke	Petrol	Juke N-Connecta Dig-T
BMW	X4	Petrol	X4 M Competition
Mercedes	C-class	Petrol	C200 Amg Ln Ngt Ed Prm+ Mhev A
MINI	Cooper S	Petrol	Cooper S ALL4
Citroen	C3	Diesel	C3 Aircross Flair Bluehdi S S
Honda	Cr-V	Petrol	Cr-V Ex I-Vtec
Renault	Scenic	Petrol	Scenic Play Tce Auto
Audi	A7	Diesel	A7 S Line 45 Tdi Quattro Auto
Kia	Sedona	Petrol	Sedona Sx V6 Auto
Volkswagen	T-Cross	Petrol	T-Cross Se Tsi S-A
Ford	Puma	Petrol	Puma St-Line X Vignale Mhev
Hyundai	Kona	Petrol	Kona Premium Gt 4X4 S-A
Fiat	Tipo	Petrol	Tipo Mirror
Audi	A3	Diesel	A3 S Line Black Edition 35 Tdi
BMW	725Ld	Diesel	725Ld
Mercedes	G-class	Petrol	Amg Glc 63 S 4Matic + Auto
Mercedes	E-class	Petrol	E 300 Amg Line Premium + Auto
Volkswagen	Touran	Diesel	Touran Se Tdi S-A
Lexus	Rxl	Petrol	Rxl 450H Takumi Cvt
Peugeot	Traveller	Diesel	Traveller Active Bluehdi S S
Mercedes	C-class	Petrol	Amg C 43 4Matic Auto
BMW	530i	Petrol	530i
Ford	Kuga	Diesel	Kuga Vignale Ecoblue Mhev
Renault	Megane	Petrol	Megane Rs Line Tce Auto
Ford	Ecosport	Petrol	Ecosport Titanium Auto
Volkswagen	Polo	Petrol	Polo Match Tsi S-A
Lexus	Lc	Petrol	Lc 500H Auto
Audi	Q2	Diesel	Q2 S Ln Blk Ed 35 Tdi Quat Sa
Citroen	C3	Petrol	C3 Feel Nav Ed Puretech Ss
Mercedes	C-class	Hybrid	C 300 Sport Edition De Auto
Mercedes	C-class	Hybrid	C 300 Amg Line Edition De Auto
Volvo	V90	Petrol	V90 C-Country B6 Mhev Awd Auto
Vauxhall	Crossland	Petrol	Crossland X Sri Nav Turbo Auto
Toyota	Land	Diesel	Land Cruiser Utility D-4D Auto
Volvo	V60	Diesel	V60 Inscription + D3 Auto
Mercedes	A-class	Diesel	A 200 D Sport Premium Auto
Volkswagen	Touareg	Diesel	Touareg V6 Sel Tdi Auto
Nissan	Qashqai	Petrol	Qashqai N-Connecta Dig-T S-A
Mercedes	A-class	Diesel	A 180 Amg Line Premium D
Fiat	500	Petrol	500 C Lounge S-A
Toyota	C-Hr	Petrol	C-Hr Lime Edition Hev Cvt
Fiat	500	Petrol	500 C Dolcevita Mhev
Volvo	V60	Petrol	V60 Momentum + T5 Auto
Vauxhall	Crossland	Petrol	Crossland X Sport Turbo Auto
Citroen	C4	Diesel	C4 Gr Stourer Touch Ed Bhdi Ss
Suzuki	Swift	Petrol	Swift Sz5 Boosterjet Shvs
Renault	Clio	Petrol	Clio Play Tce
Skoda	Karoq	Diesel	Karoq Se L Tdi Scr 4X4
Mercedes	G-class	Petrol	Gla 200 Amg Line Auto
Audi	Q5	Petrol	Q5 Sln Ed1 45Tfsi Mhev Quat Sa
Volvo	Xc90	Petrol	Xc90 R-Design T5 Awd Auto
Ford	Freedom	Diesel	Freedom Rs
Mercedes	C-class	Petrol	C 300 Amg Line Prem Mhev 4M A
Skoda	Citigo	Electric	Citigo E Se Iv
Nissan	Micra	Diesel	Micra Tekna Dci
Porsche	911	Petrol	911 Carrera S S-A
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi 4M Sa
Ford	Tourneo	Diesel	Tourneo Connect Gr Zetec Tdci
Citroen	C5	Diesel	C5 Aircross Feel Bhdi Ss A
Vauxhall	Corsa	Diesel	Corsa Se Nav Turbo D
BMW	X1	Petrol	X1 xDrive20i
Audi	Q7	Hybrid	Q7 S Line 55 Tfsi E Quattro A
Mercedes	E-class	Diesel	E 350 Amg Lne Nght Ed Prem D A
Kia	Sorento	Diesel	Sorento Kx-3 Crdi Isg 4X4
Seat	Ateca	Diesel	Ateca Xcellence Tdi 4Drive A
Volkswagen	Touran	Diesel	Touran Se Tdi
BMW	216d	Diesel	216d
Mercedes	C-class	Petrol	Cla 180 Amg Line Premium + A
Kia	Stinger	Diesel	Stinger Gt-Line Crdi Isg Auto
Volkswagen	Arteon	Diesel	Arteon R-Line Ed Tdi Scr 4M Sa
Mitsubishi	Eclipse	Petrol	Eclipse Cross Design Se 4X2
Citroen	C1	Petrol	C1 Urban Ride
Skoda	Karoq	Diesel	Karoq Se Tdi
Ford	Focus	Petrol	Focus Titanium X Auto
Peugeot	308	Diesel	308 Tech Ed Sw Bluehdi S S
Peugeot	Rifter	Diesel	Rifter Premier Rs Td Auto
Skoda	Superb	Hybrid	Superb Se L Iv Phev S-A
Mazda	Cx-5	Diesel	Cx-5 Sport Nav + D 4X4 Auto
Mercedes	V-class	Diesel	V250 Se Bluetec Auto
Audi	S4	Diesel	S4 Black Edition Tdi Quattro A
Peugeot	308	Petrol	308 Tech Edition Ptech S S A
Renault	Clio	Petrol	Clio Rs Line Tce
Ford	Kuga	Diesel	Kuga Titanium X Ed Tdci 4X4 A
Peugeot	308	Diesel	308 Active Sw Bluehdi S S
Ford	Puma	Petrol	Puma St-Line Mhev
Volkswagen	Golf	Petrol	Golf Style Etsi S-A
Mazda	Cx-5	Diesel	Cx-5 Se-L Nav + D
Ford	Mondeo	Diesel	Mondeo Titanium Edition Eblue
Ford	Fiesta	Petrol	Fiesta Active X Turbo Auto
Volvo	Xc60	Diesel	Xc60 Inscription B4 Awd Auto
Mercedes	B-class	Diesel	B 200 Sport Executive D Auto
Vauxhall	Movano	Diesel	Movano L2H3 F3500 Cdti
Hyundai	Tucson	Petrol	Tucson Se Nav T-Gdi 2Wd
Mercedes	G-class	Petrol	Amg Glc 63 S Premium 4Matic A
Mercedes	B-class	Petrol	B 180 Amg Line Premium + A
Skoda	Kamiq	Petrol	Kamiq Se L Tsi S-A
Ford	S-Max	Diesel	S-Max St-Line Ecoblue Auto
Audi	A4	Petrol	A4 Sport Ed 35 Tfsi Mhev S-A
Mercedes	G-class	Petrol	Glc 300 Amg Line Premium 4M A
Volkswagen	Arteon	Petrol	Arteon R-Line Tsi S-A
Hyundai	I30	Diesel	I30 Special Edition Crdi
BMW i	i3	Hybrid	i3 94 REX
Alfa Romeo	Stelvio	Diesel	Stelvio Speciale Td Awd Auto
Volvo	Xc90	Hybrid	Xc90 Rdesgn Pro T8 Rchrg Awd A
Toyota	Proace	Diesel	Proace Verso Family L1 D-4D
Volvo	Xc40	Petrol	Xc40 Momentum T4 Awd Auto
BMW	730d	Diesel	730d
Citroen	Dispatch	Diesel	Dispatch 1000 En-Prise Bhdi Ss
Nissan	X-Trail	Diesel	X-Trail Tekna Dci 4X4 Cvt
Seat	Ateca	Petrol	Ateca Se Technology Tsi Evo
Ford	Fiesta	Petrol	Fiesta St-Line Turbo Auto
Fiat	500	Petrol	500 C 120Th Anniversary S-A
Mercedes	C-class	Diesel	C 220 Amg Line Premium + D A
Ford	Kuga	Diesel	Kuga St-Line Tdci 4X4
Mitsubishi	Mirage	Petrol	Mirage Verve
Mercedes	A-class	Diesel	A 180 Sport D
Ford	Transit	Diesel	Transit 140 T300M Fwd
BMW	335d	Diesel	335d xDrive
Audi	Q5	Hybrid	Q5 Sln Blk Ed 50Tfsi E Quat Sa
Seat	Tarraco	Petrol	Tarraco Fr Tsi Evo
Jaguar	XE	Diesel	NaN
Volvo	Xc40	Hybrid	Xc40 Inscription T5 Phev Auto
Peugeot	208	Petrol	208 Gt Line Puretech S S Auto
Renault	Kadjar	Petrol	Kadjar Dynamique Nav Tce
Audi	TT	Petrol	Tt S Line Black Ed 45 Tfsi
Audi	A5	Diesel	A5 S Line 40 Tdi Mhev Quat Sa
Mercedes	V-class	Diesel	V250 D Sport Auto
Skoda	Karoq	Diesel	Karoq Sportlne Tdi Scr 4X4 Sa
Peugeot	Traveller	Diesel	Traveller Allure Bluehdi
Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X2
Audi	Q2	Diesel	Q2 S Line 30 Tdi S-A
Volkswagen	Transporter	Diesel	Transporter T32 Highline Tdi
Audi	Q2	Diesel	Q2 Technik 30 Tdi S-A
Ford	Focus	Petrol	Focus St-Line Auto
Peugeot	Partner	Petrol	Partner Tepee Outdoor Blue Hdi
Mercedes	C-class	Petrol	Amg C63 Auto
Volvo	V60	Petrol	V60 Cross Country + T5 Awd A
Volkswagen	Passat	Diesel	Passat Se Nav Tdi
Mercedes	G-class	Petrol	Gla 200 Amg Line Edition + A
Renault	Trafic	Diesel	Trafic Sport Energy Dci
Audi	Q3	Petrol	Q3 S Line 45 Tfsi Quattro S-A
Mercedes	G-class	Petrol	Amg Gls 63 Nt Ed Exec Mhev4M+A
Dacia	Logan	Petrol	Logan Mcv Essential Tce
Nissan	Gt-R	Petrol	Gt-R Nismo S-A
Fiat	500	Petrol	500 Dolcevita
Mercedes	B-class	Petrol	B 200 Amg Line Premium Auto
Volvo	Xc90	Diesel	Xc90 B5 Mhev Awd Auto
Skoda	Superb	Diesel	Superb Sportline + Tdi 4X4 S-A
Honda	Jazz	Petrol	Jazz Se I-Mmd Cvt
Nissan	X-Trail	Petrol	X-Trail Acenta Dig-T S-A
Mercedes	A-class	Diesel	A 200 Amg Line Premium+ D 4M A
Nissan	Micra	Diesel	Micra Acenta Dci
Ford	Kuga	Hybrid	Kuga St-Line X Phev Cvt
Audi	S5	Diesel	S5 Edition 1 Tdi Mhev Quat A
Seat	Tarraco	Diesel	Tarraco Xcellence Tdi S-A
Skoda	Octavia	Petrol	Octavia Laurin And Klem Tsi Sa
Jeep	Grand	Diesel	Grand Cherokee Summit Mjt Ii A
Vauxhall	Insignia	Diesel	Insignia Ultimate Nav Tur D A
Volkswagen	T-Cross	Petrol	T-Cross Sel Tsi S-A
Volkswagen	Polo	Petrol	Polo R-Line Tsi
Ford	Fiesta	Petrol	Fiesta Active Edition Turbo A
Audi	A1	Petrol	A1 Sport 25 Tfsi
Audi	Q5	Petrol	Q5 S Ln Blk Ed 45 Tfsi Quat Sa
Vauxhall	Crossland	Diesel	Crossland X Griffin Turbo D
Ford	Focus	Diesel	Focus Vignale Ecoblue
Volkswagen	Tiguan	Diesel	Tiguan Allspace Match Tdi
Mercedes	G-class	Diesel	Gle 300 Amg Line Exec D 4Mat A
Ford	Kuga	Diesel	Kuga St-Line Ecoblue
Mercedes	A-class	Hybrid	A 250 Amg Line Premium + E A
Skoda	Karoq	Diesel	Karoq Se Tdi Scr 4X4
Mercedes	E-class	Petrol	E 300 Amg Line Premium Auto
Ford	Fiesta	Petrol	Fiesta Active X Edition T Mhev
Ford	Transit	Diesel	Transit Courier Bse Kombi Tdci
Mercedes	B-class	Petrol	B 250 Amg Line Premium Auto
Audi	TT	Petrol	Tt S Line 45 Tfsi
Audi	A1	Petrol	A1 S Line 30 Tfsi
Volkswagen	Touran	Petrol	Touran R-Line Tsi
Ford	Mondeo	Diesel	Mondeo Zetec Edition
Kia	Xceed	Petrol	Xceed Edition Isg
Volkswagen	Golf	Diesel	Golf R-Line Tdi S-A
Nissan	Micra	Petrol	Micra Acenta Ig-T
Mercedes	A-class	Petrol	A 180 Se Auto
Audi	A1	Petrol	A1 S Line Black Ed 25 Tfsi
Kia	Picanto	Petrol	Picanto 3
Nissan	Qashqai	Diesel	Qashqai Visia Dci
Tesla	Model 3	Electric	Model 3 Standard Range +
Fiat	Tipo	Petrol	Tipo Easy
Seat	Alhambra	Diesel	Alhambra Xcellence Tdi
Kia	Sportage	Petrol	Sportage Gt-Line Crdi Isg 4X4
Seat	Ateca	Diesel	Ateca Fr Black Ed Tdi 4D S-A
Skoda	Octavia	Petrol	Octavia Se L Tsi
Renault	Megane	Petrol	Megane Renaultsport Trophy
Porsche	718	Petrol	718 Cayman T
Jeep	Compass	Diesel	Compass Trailhawk M-Tijet Ii A
Mercedes	E-class	Hybrid	E 300 Amg Line Edition De Auto
Toyota	C-Hr	Petrol	C-Hr Excel
Volvo	V60	Petrol	V60 Inscription T5 Auto
Volkswagen	Polo	Petrol	Polo Beats Tsi S-A
Hyundai	I30	Petrol	I30 Premium T-Gdi
Mercedes	Sprinter	Diesel	Sprinter 316Cdi Blueefficiency
Ford	Fiesta	Petrol	Fiesta St-Line Turbo
Toyota	Yaris	Petrol	Yaris Active Vvt-I Hev Cvt
Peugeot	308	Diesel	308 Allure Bluehdi S S
Peugeot	Boxer	Diesel	Boxer 435 Pro L4H2 Bluehdi
Mercedes	V-class	Diesel	V220 D Sport Auto
Audi	Q3	Petrol	Q3 S Line 35 Tfsi
Volvo	V90	Petrol	V90 R-Design B4 Mhev Auto
Peugeot	3008	Diesel	3008 Gt Premium Bluehdi S S A
Audi	RS 7	Petrol	Rs 7 V-Sprung Tfsi Mhev Quat A
Skoda	Fabia	Petrol	Fabia Colour Edition Tsi S-A
Volvo	S90	Petrol	S90 R-Design + T5 Auto
Skoda	Octavia	Diesel	Octavia Se Technology Tdi
Volkswagen	Golf	Diesel	Golf Match Edition Tdi S-A
Mercedes	A-class	Petrol	Amg A 35 4Matic Premium + Auto
Alfa Romeo	Stelvio	Diesel	Stelvio Lusso Ti Td Awd Auto
Renault	Captur	Petrol	Captur S Edition Tce Auto
Alfa Romeo	Giulia	Petrol	Giulia V6 Bit Q-Rfoglio Arr A
Peugeot	Rifter	Diesel	Rifter Horizon Rs
Mercedes	E-class	Hybrid	E 300 Amg Ln Ngt Ed Prm + De A
Abarth	595C	Petrol	595C Pista 70Th Anniversary Sa
Skoda	Superb	Petrol	Superb Se Technology Tsi S-A
Peugeot	2008	Petrol	2008 Gt Line Puretech S S Auto
Audi	A1	Petrol	A1 S Line Vorsprung 30 Tfsi Sa
Jeep	Renegade	Diesel	Renegade Limited Mjet Ii 4X4 A
Citroen	Berlingo	Diesel	Berlingo Feel Bluehdi
Volkswagen	T-Cross	Diesel	T-Cross Sel Tdi
Hyundai	I40	Diesel	I40 Se Nav Crdi
Ford	Tourneo	Diesel	Tourneo Courier Titanium Tdci
Volkswagen	Touran	Diesel	Touran R-Line Tdi
Abarth	595	Petrol	595 Pista 70Th Anniversary
Hyundai	I30	Petrol	I30 N Line T-Gdi
Renault	Captur	Hybrid	Captur S Edition E-Tech Auto
Dacia	Duster	Diesel	Duster Se Twenty Blue Dci 4X4
Seat	Ateca	Diesel	Ateca Se Technology Tdi
Peugeot	5008	Petrol	5008 Allure Puretech S S Auto
Ford	Allied	Diesel	Allied Procab
BMW	740d	Diesel	740d xDrive
BMW	330i	Petrol	330i
Vauxhall	Crossland	Petrol	Crossland X Elite Nav Turbo Ss
Audi	A1	Petrol	A1 Technik 30 Tfsi S-A
Ford	Tourneo	Diesel	Tourneo Custom 320 Ti Eblue A
Peugeot	308	Diesel	308 Tech Ed Sw Bluehdi S S A
Renault	Kangoo	Diesel	Kangoo Ll21 B-Ness Energy Dci
Volvo	Xc60	Diesel	Xc60 Inscription B4 Mhev Awd A
Rolls-Royce	Dawn	Petrol	Dawn
Kia	Stinger	Petrol	Stinger Blue Edition Isg Auto
Skoda	Kodiaq	Petrol	Kodiaq Se Drive Tsi S-A
Kia	Niro	Hybrid	Niro 3 Phev S-A
Kia	Xceed	Diesel	Xceed 3 Crdi Isg
Mercedes	S-class	Petrol	S 500 L Amg Line Exec Prem + A
Mitsubishi	ASX	Petrol	Asx Juro
Citroen	Berlingo	Petrol	Berlingo Feel Puretech S S
Audi	Q3	Petrol	Q3 S Line Ed 1 45 Tfsi Quat Sa
Mercedes	Vito	Diesel	Vito 114Cdi Tourer Pro
Mercedes	Citan	Diesel	Citan Tourer Pro 109Cdi
Audi	A6	Diesel	A6 Sport 40 Tdi S-A
Porsche	Cayenne	Hybrid	Cayenne V6 E-Hybrid Auto
Lexus	Es	Petrol	Es 300H Takumi Cvt
Mercedes	E-class	Hybrid	E 300 Se Premium + De Auto
Skoda	Superb	Petrol	Superb Laurin &Klement Tsi S-A
Skoda	Citigo	Petrol	Citigo Colour Ed Greentech Mpi
Mercedes	S-class	Petrol	Slc 300 Final Edition Prem A
Mercedes	E-class	Electric	Eqv 300 Sport Premium
Audi	SQ2	Petrol	Sq2 Vorsprung Tfsi Quattro S-A
Kia	Stonic	Petrol	Stonic 2 Isg
Ford	Tourneo	Diesel	Tourneo Connect T-Nium Tdci A
Audi	A4	Petrol	A4 S Ln Vsprng 35 Tfsi Mhev Sa
Mazda	Cx-30	Petrol	Cx-30 Gt Sport Tech Mhev Auto
Ford	Kuga	Diesel	Kuga Vignale Tdci 4X4
Mercedes	Citan	Diesel	Citan 109 Pure Cdi
Mazda	Cx-5	Diesel	Cx-5 Se-L D Auto
Volvo	V90	Diesel	V90 C-Country B5 Mhev Awd A
Citroen	C5	Diesel	C5 Aircross Flair + Bhdi Ss A
Mercedes	A-class	Diesel	A 180 Sport D Auto
Mercedes	G-class	Diesel	Gls 400 Amg Ln Prem + D 4Mat A
Seat	Leon	Petrol	Leon Cupra Lux 300 Tsi 4D Sa
Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi Evo S-A
Renault	Kadjar	Diesel	Kadjar Gt Line Blue Dci Auto
Abarth	595C	Petrol	595C Turismo S-A
Mercedes	A-class	Petrol	A 180 Amg Line Premium + A
Ford	Kuga	Hybrid	Kuga St-Line First Ed Phev Cvt
Peugeot	508	Diesel	508 Active Bluehdi S S
Jeep	Renegade	Diesel	Renegade Limited Mjet Ii 4X4
Volvo	Xc60	Hybrid	Xc60 Pstar Engrd T8 Phev Awd A
Seat	Tarraco	Petrol	Tarraco Fr Sport Tsi
Mercedes	G-class	Petrol	Amg Gla 35 4Matic Auto
Mercedes	Vito	Diesel	Vito 116Cdi Tourer Select Auto
Ford	Journey	Diesel	Journey Grand Rs
Dacia	Duster	Petrol	Duster Se Twenty Tce 4X2
Ford	Fiesta	Petrol	Fiesta Trend
Volvo	Xc60	Hybrid	Xc60 Inscrpt Pro T8 Phev Awd A
Porsche	Panamera	Hybrid	Panamera E-Hybrid Exec 4 S-A
Vauxhall	Astra	Diesel	Astra Se Turbo D
Kia	Proceed	Petrol	Proceed Gt-Line Lunar Ed Isg
Ford	Kuga	Petrol	Kuga St-Line Edition Hev Cvt
Ford	Kuga	Petrol	Kuga Titanium
Volkswagen	Passat	Petrol	Passat Se Nav Tsi Evo S-A
Toyota	Yaris	Petrol	Yaris Excel Vvt-I Hev Cvt
Alfa Romeo	Giulietta	Diesel	Giulietta Speciale Jtdm-2
Vauxhall	Crossland	Petrol	Crossland X Sport Nav Prem T
Citroen	C1	Petrol	C1 Jcc +
Alfa Romeo	Stelvio	Petrol	Stelvio Ti Tb Awd Auto
Mercedes	E-class	Electric	Eqc 400 Edition 1 4Matic
Peugeot	308	Diesel	308 Allure Digital Bluehdi S S
Volvo	V60	Diesel	V60 R-Design + D4 Auto
Porsche	911	Petrol	911 Turbo S S-A
Vauxhall	Astra	Petrol	Astra Sri Nav Turbo
Honda	Cr-V	Petrol	Cr-V Sr I-Mmd Cvt
Citroen	C3	Petrol	C3 Flair + Puretech S S
Mercedes	E-class	Hybrid	E 350 E Amg Line Premium Auto
Kia	Sportage	Diesel	Sportage 2 Crdi Isg S-A
Volvo	Xc60	Petrol	Xc60 Edition T4 Auto
Toyota	Prius	Petrol	Prius Business Ed + Vvt-I Cvt
Mercedes	C-class	Diesel	Cla 220 Amg Line D Auto
Vauxhall	Crossland	Diesel	Crossland X Elite Nav Eco D Ss
Mitsubishi	Mirage	Petrol	Mirage First Edition Cvt
Porsche	Panamera	Petrol	Panamera Turbo S Spt Tursmo Sa
Ford	Galaxy	Petrol	Galaxy Zetec Turbo
Volvo	Xc60	Petrol	Xc60 Momentum Pro T5 Auto
Volkswagen	Tiguan	Petrol	Tiguan R-Line Tsi S-A
Mercedes	C-class	Petrol	Amg C 63 S Night Ed Prem + A
Fiat	500	Petrol	500L Cross
Seat	Arona	Petrol	Arona Fr Ecotsi S-A
Audi	A5	Diesel	A5 S Line 35 Tdi S-A
Nissan	Qashqai	Petrol	Qashqai N-Motion Dig-T S-A
Seat	Ibiza	Petrol	Ibiza Fr Mpi
Skoda	Karoq	Diesel	Karoq Se Tdi Scr 4X4 S-A
Mercedes	A-class	Petrol	A 180 Sport Premium Auto
Ford	Kuga	Diesel	Kuga Stln First Ed Eblue 4X4 A
Audi	RS 5	Petrol	Rs 5 Tfsi Quattro Auto
Volvo	Xc90	Petrol	Xc90 Inscription T5 Awd Auto
Tesla	Model X	Electric	Model X Standard Range Awd
Audi	A4	Diesel	A4 S Ln Blk Ed 40Tdi Mhev Q Sa
Volvo	Xc90	Diesel	Xc90 R-Design D5 P-Pulse Awd A
Fiat	500	Petrol	500 C Lounge Mhev
Mazda	3	Petrol	3 Se-L Mhev
Audi	A4	Diesel	A4 Sport 35 Tdi S-A
Peugeot	2008	Petrol	2008 Gt Line Puretech S S
Mercedes	B-class	Diesel	B 180 Amg Line D Auto
Audi	A6	Diesel	A6 S Line Vor 40 Tdi Mhev Sa
Ford	Kuga	Petrol	Kuga Titanium Edition
Audi	A8	Hybrid	A8 60 Tfsi E Quattro Auto
Volkswagen	E-Up	Electric	E-Up
Mercedes	E-class	Diesel	E 220 Sport D Auto
Jaguar	F-Pace	Petrol	NaN
Mercedes	Vito	Diesel	Vito 119Cdi Tourer Sport Auto
Hyundai	Tucson	Diesel	Tucson Authority Vehicle Crdi
Vauxhall	Combo	Diesel	Combo Life Energy Cdti S S
Mazda	6	Petrol	6 Gt Sport Nav + Auto
Jeep	Renegade	Hybrid	Renegade Limited 4Xe Auto
Volkswagen	T-Cross	Petrol	T-Cross Se Tsi
Kia	Xceed	Hybrid	Xceed First Edition Phev S-A
Volkswagen	Transporter	Diesel	Transporter T32 Startline Tdi
Volvo	Xc40	Petrol	Xc40 R-Design B4 Mhev Auto
DS	7	Petrol	Ds7 C-Back Pfrmc Ln Ptch Ss
Dacia	Sandero	Lpg	Sandero Sway Essential Lpg Tce
BMW	630d	Diesel	630d
Mercedes	C-class	Diesel	C 300 Amg Line Premium D Auto
Renault	Captur	Diesel	Captur S Edition Dci
Skoda	Octavia	Petrol	Octavia Se L First Edition Tsi
Seat	Ateca	Diesel	Ateca Se Technology Tdi S-A
Ford	Kuga	Petrol	Kuga Titanium First Edition
Mitsubishi	Mirage	Petrol	Mirage Design
Hyundai	I10	Petrol	I10 Premium Auto
Hyundai	Tucson	Diesel	Tucson Premium Se Crdi Auto
Mazda	Cx-30	Petrol	Cx-30 Sport Lux Mhev 4X4
Mercedes	A-class	Petrol	A 200 Sport Premium + Auto
Ford	Mondeo	Diesel	Mondeo Zetec Edition Tdci 4X4
Citroen	C4	Diesel	C4 Grand Stourer Tch + Bhdi Ss
Peugeot	308	Petrol	308 Alure Prm Dig Sw Ptch Ss A
Ford	Transit	Diesel	Transit Custom 320 Base Tdci
Volvo	Xc60	Diesel	Xc60 R-Design B5 Mhev Awd Auto
Audi	E-Tron	Electric	E-Tron Technik 55 Quattro
Mazda	6	Diesel	6 Se-L Lux Nav + D
Kia	Xceed	Hybrid	Xceed 3 Phev S-A
Alfa Romeo	Stelvio	Diesel	Stelvio Ti Td Awd Auto
Volvo	Xc60	Hybrid	Xc60 Inscription T8 Phev Awd A
Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi S S
Audi	RS 6	Petrol	Rs 6 V-Sprung Tfsi Mhev Quat A
Audi	A3	Petrol	A3 S Line 30 Tfsi Mhev S-A
MG	Mg	Electric	Mg 5 Exclusive Ev
Vauxhall	Combo	Diesel	Combo Life Design Cdti S S
Lexus	Lc	Petrol	Lc 500 Limited Edition Auto
Mercedes	C-class	Petrol	Amg C 43 Edition 4Matic Auto
Audi	A8	Petrol	A8 L S Lne 55 Tfsi Mhev Quat A
Nissan	Nv300	Diesel	Nv300 Tekna Dci
Skoda	Kodiaq	Diesel	Kodiaq Vrs Tdi 4X4 S-A
Volvo	Xc40	Petrol	Xc40 Inscription Pro T5 Awd A
Volkswagen	T-Cross	Petrol	T-Cross S Tsi
Vauxhall	Astra	Diesel	Astra Elite Nav Turbo D Auto
Volvo	Xc60	Diesel	Xc60 R-Design B5 Awd Auto
Fiat	Panda	Petrol	Panda Easy Mhev
Audi	TT	Petrol	Tt S Line 45 Tfsi Quattro S-A
Seat	Arona	Diesel	Arona Xcellence Lux Tdi
Skoda	Karoq	Diesel	Karoq Sportline Tdi Scr 4X4
Alfa Romeo	Giulietta	Diesel	Giulietta Sport Jtdm-2
DS	3	Electric	Ds 3 Crossback La Premiere Ev
BMW	745Le	Hybrid	745Le xDrive
Mercedes	E-class	Diesel	E 350 Amg Line Ed Prem + D A
Mercedes	S-class	Petrol	Sl 400 Grand Edition Auto
Peugeot	2008	Diesel	2008 Allure Bluehdi S S
Jeep	Wrangler	Petrol	Wrangler Overland Unlimited A
Peugeot	308	Diesel	308 Access Bluehdi S S
Nissan	370Z	Petrol	370Z Gt V6 Auto
Fiat	500	Petrol	500 C Pop S-A
Jeep	Renegade	Diesel	Renegade Longitude M-Jet 4X4
BMW	X6	Diesel	X6 xDrive40d
Skoda	Octavia	Petrol	Octavia Se Tech First Ed Tsi
Skoda	Kodiaq	Petrol	Kodiaq Sportline Tsi 4X4 S-A
Mercedes	E-class	Diesel	E 400 Amg Ln Ngt Ed Prm+D 4M A
Volkswagen	Arteon	Diesel	Arteon R-Line Tdi S-A
Audi	A5	Petrol	A5 S Ln Ed 1 45 Tfsi Mhev Q Sa
Mercedes	B-class	Petrol	B 180 Sport
Volkswagen	Tiguan	Diesel	Tiguan Se Tdi 4Motion
Peugeot	208	Electric	208 Active Ev
Volkswagen	T-Roc	Petrol	T-Roc Sel Tsi 4Motion S-A
Volvo	Xc40	Hybrid	Xc40 Inscription T4 Recharge A
Peugeot	308	Diesel	308 Access Sw Bluehdi S S
Nissan	Juke	Petrol	Juke Tekna Dig-T
Ford	Galaxy	Diesel	Galaxy Zetec Tdci
Mercedes	C-class	Diesel	C 300 Amg Lne Ngt Ed Prm + D A
Honda	Jazz	Petrol	Jazz Se I-Vtec Cvt
Fiat	500	Petrol	500 Rockstar
Renault	Megane	Petrol	Megane Renaultsport
Citroen	Spacetourer	Diesel	Spacetourer Bnes Lnge Bhdi Ssa
Citroen	C4	Diesel	C4 Gr Stourer Flair+ Bhdi Ss A
Mercedes	C-class	Diesel	Cls 300 D Amg Line Auto
Cupra	Formentor	Petrol	Formentor V1 Tsi S-A
Kia	Stonic	Petrol	Stonic 3 Isg
Audi	Q2	Diesel	Q2 Sport 30 Tdi
Volvo	Xc90	Petrol	Xc90 R-Design Pro T6 Awd Auto
Peugeot	108	Petrol	108 Collection S-A
Mercedes	S-class	Diesel	S 350 L Grand Ed Executive D A
Lexus	Is	Petrol	Is 300H F Sport Cvt
Kia	Picanto	Petrol	Picanto Gt-Line S Isg
Kia	Sportage	Petrol	Sportage 4 Isg 4X4 S-A
BMW	520d	Diesel	520d xDrive
Ford	Fiesta	Petrol	Fiesta Titanium Turbo Mhev
Mitsubishi	Eclipse	Petrol	Eclipse Cross Dynamic 4X2 Cvt
Toyota	Yaris	Petrol	Yaris Excel Hev Cvt
BMW	420d	Diesel	420d xDrive
Ford	Transit	Diesel	Transit Custom 320Trnd Eblue A
Suzuki	Sx4	Petrol	Sx4 S-Cross Sz4 B-Jet Mhev
Renault	Clio	Hybrid	Clio Launch Edition E-Tech A
BMW	430i	Petrol	430i
Volkswagen	Golf	Diesel	Golf Gtd Tdi Blueline S-A
Peugeot	Rifter	Diesel	Rifter Premier Rx Td
Volkswagen	Golf	Petrol	Golf Sv S Tsi
Vauxhall	Combo	Diesel	Combo Life Se Turbo D S S
Kia	Clarus	Petrol	Clarus Sx Auto
Toyota	Hilux	Diesel	Hilux Active D-4D 4Wd Ecb
Volkswagen	Tiguan	Diesel	Tiguan Sel Tsi Evo S-A
Audi	A7	Diesel	A7 S Line Blk Ed 45 Tdi Quat A
Kia	Sportage	Petrol	Sportage Edition 25 Isg
Toyota	Rav4	Petrol	Rav4 Design Hev 4X2 Cvt
Audi	TT	Petrol	Tt S Line Vorsprung 45 Tfsi Sa
Audi	Q5	Diesel	Q5 Sport Tdi Quattro S-A
Citroen	C3	Petrol	C3 Flair + Puretech S S Auto
Seat	Ateca	Diesel	Ateca Fr Tdi S-A
Volkswagen	Tiguan	Diesel	Tiguan S Tdi
Volkswagen	Golf	Diesel	Golf Match Tdi S-A
Seat	Taracco	Petrol	Taracco Fr Tsi Evo S-A
Skoda	Scala	Petrol	Scala Se L Tsi S-A
Peugeot	Traveller	Diesel	Traveller Allure Bluehdi Auto
Dacia	Sandero	Petrol	Sandero Stepway Techroad Tce
Mercedes	C-class	Diesel	C 200 Sport Edition D Auto
Volvo	V90	Diesel	V90 R-Design Pro D5 Pp Awd A
MG	Zs	Petrol	Zs Exclusive T-Gdi Auto
Fiat	Tipo	Petrol	Tipo Street
Ford	Kuga	Diesel	Kuga Zetec Ecoblue 4X4 Auto
Mercedes	B-class	Petrol	B 180 Sport Executive Auto
Suzuki	Swift	Petrol	Swift Sz-L Dualjet Mhev
Seat	Tarraco	Diesel	Tarraco Se Tech Tdi 4Drive Sa
Peugeot	3008	Hybrid	3008 Gt S S Phev 4X4 Auto
Ford	Tourneo	Diesel	Tourneo Custom 320 Ti Tdci A
Skoda	Kodiaq	Diesel	Kodiaq Laurin And Klem Tdi 4X4
Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev
Ford	Ecosport	Petrol	Ecosport Titanium
Ford	Fiesta	Petrol	Fiesta Vignale Turbo
Hyundai	Tucson	Diesel	Tucson N Ln48V Mhev Crdi2Wd Sa
Ford	Transit	Petrol	Transit Custom 310 Limited
Levc	Tx	Hybrid	Tx Vista Comfort Plus
Land Rover	Defender	Diesel	NaN
Peugeot	Traveller	Diesel	Traveller Allure C Bhdi Ss A
Mercedes	E-class	Electric	Eqc 400 Amg Line Premium 4M
Jeep	Wrangler	Petrol	Wrangler Sport Unlimited A
Kia	Picanto	Petrol	Picanto 2
Audi	A5	Petrol	A5 S Ln Blk Ed 45 Tfsi Quat Sa
Vauxhall	Combo	Diesel	Combo Life Design Turbo D S S
Mazda	Mx-5	Petrol	Mx-5 Rf Se-L
Volvo	Xc60	Diesel	Xc60 R-Design B5 Mhev Auto
DS	3	Diesel	Ds3 C-Bck Ultraprstg B-Hdi S S
Mercedes	A-class	Diesel	A 180 Amg Line Premium D Auto
Volvo	Xc90	Petrol	Xc90 Inscription Pro T5 Awd A
Hyundai	Santa	Diesel	Santa Fe Premium Crdi 2Wd
Volvo	V90	Petrol	V90 Inscription + T4 Auto
Kia	Ceed	Petrol	Ceed Blue Edition Isg S-A
Volkswagen	Golf	Diesel	Golf R-Line Tdi
Skoda	Superb	Diesel	Superb Se Tdi S-A
Kia	Xceed	Petrol	Xceed 2 Isg
Renault	Kadjar	Diesel	Kadjar S Edition Blue Dci Auto
Mercedes	C-class	Petrol	C 180 Sport Edition
Audi	A3	Petrol	A3 Sport 30 Tfsi
Volvo	S60	Petrol	S60 Inscription + T5 Auto
BMW	M140i	Petrol	M140i
Mazda	3	Diesel	3 Sport Lux D
Peugeot	108	Petrol	108 Collection Top
Volkswagen	Tiguan	Diesel	Tiguan Sel Tdi S-A
Vauxhall	Insignia	Diesel	Insignia Se Nav Turbo D
Audi	Q2	Petrol	Q2 Technik 35 Tfsi S-A
Mercedes	C-class	Diesel	Cla 220 Amg Line Premium + D A
Volkswagen	Caddy	Diesel	Caddy Maxi C20 Life Tdi
Audi	TT	Petrol	Tt S Line 45 Tfsi S-A
Volkswagen	Sharan	Diesel	Sharan Se Tdi S-A
Mercedes	C-class	Diesel	C 300 Amg Line Ed Prem D A
Hyundai	I10	Petrol	I10 Se Connect Mpi Auto
Audi	A3	Petrol	A3 S Line 35 Tfsi Mhev S-A
Ford	Tourneo	Diesel	Tourneo Connect Titanium Tdci
Vauxhall	Insignia	Diesel	Insignia Design Turbo D
Citroen	Spacetourer	Diesel	Spacetourer Business Bhdi Ss A
Tesla	Model X	Electric	Model X Perform Ludicrous Awd
Volvo	Xc60	Diesel	Xc60 Momentum B5 Mhev Auto
Citroen	C1	Petrol	C1 Feel
Dacia	Duster	Diesel	Duster Techroad Blue Dci 4X2
Skoda	Kodiaq	Petrol	Kodiaq Se L Tsi
Fiat	500	Petrol	500X 120Th Anniversary S-A
Seat	Mii	Electric	Mii Ev
Audi	RS 4	Petrol	Rs 4 Tfsi Quattro Auto
Volvo	Xc60	Petrol	Xc60 R-Design T5 Auto
Abarth	595C	Petrol	595C Turismo
Peugeot	5008	Petrol	5008 Gt Puretech S S
Seat	Arona	Petrol	Arona Fr Tsi Evo
Mercedes	B-class	Diesel	B 180 Sport D Auto
Kia	Ceed	Diesel	Ceed 2 Nav Crdi Isg
Volvo	V60	Hybrid	V60 P-Star Engrd T8 Phev Awd A
Seat	Leon	Petrol	Leon Fr Sport Tsi Evo S-A
Mercedes	A-class	Diesel	A 180 Se D Auto
Peugeot	2008	Electric	2008 Gt Line Ev
Suzuki	Ignis	Petrol	Ignis Sz-T Dualjet Mhev Cvt
Honda	Civic	Petrol	Civic Ex Vtec
Audi	Q8	Diesel	Q8 S Line 50 Tdi Quattro Auto
Volkswagen	Touran	Petrol	Touran Sel Tsi S-A
Volkswagen	Golf	Petrol	Golf Match Edition Tsi
Mercedes	C-class	Petrol	C 300 Amg Line Premium Auto
Audi	A4	Petrol	A4 S Line 40 Tfsi Mhev S-A
Seat	Leon	Petrol	Leon Xcellence Tsi Evo S-A
Skoda	Octavia	Petrol	Octavia Se L Tsi 4X4 S-A
BMW	X5	Petrol	X5 M50i
Ford	Mondeo	Petrol	Mondeo Vignale Hev Auto
Citroen	Berlingo	Diesel	Berlingo Flair Xtr B-Hdi Ss A
Peugeot	Rifter	Diesel	Rifter Horizon Rs Td
Fiat	500	Petrol	500 Sport Twinair
Volkswagen	T-Roc	Petrol	T-Roc Se Tsi Evo
Volvo	V60	Diesel	V60 Momentum D4 Auto
Jeep	Compass	Petrol	Compass Longitude M-Air Ii 4X2
Seat	Leon	Diesel	Leon Se Tdi
Audi	A3	Diesel	A3 Se Technik 30 Tdi
Alfa Romeo	Giulia	Diesel	Giulia Sprint Td Auto
Fiat	500	Petrol	500 Lounge
Mercedes	C-class	Petrol	Cla 180 Amg Line Auto
Mazda	Cx-30	Petrol	Cx-30 Se-L Mhev Auto
Seat	Tarraco	Diesel	Tarraco Se Tdi 4Drive S-A
Vauxhall	Crossland	Petrol	Crossland X Elt Nv Etec T Ss A
Nissan	Qashqai	Petrol	Qashqai Acenta Prem Dig-T S-A
Vauxhall	Grandland	Hybrid	Grandland X Bness Ed Nav Hyb A
Volkswagen	Passat	Petrol	Passat R-Line Tsi 4Motion S-A
Nissan	Qashqai	Diesel	Qashqai N-Connecta Dci S-A
Vauxhall	Insignia	Diesel	Insignia Se Nav Turbo D Auto
Volvo	S90	Hybrid	S90 R-Design + T8 Phev Awd A
Volkswagen	Tiguan	Diesel	Tiguan Match Tdi
Vauxhall	Crossland	Diesel	Crossland X Elite Nav Turbo D
Audi	A8	Diesel	A8 L 50 Tdi Quattro Auto
Audi	Q7	Petrol	Q7 Sport 55 Tfsi Mhev Quat A
Audi	RS 6	Petrol	Rs 6 Tfsi Mhev Quattro Auto
Land Rover	Discovery	Hybrid	NaN
Porsche	Panamera	Petrol	Panamera Sport Turismo 4S S-A
Volkswagen	Tiguan	Diesel	Tiguan Aspace Rline Tec Tdi Sa
Honda	Civic	Diesel	Civic S I-Dtec
Seat	Ateca	Petrol	Ateca Fr Black Edition Tsi Evo
Peugeot	508	Diesel	508 Active Bluehdi S S Auto
Ford	S-Max	Diesel	S-Max Vignale Ecoblue 4X4 Auto
Mercedes	G-class	Diesel	Gls 350 D Amg Line 4Matic Auto
Citroen	Spacetourer	Diesel	Spacetourer Ripcurl Bluehdi Ss
Volvo	V60	Hybrid	V60 R-Design + T8 Phev Awd A
Nissan	Gt-R	Petrol	Gt-R Prestige S-A
Volkswagen	Sharan	Petrol	Sharan Se Navigation Tsi S-A
Citroen	C5	Petrol	C5 Aircross Flair + P-Tech Ss
Vauxhall	Corsa	Petrol	Corsa Elite Nav Turbo Auto
Volvo	V90	Diesel	V90 Inscription B5 Mhev Awd A
Skoda	Kodiaq	Petrol	Kodiaq L And K Tsi 4X4 S-A
Mercedes	B-class	Petrol	B 200 Amg Line Premium + Auto
Audi	A1	Petrol	A1 Sport 35 Tfsi S-A
Hyundai	Kona	Petrol	Kona Play T-Gdi
Audi	TT	Petrol	Tts Black Ed Tfsi Quattro S-A
Porsche	Panamera	Hybrid	Panamera 4S E-Hybrid S-A
Lexus	Ct	Petrol	Ct 200H Takumi Cvt
Peugeot	3008	Diesel	3008 Gt Bluehdi S S
Volvo	Xc40	Petrol	Xc40 Momentum Pro T4 Auto
Audi	A5	Petrol	A5 S Ln Vor 45 Tfsi Mhev Q Sa
Vauxhall	G-Land	Hybrid	G-Land X Bus Ed Nav Prm Hyb4 A
Volvo	Xc60	Diesel	Xc60 Inscrpt Pro B4 Mhev Awd A
Porsche	718	Petrol	718 Boxster T
Mercedes	A-class	Petrol	Amg A 45 S 4Matic+ Plus Auto
Volkswagen	Polo	Diesel	Polo Sel Tdi
Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev Cvt
Vauxhall	Grandland	Diesel	Grandland X Ultimate T D S S A
Renault	Kadjar	Petrol	Kadjar Play Tce Auto
MINI	JCW	Petrol	JCW ALL4
Mercedes	A-class	Petrol	A 180 Sport Premium +
Peugeot	308	Petrol	308 Gt Premium Dig P-Tech Ss A
Mercedes	G-class	Diesel	Glc 300 Amg Line Prem D 4M A
Audi	Q3	Diesel	Q3 S Line 35 Tdi Quattro S-A
Seat	Leon	Petrol	Leon Cupra 290 Tsi S-A
Ford	Focus	Petrol	Focus Active X Edition Mhev
BMW	530e	Hybrid	530e iPerformance
Kia	Ceed	Petrol	Ceed Blue Edition Isg
Volkswagen	Sharan	Petrol	Sharan S Tsi
Nissan	Leaf	Electric	Leaf 3Zero
Ford	Focus	Petrol	Focus Titanium
Volkswagen	Tiguan	Diesel	Tiguan R-Line Tech Tdi 4Motion
MG	Zs	Petrol	Zs Limited Edition
Levc	Tx	Hybrid	Tx Vista Comfort
Volvo	Xc40	Petrol	Xc40 R-Design Pro T4 Auto
Seat	Arona	Petrol	Arona Xcellence Lux Tsi S-A
Audi	RS Q8	Petrol	Rs Q8 Tfsi Mhev Quattro Auto
Hyundai	Kona	Petrol	Kona Premium
Toyota	Camry	Petrol	Camry Design Vvt-I Cvt
Citroen	C3	Diesel	C3 Aircross Feel Bluehdi S S
Alpine	A110	Petrol	A110 Pure Auto
Honda	Civic	Petrol	Civic Sport Line Vtec
Skoda	Octavia	Petrol	Octavia Vrs Challenge Tsi S-A
Audi	A8	Petrol	A8 S Ln Black Ed 55Tfsi Quat A
Peugeot	208	Electric	208 Active Premium Ev
Ford	Kuga	Diesel	Kuga Titanium Ecoblue 4X4 Auto
Volkswagen	Tiguan	Petrol	Tiguan Life Tsi S-A
Rolls-Royce	Cullinan	Petrol	Cullinan Black Badge
Suzuki	Swift	Petrol	Swift Sz5 Dualjet Mhev
Jeep	Wrangler	Petrol	Wrangler Rubicon Unlimited A
Jeep	Wrangler	Diesel	Wrangler Rubicn Unltd Mjt Ii A
DS	3	Diesel	Ds3 Crossback Elegance Bhdi Ss
Volvo	Xc60	Diesel	Xc60 Momentum B4 Mhev Awd Auto
Mercedes	G-class	Diesel	Gla 200 Sport Executive D Auto
Mercedes	B-class	Diesel	B 180 Amg Line Executive D A
Alfa Romeo	Stelvio	Petrol	Stelvio Lusso Ti Tb Awd Auto
Toyota	Rav4	Petrol	Rav4 Design Hev Cvt
Audi	E-Tron	Electric	E-Tron Vorsprung 55 Quattro
Ford	Independence	Diesel	Independence Re Twin Auto
Seat	Ateca	Diesel	Ateca Xperience Tdi 4Drive S-A
Audi	A4	Petrol	A4 Technik 35 Tfsi Mhev
Citroen	C4	Petrol	C4 Grand Stourer Live Ptech Ss
Ford	Mondeo	Diesel	Mondeo St-Line Edition Ecoblue
Volvo	Xc60	Diesel	Xc60 Inscription B5 Mhev Auto
Ford	Tourneo	Diesel	Tourneo Custom 320 Sport Eblue
Skoda	Superb	Hybrid	Superb Sportline + Iv Phev S-A
BMW	X2	Diesel	X2 sDrive18d
Alfa Romeo	Giulia	Diesel	Giulia Lusso Ti Td Auto
Mazda	Cx-5	Diesel	Cx-5 Gt Sport Nav + D 4X4 A
Renault	Clio	Petrol	Clio S Edition Bose Tce
Mercedes	C-class	Hybrid	C 300 Amg Ln Ngt Ed Prm + De A
Ford	Focus	Diesel	Focus St-Line Ecoblue
Ford	Transit	Diesel	Transit Custom 320Leader Eblue
Volkswagen	Passat	Petrol	Passat R-Line Ed Tsi 4Mot S-A
Volkswagen	Passat	Diesel	Passat R-Line Tdi S-A
Vauxhall	Crossland	Petrol	Crossland X Elite Turbo
Mercedes	E-class	Diesel	E 220 D Se Premium Auto
Audi	Q2	Petrol	Q2 Technik 30 Tfsi
Vauxhall	Insignia	Petrol	Insignia Design Nav Turbo
Renault	Megane	Petrol	Megane Renaultsport Auto
Mercedes	S-class	Petrol	Sl 400 Amg Line Auto
Kia	Sorento	Petrol	Sorento 3 Hev Awd Auto
Ford	Kuga	Diesel	Kuga St-Line Ed Eblue Mhev
Toyota	Land	Diesel	Land Cruiser Utility D-4D
Ford	Ecosport	Petrol	Ecosport Zetec
BMW i	i8	Hybrid	i8
Audi	A6	Petrol	A6 S Ln Vor 55Tfsi Mhev Qto Sa
Seat	Leon	Petrol	Leon Fr Tsi Evo
Nissan	Qashqai	Diesel	Qashqai Tekna Dci 4X4 Cvt
Mercedes	C-class	Petrol	Cla 200 Amg Line
Mercedes	G-class	Petrol	Gla 200 Amg Line Premium Auto
Ford	Kuga	Diesel	Kuga St-Line X Ed Ecoblue A
Nissan	X-Trail	Petrol	X-Trail N-Connecta Dig-T S-A
Citroen	C4	Petrol	C4 Grand Stourer Tch + Ptch Ss
Mercedes	C-class	Diesel	C 200 Amg Line Premium + D A
Citroen	C1	Petrol	C1 Sense
Audi	SQ2	Petrol	Sq2 Black Ed Tfsi Quat S-A
Audi	A8	Diesel	A8 Black Ed 50 Tdi Mhev Quat A
Mercedes	G-class	Diesel	Glb 200 Amg Line Premium D A
BMW	X3	Petrol	X3 xDrive20i
Peugeot	308	Petrol	308 Active Puretech S S
Mercedes	C-class	Diesel	Cls 350 D Amg Line Prem + 4M A
Mercedes	S-class	Petrol	Amg S 63 L Auto
Peugeot	Rifter	Diesel	Rifter Gt Line Bluehdi S S A
Renault	Megane	Petrol	Megane Iconic Tce Auto
Vauxhall	Crossland	Petrol	Crossland X Tech Line Nav
Dacia	Sandero	Petrol	Sandero Stepway Essential Tce
Alfa Romeo	Giulia	Petrol	Giulia Veloce Tb Auto
Audi	E-Tron	Electric	E-Tron Vorsprung 50 Quattro
Volvo	V60	Petrol	V60 Inscription + T4 Auto
Peugeot	308	Diesel	308 Active Prem Dig Sw Bhdi Ss
Mercedes	E-class	Petrol	E 450 Amg Lne Nght Ed Prem 4Ma
Seat	Leon	Diesel	Leon Fr Sport Tdi S-A
BMW	740Ld	Diesel	740Ld xDrive
Mercedes	C-class	Diesel	C 220 Amg Line Premium D Auto
Vauxhall	Grandland	Hybrid	Grandland X Sri Nav Hybrid4 A
Volvo	Xc90	Hybrid	Xc90 R-Design T8 Rcharge Awd A
Ford	Kuga	Hybrid	Kuga Vignale Phev Cvt
Mercedes	C-class	Diesel	C 220 Sport Edition Prem + D A
Seat	Ateca	Diesel	Ateca Xcellence Lux Tdi
Honda	Hr-V	Petrol	Hr-V Ex I-Vtec Cvt
Volvo	S90	Petrol	S90 Inscription + T5 Auto
Volkswagen	Arteon	Petrol	Arteon R-Line Tsi Evo S-A
Volkswagen	Tiguan	Diesel	Tiguan Allspace Sel Tdi S-A
Ford	Kuga	Diesel	Kuga Titanium First Ed Eblue
Kia	Ceed	Petrol	Ceed 2 Isg
BMW	X1	Diesel	X1 xDrive18d
Ford	Kuga	Diesel	Kuga Titanium Edit Tdci 4X4 A
Volkswagen	Touran	Diesel	Touran Se Family Tdi
Audi	A4	Diesel	A4 Sport 40 Tdi S-A
Vauxhall	Crossland	Petrol	Crossland X Sport Nav Premium
Fiat	Ducato	Diesel	Ducato 30 Combi Multijet Ii
Audi	A4	Diesel	A4 Allroad Sport 50 Tdi Quat A
Toyota	Rav4	Petrol	Rav4 Excel Hev 4X2 Cvt
Ford	Galaxy	Diesel	Galaxy Titanium X Ecoblue
Toyota	Corolla	Petrol	Corolla Icon Tech Vvt-I
Renault	Trafic	Diesel	Trafic Ll29 Business Dci
MG	Zs	Electric	Zs Excite Ev
Kia	Proceed	Diesel	Proceed Gt-Line Crdi Isg S-A
Audi	A4	Petrol	A4 A-Road Sprt 45 Tfsi Quat Sa
Hyundai	Santa	Diesel	Santa Fe Premium Se Crdi Auto
BMW	X1	Petrol	X1 sDrive18i
Abarth	695	Petrol	695 70Th Anniversary
Porsche	911	Petrol	911 Targa 4 Auto
Porsche	718	Petrol	718 Cayman T S-A
Ford	Kuga	Diesel	Kuga St-Line X Ed Eblue Mhev
Citroen	C3	Petrol	C3 Origins Puretech S S
Vauxhall	Grandland	Diesel	Grandland X Se Premium Td Auto
Volvo	Xc40	Diesel	Xc40 Momentum D3 Awd Auto
Citroen	C3	Petrol	C3 Aircross Flair Puretech S S
Vauxhall	Combo	Diesel	Combo 2300 Sportive Td S S
BMW	318d	Diesel	318d
Honda	Hr-V	Diesel	Hr-V S I-Dtec
Peugeot	308	Diesel	308 Tech Edition Bluehdi S S
Peugeot	2008	Electric	2008 Active Premium Ev
Hyundai	Kona	Diesel	Kona Se Crdi S-A
Peugeot	308	Petrol	308 Tech Ed Sw Ptech S S A
Seat	Arona	Petrol	Arona Se Technology Tsi
Renault	Megane	Petrol	Megane Play Tce
Suzuki	Swift	Petrol	Swift Sz-T Boosterjet
Dacia	Logan	Lpg	Logan Mcv Sway Se Twnty Lpgtce
Honda	Civic	Petrol	Civic Ex Sport Line Vtec Cvt
Skoda	Karoq	Diesel	Karoq Se Technology Tdi
Mercedes	G-class	Petrol	Amg G 63 4Matic Auto
BMW	X7	Diesel	X7 M50d
Peugeot	308	Petrol	308 Gt Line Sw Puretech S S A
Volkswagen	Golf	Petrol	Golf Match Edition Tsi Evo
Hyundai	I10	Petrol	I10 N Line T-Gdi
Ford	Fiesta	Petrol	Fiesta Stline X Edition T Mhev
Mercedes	A-class	Diesel	A 220 D Amg Line Executive A
Audi	A5	Petrol	A5 S Line Black Ed 40 Tfsi
Mercedes	C-class	Diesel	C 200 Sport Edition Prem D A
Alfa Romeo	Giulietta	Petrol	Giulietta Super Tb
Porsche	Panamera	Petrol	Panamera 4S S-A
Ford	Kuga	Diesel	Kuga St-Line X Ecoblue Auto
Mercedes	C-class	Petrol	Amg Cla 35 Premium + 4Matic A
Kia	Sportage	Petrol	Sportage 4 Isg
Vauxhall	Insignia	Petrol	Insignia Tech Line Nav Turbo A
Mercedes	C-class	Diesel	Cls 400 D Amg Line Prem + 4M A
Ford	Tourneo	Diesel	Tourneo Custom 310 Sport Tdci
Ford	Tourneo	Hybrid	Tourneo Cust 320Tnium Phev Cvt
Tesla	Model S	Electric	Model S Performance Awd
Skoda	Karoq	Diesel	Karoq Se L Tdi S-A
Renault	Captur	Hybrid	Captur Launch Edition E-Tech A
Mercedes	E-class	Petrol	E 300 Amg Line Auto
Ford	Focus	Diesel	Focus St-Line X Tdci
Fiat	Panda	Petrol	Panda Trussardi
Fiat	500	Petrol	500X Sport
BMW	X6	Petrol	X6 M50i
Audi	A5	Petrol	A5 S Ln V-Sprng 45Tfsi Quat Sa
Volkswagen	Caravelle	Diesel	Caravelle Executive Tdi S-A
Volkswagen	Passat	Petrol	Passat Sel Tsi S-A
Renault	Master	Diesel	Master Ml35 Business Dci
Skoda	Karoq	Petrol	Karoq Edition Tsi S-A
Nissan	X-Trail	Diesel	X-Trail N-Connecta Dci 4X4 Cvt
Hyundai	Tucson	Petrol	Tucson Se Connect T-Gdi Hev A
Volkswagen	Golf	Petrol	Golf Gti Performance Tsi
Renault	Captur	Diesel	Captur Bose Launch Ed Dci Auto
Ford	Tourneo	Diesel	Tourneo Custom 320 Zetec Eblue
Nissan	Leaf	Electric	Leaf Acenta
Volvo	Xc90	Petrol	Xc90 R-Design B5 Mhev Awd Auto
Volvo	Xc40	Petrol	Xc40 R-Design Pro T3 Auto
Ford	Focus	Diesel	Focus Active X Ecoblue Auto
Vauxhall	Corsa	Diesel	Corsa Elite Nav Turbo D
Renault	Kadjar	Diesel	Kadjar Play Blue Dci Auto
Abarth	595	Petrol	595 Turismo
Fiat	500	Petrol	500X Urban
Skoda	Kodiaq	Diesel	Kodiaq Edition Tdi Scr S-A
Jeep	Compass	Diesel	Compass Longitude Multijet Ii
Seat	Tarraco	Petrol	Tarraco Se First Ed Tsi Evo
Audi	A4	Petrol	A4 S Ln Blk Ed 45 Tfsi Quat Sa
Porsche	911	Petrol	911 Speedster
Lexus	Ct	Petrol	Ct 200H F Sport Cvt
Dacia	Sandero	Diesel	Sandero Comfort Blue Dci
Citroen	C1	Petrol	C1 Airscape Feel
Volvo	Xc40	Petrol	Xc40 R-Design T3 Auto
Mercedes	C-class	Petrol	C 200 Amg Line Premium + Auto
Peugeot	Expert	Diesel	Expert Combi Bluehdi S S
Hyundai	Tucson	Petrol	Tucson Premium T-Gdi 2Wd S-A
Hyundai	I10	Petrol	I10 Premium
Ford	Focus	Petrol	Focus St-Line X Edition Mhev
Ford	Tourneo	Diesel	Tourneo Custom 320Sprt Eblue A
Audi	A4	Diesel	A4 Allroad Vor 40 Tdi Quat Sa
Volvo	Xc60	Petrol	Xc60 Rdesign Pro B5 Mhev Awd A
Volvo	Xc40	Diesel	Xc40 R-Design D3 Auto
Mercedes	A-class	Petrol	A 180 Sport
Hyundai	Tucson	Diesel	Tucson Se Nv48V Mhev Crdi2Wdsa
Porsche	718	Petrol	718 Boxster T S-A
Ford	Chausson	Petrol	Chausson 757 Auto
Audi	A3	Petrol	A3 Se Technik 35 Tfsi S-A
Mercedes	G-class	Petrol	Amg Gt R Pro Auto
Ford	Focus	Petrol	Focus Vignale
Ford	Fiesta	Diesel	Fiesta Active X Edition Tdci
BMW	X4	Diesel	X4 xDrive20d
Mercedes	Vito	Diesel	Vito 116 Bluetec Tourer Select
Ford	Focus	Petrol	Focus St-Line
Fiat	500	Petrol	500 Star Mhev
Volkswagen	Golf	Petrol	Golf Sv Gt Tsi Evo
Nissan	Juke	Diesel	Juke Bose Personal Edition Dci
Mercedes	C-class	Petrol	C 200 Amg Line 4Matic Auto
Audi	E-Tron	Electric	E-Tron Black Edition 55 Quat
Mercedes	C-class	Diesel	Cla 220 Amg Line Premium D A
Nissan	X-Trail	Diesel	X-Trail Acenta Premium Dci
Porsche	Panamera	Petrol	Panamera 4 10 Years Edition Sa
BMW	118i	Petrol	118i
Ford	Galaxy	Diesel	Galaxy Zetec Ecoblue Auto
Renault	Clio	Diesel	Clio Rs Line Bose Blue Dci
Mercedes	G-class	Petrol	Gla 250 Amg Line Premium + A
Vauxhall	Insignia	Petrol	Insignia Sri Turbo
Seat	Alhambra	Petrol	Alhambra S Tsi
Nissan	370Z	Petrol	370Z Gt V6
Renault	Megane	Diesel	Megane Gt Line Blue Dci
Volkswagen	Touran	Diesel	Touran Sel Tdi
Volkswagen	Touran	Diesel	Touran Se Family Tdi S-A
Skoda	Superb	Diesel	Superb S Tdi S-A
Volvo	Xc40	Petrol	Xc40 Momentum Pro T3 Auto
Mitsubishi	Eclipse	Petrol	Eclipse Cross Exceed 4X2
Skoda	Fabia	Petrol	Fabia S Mpi
Peugeot	208	Electric	208 Gt Ev
Suzuki	Jimny	Petrol	Jimny Sz5 4X4
Nissan	Juke	Petrol	Juke Acenta
Volvo	Xc90	Petrol	Xc90 Momentum T5 Awd Auto
Ford	Transit	Diesel	Transit Custom 320 Nugget Eblu
Polestar	Polestar	Hybrid	Polestar 1 Phev Awd Auto
Kia	Sportage	Petrol	Sportage 4 Crdi Isg Mhev 4X4 A
Skoda	Superb	Petrol	Superb Se L Tsi
Peugeot	2008	Petrol	2008 Gt Puretech S S
Hyundai	Tucson	Diesel	Tucson Se Nav Crdi
\.


--
-- Data for Name: transport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transport (transport_type, emission_per_km) FROM stdin;
car	192
train	23
plane	255
subway	40
bus	822
motorcycle	103
\.


--
-- Name: car_models_car_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.car_models_car_model_id_seq', 4772, true);


--
-- Name: car_models car_models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car_models
    ADD CONSTRAINT car_models_pkey PRIMARY KEY (car_model_id);


--
-- PostgreSQL database dump complete
--

