--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 12.2

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

--
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pais (
    id integer NOT NULL,
    sigla character varying(3),
    idioma character varying(2),
    nome character varying(30)
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- Name: pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pais_id_seq OWNER TO postgres;

--
-- Name: pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pais_id_seq OWNED BY public.pais.id;


--
-- Name: pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais ALTER COLUMN id SET DEFAULT nextval('public.pais_id_seq'::regclass);


--
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pais VALUES (3, 'AHL', 'NL', 'Antilhas Holandesas');
INSERT INTO public.pais VALUES (4, 'ALB', 'SQ', 'Albânia');
INSERT INTO public.pais VALUES (5, 'ANB', 'EN', 'Antigua');
INSERT INTO public.pais VALUES (7, 'ANG', 'PT', 'Angola');
INSERT INTO public.pais VALUES (8, 'ARA', 'AR', 'Arábia Saudita');
INSERT INTO public.pais VALUES (9, 'ARG', 'ES', 'Argentina');
INSERT INTO public.pais VALUES (10, 'ARL', 'ES', 'Argélia');
INSERT INTO public.pais VALUES (11, 'ARM', 'RU', 'Armênia');
INSERT INTO public.pais VALUES (12, 'ASM', 'EN', 'Samoa Americana');
INSERT INTO public.pais VALUES (13, 'ATC', 'EN', 'Antartida');
INSERT INTO public.pais VALUES (14, 'AUS', 'EN', 'Austrália');
INSERT INTO public.pais VALUES (15, 'AUT', 'DE', 'Austria');
INSERT INTO public.pais VALUES (16, 'AZE', 'RU', 'Azerbaijão');
INSERT INTO public.pais VALUES (17, 'BAR', 'AR', 'Barein');
INSERT INTO public.pais VALUES (18, 'BEA', 'RU', 'Belarus');
INSERT INTO public.pais VALUES (19, 'BEL', 'FR', 'Bélgica');
INSERT INTO public.pais VALUES (20, 'BEN', 'EN', 'Benin');
INSERT INTO public.pais VALUES (21, 'BER', 'EN', 'Bermudas');
INSERT INTO public.pais VALUES (22, 'BGD', 'BN', 'Bangladesh');
INSERT INTO public.pais VALUES (23, 'BHS', 'EN', 'Bahamas');
INSERT INTO public.pais VALUES (24, 'BIR', 'BM', 'Birmânia');
INSERT INTO public.pais VALUES (25, 'BKF', 'FR', 'Burkina Fasso');
INSERT INTO public.pais VALUES (26, 'BLZ', 'EN', 'Belize');
INSERT INTO public.pais VALUES (27, 'BOL', 'ES', 'Bolívia');
INSERT INTO public.pais VALUES (28, 'BOS', 'EN', 'Bósnia');
INSERT INTO public.pais VALUES (29, 'BOT', 'EN', 'Botsuana');
INSERT INTO public.pais VALUES (30, 'BRA', 'PT', 'Brasil');
INSERT INTO public.pais VALUES (31, 'BRB', 'EN', 'Barbados');
INSERT INTO public.pais VALUES (32, 'BRN', 'MS', 'Brunei');
INSERT INTO public.pais VALUES (33, 'BUL', 'BG', 'Bulgária');
INSERT INTO public.pais VALUES (34, 'BUR', 'FR', 'Burundi');
INSERT INTO public.pais VALUES (35, 'BUT', 'DZ', 'Butão');
INSERT INTO public.pais VALUES (36, 'CAM', 'EN', 'Camarões');
INSERT INTO public.pais VALUES (37, 'CAN', 'EN', 'Canadá');
INSERT INTO public.pais VALUES (38, 'CAT', 'AR', 'Catar');
INSERT INTO public.pais VALUES (39, 'CAZ', 'RU', 'Cazaquistão');
INSERT INTO public.pais VALUES (40, 'CBJ', 'KM', 'Camboja');
INSERT INTO public.pais VALUES (41, 'CBV', 'PT', 'Cabo Verde');
INSERT INTO public.pais VALUES (42, 'CCK', 'EN', 'Ilhas Cocos');
INSERT INTO public.pais VALUES (43, 'CHA', 'FR', 'Chade');
INSERT INTO public.pais VALUES (44, 'CHL', 'ES', 'Chile');
INSERT INTO public.pais VALUES (45, 'CHN', 'ZH', 'China');
INSERT INTO public.pais VALUES (46, 'CHP', 'EL', 'Chipre');
INSERT INTO public.pais VALUES (47, 'CIN', 'EN', 'Cingapura');
INSERT INTO public.pais VALUES (48, 'CMF', 'FR', 'Costa do Marfim');
INSERT INTO public.pais VALUES (49, 'COK', 'EN', 'Ilhas Cook');
INSERT INTO public.pais VALUES (50, 'COL', 'EN', 'Colômbia');
INSERT INTO public.pais VALUES (51, 'COM', 'EN', 'Comores');
INSERT INTO public.pais VALUES (52, 'CON', 'FR', 'Congo');
INSERT INTO public.pais VALUES (53, 'CRC', 'ES', 'Costa Rica');
INSERT INTO public.pais VALUES (54, 'CRN', 'KO', 'Coréia do Norte');
INSERT INTO public.pais VALUES (55, 'CRO', 'EN', 'Croácia');
INSERT INTO public.pais VALUES (57, 'CUB', 'ES', 'Cuba');
INSERT INTO public.pais VALUES (58, 'CXR', 'EN', 'Christmas Island');
INSERT INTO public.pais VALUES (59, 'CYM', 'EN', 'Ilhas Cayman');
INSERT INTO public.pais VALUES (60, 'DIN', 'DA', 'Dinamarca');
INSERT INTO public.pais VALUES (61, 'DJI', 'EN', 'Djibuti');
INSERT INTO public.pais VALUES (62, 'DOM', 'ES', 'República Dominicana');
INSERT INTO public.pais VALUES (63, 'DON', 'EN', 'Dominica');
INSERT INTO public.pais VALUES (64, 'EAU', 'AR', 'Emirados Árabes');
INSERT INTO public.pais VALUES (65, 'EGI', 'AR', 'Egito');
INSERT INTO public.pais VALUES (66, 'ELS', 'ES', 'El Salvador');
INSERT INTO public.pais VALUES (67, 'EQU', 'ES', 'Equador');
INSERT INTO public.pais VALUES (68, 'ERT', 'AR', 'Eritréa');
INSERT INTO public.pais VALUES (69, 'ESC', 'EN', 'Escócia');
INSERT INTO public.pais VALUES (70, 'ESH', 'EN', 'Western Sahara');
INSERT INTO public.pais VALUES (71, 'ESP', 'ES', 'Espanha');
INSERT INTO public.pais VALUES (72, 'EST', 'RU', 'Estônia');
INSERT INTO public.pais VALUES (73, 'ETP', 'AM', 'Etiópia');
INSERT INTO public.pais VALUES (74, 'EUA', 'EN', 'Estados Unidos');
INSERT INTO public.pais VALUES (75, 'FIL', 'FL', 'Filipinas');
INSERT INTO public.pais VALUES (76, 'FIN', 'EN', 'Finlândia');
INSERT INTO public.pais VALUES (77, 'FJI', 'EN', 'Fiji');
INSERT INTO public.pais VALUES (78, 'FLK', 'EN', 'Ilhas Falkland');
INSERT INTO public.pais VALUES (79, 'FOR', 'ZH', 'Formosa');
INSERT INTO public.pais VALUES (80, 'FRA', 'FR', 'França');
INSERT INTO public.pais VALUES (81, 'FSM', 'EN', 'Micronésia');
INSERT INTO public.pais VALUES (82, 'GAB', 'FR', 'Gabão');
INSERT INTO public.pais VALUES (83, 'GAL', 'EN', 'Gales');
INSERT INTO public.pais VALUES (84, 'GAM', 'EN', 'Gâmbia');
INSERT INTO public.pais VALUES (85, 'GAN', 'EN', 'Gana');
INSERT INTO public.pais VALUES (86, 'GBR', 'EN', 'Grã-Bretanha');
INSERT INTO public.pais VALUES (87, 'GDL', 'FR', 'Guadalupe');
INSERT INTO public.pais VALUES (88, 'GEO', 'RU', 'Geórgia');
INSERT INTO public.pais VALUES (89, 'GFR', 'FR', 'Guiana Francesa');
INSERT INTO public.pais VALUES (90, 'GIB', 'EN', 'Gibraltar');
INSERT INTO public.pais VALUES (91, 'GNB', 'PT', 'Guiné Bissau');
INSERT INTO public.pais VALUES (92, 'GNE', 'ES', 'Guiné');
INSERT INTO public.pais VALUES (93, 'GNQ', 'EN', 'Guiné Equatorial');
INSERT INTO public.pais VALUES (94, 'GRD', 'EN', 'Granada');
INSERT INTO public.pais VALUES (95, 'GRE', 'EL', 'Grécia');
INSERT INTO public.pais VALUES (96, 'GRL', 'EN', 'Groênlandia');
INSERT INTO public.pais VALUES (97, 'GUA', 'ES', 'Guatemala');
INSERT INTO public.pais VALUES (98, 'GUI', 'EN', 'Guiana');
INSERT INTO public.pais VALUES (99, 'GUM', 'EN', 'Guam');
INSERT INTO public.pais VALUES (100, 'HKG', 'EN', 'Hong Kong');
INSERT INTO public.pais VALUES (101, 'HOL', 'NL', 'Holanda');
INSERT INTO public.pais VALUES (102, 'HON', 'ES', 'Honduras');
INSERT INTO public.pais VALUES (103, 'HTI', 'FR', 'Haiti');
INSERT INTO public.pais VALUES (104, 'HUN', 'HU', 'Hungria');
INSERT INTO public.pais VALUES (105, 'IDN', 'IN', 'Indonésia');
INSERT INTO public.pais VALUES (106, 'IEM', 'AR', 'Iêmem');
INSERT INTO public.pais VALUES (107, 'IFA', 'DA', 'Ilhas Faroe');
INSERT INTO public.pais VALUES (108, 'IMH', 'EN', 'Ilhas Marshall');
INSERT INTO public.pais VALUES (109, 'IMS', 'AR', 'Iêmen do Sul');
INSERT INTO public.pais VALUES (110, 'IND', 'HI', 'Índia');
INSERT INTO public.pais VALUES (111, 'ING', 'EN', 'Inglaterra');
INSERT INTO public.pais VALUES (112, 'IOT', 'EN', 'Britsh Indian Ocean');
INSERT INTO public.pais VALUES (113, 'IRA', 'FA', 'Irã');
INSERT INTO public.pais VALUES (114, 'IRL', 'EN', 'Irlanda');
INSERT INTO public.pais VALUES (115, 'IRN', 'EN', 'Irlanda do Norte');
INSERT INTO public.pais VALUES (116, 'IRQ', 'AR', 'Iraque');
INSERT INTO public.pais VALUES (117, 'ISL', 'IS', 'Islândia');
INSERT INTO public.pais VALUES (118, 'ISR', 'IW', 'Israel');
INSERT INTO public.pais VALUES (119, 'ITA', 'IT', 'Itália');
INSERT INTO public.pais VALUES (120, 'IUG', 'SH', 'Iugoslávia');
INSERT INTO public.pais VALUES (121, 'IVA', 'EN', 'Ilhas Vírgens EUA');
INSERT INTO public.pais VALUES (122, 'JAM', 'EN', 'Jamaica');
INSERT INTO public.pais VALUES (123, 'JAP', 'JA', 'Japão');
INSERT INTO public.pais VALUES (124, 'JOR', 'AR', 'Jordânia');
INSERT INTO public.pais VALUES (125, 'KIR', 'EN', 'Kiribati');
INSERT INTO public.pais VALUES (126, 'KNA', 'EN', 'São Cristóvão Nevis');
INSERT INTO public.pais VALUES (127, 'KWT', 'AR', 'Kuweit');
INSERT INTO public.pais VALUES (128, 'LAO', 'LO', 'Laos');
INSERT INTO public.pais VALUES (129, 'LBN', 'AR', 'Líbano');
INSERT INTO public.pais VALUES (130, 'LBR', 'EN', 'Libéria');
INSERT INTO public.pais VALUES (131, 'LCA', 'EN', 'Santa Lúcia');
INSERT INTO public.pais VALUES (132, 'LES', 'EN', 'Lesoto');
INSERT INTO public.pais VALUES (133, 'LET', 'RU', 'Letônia');
INSERT INTO public.pais VALUES (134, 'LIB', 'AR', 'Líbia');
INSERT INTO public.pais VALUES (135, 'LIE', 'DE', 'Liechtenstein');
INSERT INTO public.pais VALUES (136, 'LIT', 'RU', 'Lituânia');
INSERT INTO public.pais VALUES (137, 'LUX', 'FR', 'Luxemburgo');
INSERT INTO public.pais VALUES (138, 'MAC', 'PT', 'Macau');
INSERT INTO public.pais VALUES (139, 'MAD', 'FR', 'Madagascar');
INSERT INTO public.pais VALUES (140, 'MAL', 'MS', 'Malásia');
INSERT INTO public.pais VALUES (141, 'MAR', 'AR', 'Marrocos');
INSERT INTO public.pais VALUES (142, 'MAU', 'EN', 'Maurício');
INSERT INTO public.pais VALUES (143, 'MBQ', 'PT', 'Moçambique');
INSERT INTO public.pais VALUES (144, 'MCD', 'MK', 'Macedônia');
INSERT INTO public.pais VALUES (145, 'MDV', 'EN', 'Maldivas');
INSERT INTO public.pais VALUES (146, 'MEX', 'ES', 'México');
INSERT INTO public.pais VALUES (147, 'MGL', 'MN', 'Mongólia');
INSERT INTO public.pais VALUES (148, 'MID', 'EN', 'Ilhas Midway');
INSERT INTO public.pais VALUES (149, 'MLI', 'FR', 'Mali');
INSERT INTO public.pais VALUES (150, 'MLT', 'MT', 'Malta');
INSERT INTO public.pais VALUES (151, 'MLV', 'EN', 'Malavi');
INSERT INTO public.pais VALUES (152, 'MMR', 'EN', 'Mianmar');
INSERT INTO public.pais VALUES (153, 'MOL', 'RU', 'Moldova');
INSERT INTO public.pais VALUES (154, 'MON', 'FR', 'Mônaco');
INSERT INTO public.pais VALUES (1, 'AFG', 'PS', 'Afeganistan');
INSERT INTO public.pais VALUES (56, 'CRS', 'KO', 'Coreia do Sul');
INSERT INTO public.pais VALUES (155, 'MRT', 'FR', 'Martinica');
INSERT INTO public.pais VALUES (156, 'MSR', 'EN', 'Montserrat');
INSERT INTO public.pais VALUES (157, 'MTN', 'AR', 'Mauritânia');
INSERT INTO public.pais VALUES (158, 'NAM', 'EN', 'Namíbia');
INSERT INTO public.pais VALUES (159, 'NCL', 'FR', 'Nova Caledônia');
INSERT INTO public.pais VALUES (160, 'NFK', 'EN', 'Ilhas Norfolk');
INSERT INTO public.pais VALUES (161, 'NGA', 'EN', 'Nigéria');
INSERT INTO public.pais VALUES (162, 'NIC', 'ES', 'Nicarágua');
INSERT INTO public.pais VALUES (163, 'NIG', 'FR', 'Niger');
INSERT INTO public.pais VALUES (164, 'NIU', 'EN', 'Niue');
INSERT INTO public.pais VALUES (165, 'NOR', 'NO', 'Noruega');
INSERT INTO public.pais VALUES (166, 'NPL', 'NE', 'Nepal');
INSERT INTO public.pais VALUES (167, 'NRU', 'EN', 'Nauru');
INSERT INTO public.pais VALUES (168, 'NZL', 'EN', 'Nova Zelândia');
INSERT INTO public.pais VALUES (169, 'OMA', 'AR', 'Oma');
INSERT INTO public.pais VALUES (170, 'PAN', 'ES', 'Panamá');
INSERT INTO public.pais VALUES (171, 'PAQ', 'UR', 'Paquistão');
INSERT INTO public.pais VALUES (172, 'PCI', 'EN', 'Pacific Islands');
INSERT INTO public.pais VALUES (173, 'PCN', 'EN', 'Pitcairn');
INSERT INTO public.pais VALUES (174, 'PER', 'ES', 'Peru');
INSERT INTO public.pais VALUES (175, 'PLF', 'FR', 'Polinésia Francesa');
INSERT INTO public.pais VALUES (176, 'PLU', 'EN', 'Palau');
INSERT INTO public.pais VALUES (177, 'PNG', 'EN', 'Papua Nova Guiné');
INSERT INTO public.pais VALUES (178, 'POL', 'PL', 'Polônia');
INSERT INTO public.pais VALUES (179, 'POR', 'PT', 'Portugal');
INSERT INTO public.pais VALUES (180, 'PRG', 'ES', 'Paraguai');
INSERT INTO public.pais VALUES (181, 'PTR', 'ES', 'Porto Rico');
INSERT INTO public.pais VALUES (182, 'QUE', 'SW', 'Quênia');
INSERT INTO public.pais VALUES (183, 'QUI', 'RU', 'Quirgistão');
INSERT INTO public.pais VALUES (184, 'RCA', 'FR', 'Rep.Centro-Africana');
INSERT INTO public.pais VALUES (185, 'REU', 'FR', 'Reunião');
INSERT INTO public.pais VALUES (186, 'RFA', 'DE', 'Alemanha');
INSERT INTO public.pais VALUES (187, 'ROM', 'RO', 'Romênia');
INSERT INTO public.pais VALUES (188, 'RSS', 'RU', 'Rússia');
INSERT INTO public.pais VALUES (189, 'RUA', 'FR', 'Ruanda');
INSERT INTO public.pais VALUES (190, 'SAM', 'EN', 'Samoa Ocidental');
INSERT INTO public.pais VALUES (191, 'SEN', 'FR', 'Senegal');
INSERT INTO public.pais VALUES (192, 'SHN', 'EN', 'Ilhas Santa Helena');
INSERT INTO public.pais VALUES (193, 'SIR', 'AR', 'Síria');
INSERT INTO public.pais VALUES (194, 'SLB', 'EN', 'Ilhas Salamão');
INSERT INTO public.pais VALUES (195, 'SMR', 'IT', 'San Marino');
INSERT INTO public.pais VALUES (196, 'SOM', 'AR', 'Somália');
INSERT INTO public.pais VALUES (197, 'SPM', 'EN', 'São Pedro Miquelon');
INSERT INTO public.pais VALUES (198, 'SRI', 'SI', 'Sri Lanka');
INSERT INTO public.pais VALUES (199, 'SRL', 'EN', 'Serra Leoa');
INSERT INTO public.pais VALUES (200, 'STP', 'EN', 'São Tomé e Príncipe');
INSERT INTO public.pais VALUES (201, 'SUA', 'EN', 'Suazilândia');
INSERT INTO public.pais VALUES (202, 'SUD', 'AR', 'Sudão');
INSERT INTO public.pais VALUES (203, 'SUE', 'SV', 'Suécia');
INSERT INTO public.pais VALUES (204, 'SUI', 'FR', 'Suiça');
INSERT INTO public.pais VALUES (205, 'SUR', 'NL', 'Suriname');
INSERT INTO public.pais VALUES (206, 'SVK', 'EN', 'Eslováquia');
INSERT INTO public.pais VALUES (207, 'SVN', 'EN', 'Eslovênia');
INSERT INTO public.pais VALUES (208, 'SYC', 'EN', 'Seychelles');
INSERT INTO public.pais VALUES (209, 'TAD', 'RU', 'Tadjaquistão');
INSERT INTO public.pais VALUES (210, 'TAI', 'TH', 'Tailândia');
INSERT INTO public.pais VALUES (211, 'TAN', 'EN', 'Tanzânia');
INSERT INTO public.pais VALUES (212, 'TCA', 'EN', 'Ilhas Turcas Caicos');
INSERT INTO public.pais VALUES (213, 'TCH', 'CS', 'República Tcheca');
INSERT INTO public.pais VALUES (214, 'TGO', 'FR', 'Togo');
INSERT INTO public.pais VALUES (215, 'TKL', 'EN', 'Tokelau');
INSERT INTO public.pais VALUES (216, 'TMP', 'EN', 'Timor');
INSERT INTO public.pais VALUES (217, 'TON', 'EN', 'Tonga');
INSERT INTO public.pais VALUES (218, 'TRT', 'EN', 'Trinidad e Tobago');
INSERT INTO public.pais VALUES (219, 'TUC', 'RU', 'Turcomenistão');
INSERT INTO public.pais VALUES (220, 'TUN', 'AR', 'Tunísia');
INSERT INTO public.pais VALUES (221, 'TUR', 'TR', 'Turquia');
INSERT INTO public.pais VALUES (222, 'TUV', 'EN', 'Tuvalu');
INSERT INTO public.pais VALUES (223, 'UCR', 'RU', 'Ucrânia');
INSERT INTO public.pais VALUES (224, 'UGA', 'EN', 'Uganda');
INSERT INTO public.pais VALUES (225, 'URS', 'RU', 'União Soviética');
INSERT INTO public.pais VALUES (226, 'URU', 'ES', 'Uruguai');
INSERT INTO public.pais VALUES (227, 'UZB', 'RU', 'Uzbekistan');
INSERT INTO public.pais VALUES (228, 'VAT', 'IT', 'Vaticano');
INSERT INTO public.pais VALUES (229, 'VCT', 'EN', 'São Vicente Granadi');
INSERT INTO public.pais VALUES (230, 'VEN', 'ES', 'Venezuela');
INSERT INTO public.pais VALUES (231, 'VGB', 'EN', 'Ilhas Vírgens GBR');
INSERT INTO public.pais VALUES (232, 'VTN', 'VI', 'Vietnã');
INSERT INTO public.pais VALUES (233, 'VUT', 'EN', 'Vanuatu');
INSERT INTO public.pais VALUES (234, 'WAK', 'EN', 'Ilhas Wake');
INSERT INTO public.pais VALUES (235, 'WLF', 'EN', 'Ilhas Wallis Futuna');
INSERT INTO public.pais VALUES (236, 'ZAN', 'EN', 'Zâmbia');
INSERT INTO public.pais VALUES (237, 'ZAR', 'FR', 'Zaire');
INSERT INTO public.pais VALUES (238, 'ZIN', 'EN', 'Zimbabue');
INSERT INTO public.pais VALUES (6, 'AND', 'CA', 'Andora');
INSERT INTO public.pais VALUES (2, 'AFS', 'EN', 'Africa do Sul');


--
-- Name: pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pais_id_seq', 246, true);


--
-- Name: pais pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

