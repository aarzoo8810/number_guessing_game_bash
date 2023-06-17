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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (4, 86, 350);
INSERT INTO public.games VALUES (5, 86, 830);
INSERT INTO public.games VALUES (6, 87, 98);
INSERT INTO public.games VALUES (7, 87, 64);
INSERT INTO public.games VALUES (8, 86, 727);
INSERT INTO public.games VALUES (9, 86, 201);
INSERT INTO public.games VALUES (10, 86, 693);
INSERT INTO public.games VALUES (11, 88, 470);
INSERT INTO public.games VALUES (12, 88, 767);
INSERT INTO public.games VALUES (13, 89, 784);
INSERT INTO public.games VALUES (14, 89, 625);
INSERT INTO public.games VALUES (15, 88, 683);
INSERT INTO public.games VALUES (16, 88, 893);
INSERT INTO public.games VALUES (17, 88, 852);
INSERT INTO public.games VALUES (18, 90, 417);
INSERT INTO public.games VALUES (19, 90, 357);
INSERT INTO public.games VALUES (20, 91, 68);
INSERT INTO public.games VALUES (21, 91, 872);
INSERT INTO public.games VALUES (22, 90, 161);
INSERT INTO public.games VALUES (23, 90, 667);
INSERT INTO public.games VALUES (24, 90, 230);
INSERT INTO public.games VALUES (25, 92, 511);
INSERT INTO public.games VALUES (26, 92, 301);
INSERT INTO public.games VALUES (27, 93, 319);
INSERT INTO public.games VALUES (28, 93, 835);
INSERT INTO public.games VALUES (29, 92, 202);
INSERT INTO public.games VALUES (30, 92, 276);
INSERT INTO public.games VALUES (31, 92, 364);
INSERT INTO public.games VALUES (32, 94, 137);
INSERT INTO public.games VALUES (33, 94, 605);
INSERT INTO public.games VALUES (34, 95, 860);
INSERT INTO public.games VALUES (35, 95, 588);
INSERT INTO public.games VALUES (36, 94, 296);
INSERT INTO public.games VALUES (37, 94, 740);
INSERT INTO public.games VALUES (38, 94, 984);
INSERT INTO public.games VALUES (39, 96, 180);
INSERT INTO public.games VALUES (40, 96, 454);
INSERT INTO public.games VALUES (41, 97, 688);
INSERT INTO public.games VALUES (42, 97, 708);
INSERT INTO public.games VALUES (43, 96, 112);
INSERT INTO public.games VALUES (44, 96, 446);
INSERT INTO public.games VALUES (45, 96, 201);
INSERT INTO public.games VALUES (46, 98, 449);
INSERT INTO public.games VALUES (47, 98, 450);
INSERT INTO public.games VALUES (48, 99, 489);
INSERT INTO public.games VALUES (49, 99, 881);
INSERT INTO public.games VALUES (50, 98, 758);
INSERT INTO public.games VALUES (51, 98, 906);
INSERT INTO public.games VALUES (52, 98, 705);
INSERT INTO public.games VALUES (53, 85, 3);
INSERT INTO public.games VALUES (54, 85, 3);
INSERT INTO public.games VALUES (55, 85, 2);
INSERT INTO public.games VALUES (56, 85, 1);
INSERT INTO public.games VALUES (57, 101, 817);
INSERT INTO public.games VALUES (58, 101, 121);
INSERT INTO public.games VALUES (59, 102, 65);
INSERT INTO public.games VALUES (60, 102, 730);
INSERT INTO public.games VALUES (61, 101, 556);
INSERT INTO public.games VALUES (62, 101, 441);
INSERT INTO public.games VALUES (63, 101, 7);
INSERT INTO public.games VALUES (64, 103, 784);
INSERT INTO public.games VALUES (65, 103, 345);
INSERT INTO public.games VALUES (66, 104, 253);
INSERT INTO public.games VALUES (67, 104, 741);
INSERT INTO public.games VALUES (68, 103, 8);
INSERT INTO public.games VALUES (69, 103, 11);
INSERT INTO public.games VALUES (70, 103, 194);
INSERT INTO public.games VALUES (71, 105, 588);
INSERT INTO public.games VALUES (72, 105, 298);
INSERT INTO public.games VALUES (73, 106, 894);
INSERT INTO public.games VALUES (74, 106, 220);
INSERT INTO public.games VALUES (75, 105, 511);
INSERT INTO public.games VALUES (76, 105, 621);
INSERT INTO public.games VALUES (77, 105, 682);
INSERT INTO public.games VALUES (78, 107, 653);
INSERT INTO public.games VALUES (79, 107, 610);
INSERT INTO public.games VALUES (80, 108, 297);
INSERT INTO public.games VALUES (81, 108, 364);
INSERT INTO public.games VALUES (82, 107, 43);
INSERT INTO public.games VALUES (83, 107, 678);
INSERT INTO public.games VALUES (84, 107, 638);
INSERT INTO public.games VALUES (85, 109, 445);
INSERT INTO public.games VALUES (86, 109, 574);
INSERT INTO public.games VALUES (87, 110, 848);
INSERT INTO public.games VALUES (88, 110, 545);
INSERT INTO public.games VALUES (89, 109, 468);
INSERT INTO public.games VALUES (90, 109, 271);
INSERT INTO public.games VALUES (91, 109, 827);
INSERT INTO public.games VALUES (92, 111, 317);
INSERT INTO public.games VALUES (93, 111, 585);
INSERT INTO public.games VALUES (94, 112, 947);
INSERT INTO public.games VALUES (95, 112, 37);
INSERT INTO public.games VALUES (96, 111, 195);
INSERT INTO public.games VALUES (97, 111, 156);
INSERT INTO public.games VALUES (98, 111, 214);
INSERT INTO public.games VALUES (99, 113, 961);
INSERT INTO public.games VALUES (100, 113, 185);
INSERT INTO public.games VALUES (101, 114, 607);
INSERT INTO public.games VALUES (102, 114, 771);
INSERT INTO public.games VALUES (103, 113, 514);
INSERT INTO public.games VALUES (104, 113, 445);
INSERT INTO public.games VALUES (105, 113, 716);
INSERT INTO public.games VALUES (106, 115, 607);
INSERT INTO public.games VALUES (107, 115, 645);
INSERT INTO public.games VALUES (108, 116, 945);
INSERT INTO public.games VALUES (109, 116, 73);
INSERT INTO public.games VALUES (110, 115, 596);
INSERT INTO public.games VALUES (111, 115, 818);
INSERT INTO public.games VALUES (112, 115, 90);
INSERT INTO public.games VALUES (113, 117, 851);
INSERT INTO public.games VALUES (114, 117, 553);
INSERT INTO public.games VALUES (115, 118, 104);
INSERT INTO public.games VALUES (116, 118, 373);
INSERT INTO public.games VALUES (117, 117, 919);
INSERT INTO public.games VALUES (118, 117, 805);
INSERT INTO public.games VALUES (119, 117, 552);
INSERT INTO public.games VALUES (120, 119, 480);
INSERT INTO public.games VALUES (121, 119, 156);
INSERT INTO public.games VALUES (122, 120, 315);
INSERT INTO public.games VALUES (123, 120, 524);
INSERT INTO public.games VALUES (124, 119, 762);
INSERT INTO public.games VALUES (125, 119, 717);
INSERT INTO public.games VALUES (126, 119, 319);
INSERT INTO public.games VALUES (127, 121, 978);
INSERT INTO public.games VALUES (128, 121, 758);
INSERT INTO public.games VALUES (129, 122, 243);
INSERT INTO public.games VALUES (130, 122, 86);
INSERT INTO public.games VALUES (131, 121, 902);
INSERT INTO public.games VALUES (132, 121, 265);
INSERT INTO public.games VALUES (133, 121, 809);
INSERT INTO public.games VALUES (134, 123, 265);
INSERT INTO public.games VALUES (135, 123, 894);
INSERT INTO public.games VALUES (136, 124, 675);
INSERT INTO public.games VALUES (137, 124, 688);
INSERT INTO public.games VALUES (138, 123, 882);
INSERT INTO public.games VALUES (139, 123, 134);
INSERT INTO public.games VALUES (140, 123, 99);
INSERT INTO public.games VALUES (141, 125, 531);
INSERT INTO public.games VALUES (142, 125, 712);
INSERT INTO public.games VALUES (143, 126, 665);
INSERT INTO public.games VALUES (144, 126, 724);
INSERT INTO public.games VALUES (145, 125, 368);
INSERT INTO public.games VALUES (146, 125, 895);
INSERT INTO public.games VALUES (147, 125, 940);
INSERT INTO public.games VALUES (148, 127, 927);
INSERT INTO public.games VALUES (149, 127, 40);
INSERT INTO public.games VALUES (150, 128, 122);
INSERT INTO public.games VALUES (151, 128, 104);
INSERT INTO public.games VALUES (152, 127, 559);
INSERT INTO public.games VALUES (153, 127, 678);
INSERT INTO public.games VALUES (154, 127, 685);
INSERT INTO public.games VALUES (155, 129, 964);
INSERT INTO public.games VALUES (156, 129, 273);
INSERT INTO public.games VALUES (157, 130, 62);
INSERT INTO public.games VALUES (158, 130, 634);
INSERT INTO public.games VALUES (159, 129, 486);
INSERT INTO public.games VALUES (160, 129, 460);
INSERT INTO public.games VALUES (161, 129, 18);
INSERT INTO public.games VALUES (162, 131, 785);
INSERT INTO public.games VALUES (163, 131, 844);
INSERT INTO public.games VALUES (164, 132, 760);
INSERT INTO public.games VALUES (165, 132, 999);
INSERT INTO public.games VALUES (166, 131, 655);
INSERT INTO public.games VALUES (167, 131, 141);
INSERT INTO public.games VALUES (168, 131, 553);
INSERT INTO public.games VALUES (169, 133, 379);
INSERT INTO public.games VALUES (170, 133, 472);
INSERT INTO public.games VALUES (171, 134, 277);
INSERT INTO public.games VALUES (172, 134, 614);
INSERT INTO public.games VALUES (173, 133, 577);
INSERT INTO public.games VALUES (174, 133, 97);
INSERT INTO public.games VALUES (175, 133, 832);
INSERT INTO public.games VALUES (176, 135, 7);
INSERT INTO public.games VALUES (177, 135, 428);
INSERT INTO public.games VALUES (178, 136, 517);
INSERT INTO public.games VALUES (179, 136, 44);
INSERT INTO public.games VALUES (180, 135, 309);
INSERT INTO public.games VALUES (181, 135, 168);
INSERT INTO public.games VALUES (182, 135, 181);
INSERT INTO public.games VALUES (183, 137, 509);
INSERT INTO public.games VALUES (184, 137, 912);
INSERT INTO public.games VALUES (185, 138, 113);
INSERT INTO public.games VALUES (186, 138, 564);
INSERT INTO public.games VALUES (187, 137, 944);
INSERT INTO public.games VALUES (188, 137, 428);
INSERT INTO public.games VALUES (189, 137, 573);
INSERT INTO public.games VALUES (190, 139, 46);
INSERT INTO public.games VALUES (191, 139, 251);
INSERT INTO public.games VALUES (192, 140, 300);
INSERT INTO public.games VALUES (193, 140, 81);
INSERT INTO public.games VALUES (194, 139, 747);
INSERT INTO public.games VALUES (195, 139, 444);
INSERT INTO public.games VALUES (196, 139, 372);
INSERT INTO public.games VALUES (197, 141, 781);
INSERT INTO public.games VALUES (198, 141, 716);
INSERT INTO public.games VALUES (199, 142, 857);
INSERT INTO public.games VALUES (200, 142, 953);
INSERT INTO public.games VALUES (201, 141, 58);
INSERT INTO public.games VALUES (202, 141, 56);
INSERT INTO public.games VALUES (203, 141, 75);
INSERT INTO public.games VALUES (204, 143, 460);
INSERT INTO public.games VALUES (205, 143, 425);
INSERT INTO public.games VALUES (206, 144, 997);
INSERT INTO public.games VALUES (207, 144, 688);
INSERT INTO public.games VALUES (208, 143, 855);
INSERT INTO public.games VALUES (209, 143, 344);
INSERT INTO public.games VALUES (210, 143, 187);
INSERT INTO public.games VALUES (211, 145, 931);
INSERT INTO public.games VALUES (212, 145, 698);
INSERT INTO public.games VALUES (213, 146, 967);
INSERT INTO public.games VALUES (214, 146, 241);
INSERT INTO public.games VALUES (215, 145, 120);
INSERT INTO public.games VALUES (216, 145, 739);
INSERT INTO public.games VALUES (217, 145, 866);
INSERT INTO public.games VALUES (218, 147, 297);
INSERT INTO public.games VALUES (219, 147, 201);
INSERT INTO public.games VALUES (220, 148, 516);
INSERT INTO public.games VALUES (221, 148, 901);
INSERT INTO public.games VALUES (222, 147, 929);
INSERT INTO public.games VALUES (223, 147, 289);
INSERT INTO public.games VALUES (224, 147, 631);
INSERT INTO public.games VALUES (225, 149, 71);
INSERT INTO public.games VALUES (226, 149, 650);
INSERT INTO public.games VALUES (227, 150, 381);
INSERT INTO public.games VALUES (228, 150, 374);
INSERT INTO public.games VALUES (229, 149, 731);
INSERT INTO public.games VALUES (230, 149, 252);
INSERT INTO public.games VALUES (231, 149, 877);
INSERT INTO public.games VALUES (232, 151, 439);
INSERT INTO public.games VALUES (233, 151, 544);
INSERT INTO public.games VALUES (234, 152, 280);
INSERT INTO public.games VALUES (235, 152, 481);
INSERT INTO public.games VALUES (236, 151, 803);
INSERT INTO public.games VALUES (237, 151, 144);
INSERT INTO public.games VALUES (238, 151, 60);
INSERT INTO public.games VALUES (239, 153, 714);
INSERT INTO public.games VALUES (240, 153, 756);
INSERT INTO public.games VALUES (241, 154, 568);
INSERT INTO public.games VALUES (242, 154, 71);
INSERT INTO public.games VALUES (243, 153, 368);
INSERT INTO public.games VALUES (244, 153, 400);
INSERT INTO public.games VALUES (245, 153, 936);
INSERT INTO public.games VALUES (246, 155, 873);
INSERT INTO public.games VALUES (247, 155, 898);
INSERT INTO public.games VALUES (248, 156, 758);
INSERT INTO public.games VALUES (249, 156, 783);
INSERT INTO public.games VALUES (250, 155, 447);
INSERT INTO public.games VALUES (251, 155, 766);
INSERT INTO public.games VALUES (252, 155, 324);
INSERT INTO public.games VALUES (253, 157, 726);
INSERT INTO public.games VALUES (254, 157, 228);
INSERT INTO public.games VALUES (255, 158, 458);
INSERT INTO public.games VALUES (256, 158, 992);
INSERT INTO public.games VALUES (257, 157, 20);
INSERT INTO public.games VALUES (258, 157, 585);
INSERT INTO public.games VALUES (259, 157, 817);
INSERT INTO public.games VALUES (260, 159, 335);
INSERT INTO public.games VALUES (261, 159, 693);
INSERT INTO public.games VALUES (262, 160, 103);
INSERT INTO public.games VALUES (263, 160, 24);
INSERT INTO public.games VALUES (264, 159, 455);
INSERT INTO public.games VALUES (265, 159, 558);
INSERT INTO public.games VALUES (266, 159, 577);
INSERT INTO public.games VALUES (267, 161, 905);
INSERT INTO public.games VALUES (268, 161, 858);
INSERT INTO public.games VALUES (269, 162, 755);
INSERT INTO public.games VALUES (270, 162, 265);
INSERT INTO public.games VALUES (271, 161, 388);
INSERT INTO public.games VALUES (272, 161, 823);
INSERT INTO public.games VALUES (273, 161, 798);
INSERT INTO public.games VALUES (274, 163, 546);
INSERT INTO public.games VALUES (275, 163, 569);
INSERT INTO public.games VALUES (276, 164, 212);
INSERT INTO public.games VALUES (277, 164, 645);
INSERT INTO public.games VALUES (278, 163, 841);
INSERT INTO public.games VALUES (279, 163, 668);
INSERT INTO public.games VALUES (280, 163, 281);
INSERT INTO public.games VALUES (281, 165, 165);
INSERT INTO public.games VALUES (282, 165, 266);
INSERT INTO public.games VALUES (283, 166, 178);
INSERT INTO public.games VALUES (284, 166, 624);
INSERT INTO public.games VALUES (285, 165, 964);
INSERT INTO public.games VALUES (286, 165, 730);
INSERT INTO public.games VALUES (287, 165, 66);
INSERT INTO public.games VALUES (288, 167, 58);
INSERT INTO public.games VALUES (289, 167, 702);
INSERT INTO public.games VALUES (290, 168, 556);
INSERT INTO public.games VALUES (291, 168, 799);
INSERT INTO public.games VALUES (292, 167, 965);
INSERT INTO public.games VALUES (293, 167, 36);
INSERT INTO public.games VALUES (294, 167, 133);
INSERT INTO public.games VALUES (295, 169, 125);
INSERT INTO public.games VALUES (296, 169, 285);
INSERT INTO public.games VALUES (297, 170, 636);
INSERT INTO public.games VALUES (298, 170, 1001);
INSERT INTO public.games VALUES (299, 169, 294);
INSERT INTO public.games VALUES (300, 169, 814);
INSERT INTO public.games VALUES (301, 169, 612);
INSERT INTO public.games VALUES (302, 171, 303);
INSERT INTO public.games VALUES (303, 171, 155);
INSERT INTO public.games VALUES (304, 172, 303);
INSERT INTO public.games VALUES (305, 172, 683);
INSERT INTO public.games VALUES (306, 171, 608);
INSERT INTO public.games VALUES (307, 171, 686);
INSERT INTO public.games VALUES (308, 171, 217);
INSERT INTO public.games VALUES (309, 173, 410);
INSERT INTO public.games VALUES (310, 173, 318);
INSERT INTO public.games VALUES (311, 174, 860);
INSERT INTO public.games VALUES (312, 174, 900);
INSERT INTO public.games VALUES (313, 173, 11);
INSERT INTO public.games VALUES (314, 173, 742);
INSERT INTO public.games VALUES (315, 173, 456);
INSERT INTO public.games VALUES (316, 175, 490);
INSERT INTO public.games VALUES (317, 175, 628);
INSERT INTO public.games VALUES (318, 176, 975);
INSERT INTO public.games VALUES (319, 176, 366);
INSERT INTO public.games VALUES (320, 175, 285);
INSERT INTO public.games VALUES (321, 175, 668);
INSERT INTO public.games VALUES (322, 175, 343);
INSERT INTO public.games VALUES (323, 177, 791);
INSERT INTO public.games VALUES (324, 177, 751);
INSERT INTO public.games VALUES (325, 178, 230);
INSERT INTO public.games VALUES (326, 178, 993);
INSERT INTO public.games VALUES (327, 177, 265);
INSERT INTO public.games VALUES (328, 177, 723);
INSERT INTO public.games VALUES (329, 177, 197);
INSERT INTO public.games VALUES (330, 179, 898);
INSERT INTO public.games VALUES (331, 179, 889);
INSERT INTO public.games VALUES (332, 180, 727);
INSERT INTO public.games VALUES (333, 180, 203);
INSERT INTO public.games VALUES (334, 179, 832);
INSERT INTO public.games VALUES (335, 179, 299);
INSERT INTO public.games VALUES (336, 179, 953);
INSERT INTO public.games VALUES (337, 181, 183);
INSERT INTO public.games VALUES (338, 181, 37);
INSERT INTO public.games VALUES (339, 182, 586);
INSERT INTO public.games VALUES (340, 182, 528);
INSERT INTO public.games VALUES (341, 181, 902);
INSERT INTO public.games VALUES (342, 181, 371);
INSERT INTO public.games VALUES (343, 181, 279);
INSERT INTO public.games VALUES (344, 183, 165);
INSERT INTO public.games VALUES (345, 183, 574);
INSERT INTO public.games VALUES (346, 184, 450);
INSERT INTO public.games VALUES (347, 184, 405);
INSERT INTO public.games VALUES (348, 183, 177);
INSERT INTO public.games VALUES (349, 183, 378);
INSERT INTO public.games VALUES (350, 183, 801);
INSERT INTO public.games VALUES (351, 185, 35);
INSERT INTO public.games VALUES (352, 185, 84);
INSERT INTO public.games VALUES (353, 186, 463);
INSERT INTO public.games VALUES (354, 186, 431);
INSERT INTO public.games VALUES (355, 185, 843);
INSERT INTO public.games VALUES (356, 185, 748);
INSERT INTO public.games VALUES (357, 185, 999);
INSERT INTO public.games VALUES (358, 187, 567);
INSERT INTO public.games VALUES (359, 187, 360);
INSERT INTO public.games VALUES (360, 188, 451);
INSERT INTO public.games VALUES (361, 188, 173);
INSERT INTO public.games VALUES (362, 187, 485);
INSERT INTO public.games VALUES (363, 187, 723);
INSERT INTO public.games VALUES (364, 187, 318);
INSERT INTO public.games VALUES (365, 189, 305);
INSERT INTO public.games VALUES (366, 189, 211);
INSERT INTO public.games VALUES (367, 190, 119);
INSERT INTO public.games VALUES (368, 190, 336);
INSERT INTO public.games VALUES (369, 189, 888);
INSERT INTO public.games VALUES (370, 189, 260);
INSERT INTO public.games VALUES (371, 189, 103);
INSERT INTO public.games VALUES (372, 191, 835);
INSERT INTO public.games VALUES (373, 191, 125);
INSERT INTO public.games VALUES (374, 192, 814);
INSERT INTO public.games VALUES (375, 192, 219);
INSERT INTO public.games VALUES (376, 191, 320);
INSERT INTO public.games VALUES (377, 191, 626);
INSERT INTO public.games VALUES (378, 191, 108);
INSERT INTO public.games VALUES (379, 193, 90);
INSERT INTO public.games VALUES (380, 193, 500);
INSERT INTO public.games VALUES (381, 194, 482);
INSERT INTO public.games VALUES (382, 194, 417);
INSERT INTO public.games VALUES (383, 193, 776);
INSERT INTO public.games VALUES (384, 193, 651);
INSERT INTO public.games VALUES (385, 193, 143);
INSERT INTO public.games VALUES (386, 195, 284);
INSERT INTO public.games VALUES (387, 195, 902);
INSERT INTO public.games VALUES (388, 196, 872);
INSERT INTO public.games VALUES (389, 196, 760);
INSERT INTO public.games VALUES (390, 195, 348);
INSERT INTO public.games VALUES (391, 195, 728);
INSERT INTO public.games VALUES (392, 195, 553);
INSERT INTO public.games VALUES (393, 197, 407);
INSERT INTO public.games VALUES (394, 197, 531);
INSERT INTO public.games VALUES (395, 198, 274);
INSERT INTO public.games VALUES (396, 198, 699);
INSERT INTO public.games VALUES (397, 197, 173);
INSERT INTO public.games VALUES (398, 197, 516);
INSERT INTO public.games VALUES (399, 197, 719);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (85, 'tom');
INSERT INTO public.users VALUES (86, 'user_1687002751493');
INSERT INTO public.users VALUES (87, 'user_1687002751492');
INSERT INTO public.users VALUES (88, 'user_1687002786586');
INSERT INTO public.users VALUES (89, 'user_1687002786585');
INSERT INTO public.users VALUES (90, 'user_1687002935565');
INSERT INTO public.users VALUES (91, 'user_1687002935564');
INSERT INTO public.users VALUES (92, 'user_1687003021860');
INSERT INTO public.users VALUES (93, 'user_1687003021859');
INSERT INTO public.users VALUES (94, 'user_1687003029688');
INSERT INTO public.users VALUES (95, 'user_1687003029687');
INSERT INTO public.users VALUES (96, 'user_1687003034412');
INSERT INTO public.users VALUES (97, 'user_1687003034411');
INSERT INTO public.users VALUES (98, 'user_1687003055132');
INSERT INTO public.users VALUES (99, 'user_1687003055131');
INSERT INTO public.users VALUES (100, '846');
INSERT INTO public.users VALUES (101, 'user_1687003323329');
INSERT INTO public.users VALUES (102, 'user_1687003323328');
INSERT INTO public.users VALUES (103, 'user_1687003404824');
INSERT INTO public.users VALUES (104, 'user_1687003404823');
INSERT INTO public.users VALUES (105, 'user_1687003415473');
INSERT INTO public.users VALUES (106, 'user_1687003415472');
INSERT INTO public.users VALUES (107, 'user_1687003422077');
INSERT INTO public.users VALUES (108, 'user_1687003422076');
INSERT INTO public.users VALUES (109, 'user_1687003427047');
INSERT INTO public.users VALUES (110, 'user_1687003427046');
INSERT INTO public.users VALUES (111, 'user_1687003435995');
INSERT INTO public.users VALUES (112, 'user_1687003435994');
INSERT INTO public.users VALUES (113, 'user_1687003441470');
INSERT INTO public.users VALUES (114, 'user_1687003441469');
INSERT INTO public.users VALUES (115, 'user_1687003446339');
INSERT INTO public.users VALUES (116, 'user_1687003446338');
INSERT INTO public.users VALUES (117, 'user_1687003450839');
INSERT INTO public.users VALUES (118, 'user_1687003450838');
INSERT INTO public.users VALUES (119, 'user_1687003490150');
INSERT INTO public.users VALUES (120, 'user_1687003490149');
INSERT INTO public.users VALUES (121, 'user_1687003495492');
INSERT INTO public.users VALUES (122, 'user_1687003495491');
INSERT INTO public.users VALUES (123, 'user_1687003502107');
INSERT INTO public.users VALUES (124, 'user_1687003502106');
INSERT INTO public.users VALUES (125, 'user_1687003506959');
INSERT INTO public.users VALUES (126, 'user_1687003506958');
INSERT INTO public.users VALUES (127, 'user_1687003512214');
INSERT INTO public.users VALUES (128, 'user_1687003512213');
INSERT INTO public.users VALUES (129, 'user_1687003516141');
INSERT INTO public.users VALUES (130, 'user_1687003516140');
INSERT INTO public.users VALUES (131, 'user_1687003533291');
INSERT INTO public.users VALUES (132, 'user_1687003533290');
INSERT INTO public.users VALUES (133, 'user_1687003537786');
INSERT INTO public.users VALUES (134, 'user_1687003537785');
INSERT INTO public.users VALUES (135, 'user_1687003541827');
INSERT INTO public.users VALUES (136, 'user_1687003541826');
INSERT INTO public.users VALUES (137, 'user_1687003545874');
INSERT INTO public.users VALUES (138, 'user_1687003545873');
INSERT INTO public.users VALUES (139, 'user_1687003549858');
INSERT INTO public.users VALUES (140, 'user_1687003549857');
INSERT INTO public.users VALUES (141, 'user_1687003554161');
INSERT INTO public.users VALUES (142, 'user_1687003554160');
INSERT INTO public.users VALUES (143, 'user_1687003599177');
INSERT INTO public.users VALUES (144, 'user_1687003599176');
INSERT INTO public.users VALUES (145, 'user_1687003603938');
INSERT INTO public.users VALUES (146, 'user_1687003603937');
INSERT INTO public.users VALUES (147, 'user_1687003611219');
INSERT INTO public.users VALUES (148, 'user_1687003611218');
INSERT INTO public.users VALUES (149, 'user_1687003616044');
INSERT INTO public.users VALUES (150, 'user_1687003616043');
INSERT INTO public.users VALUES (151, 'user_1687003621247');
INSERT INTO public.users VALUES (152, 'user_1687003621246');
INSERT INTO public.users VALUES (153, 'user_1687003628096');
INSERT INTO public.users VALUES (154, 'user_1687003628095');
INSERT INTO public.users VALUES (155, 'user_1687003632317');
INSERT INTO public.users VALUES (156, 'user_1687003632316');
INSERT INTO public.users VALUES (157, 'user_1687003647573');
INSERT INTO public.users VALUES (158, 'user_1687003647572');
INSERT INTO public.users VALUES (159, 'user_1687003656253');
INSERT INTO public.users VALUES (160, 'user_1687003656252');
INSERT INTO public.users VALUES (161, 'user_1687003660396');
INSERT INTO public.users VALUES (162, 'user_1687003660395');
INSERT INTO public.users VALUES (163, 'user_1687003664777');
INSERT INTO public.users VALUES (164, 'user_1687003664776');
INSERT INTO public.users VALUES (165, 'user_1687003741329');
INSERT INTO public.users VALUES (166, 'user_1687003741328');
INSERT INTO public.users VALUES (167, 'user_1687003745481');
INSERT INTO public.users VALUES (168, 'user_1687003745480');
INSERT INTO public.users VALUES (169, 'user_1687003750169');
INSERT INTO public.users VALUES (170, 'user_1687003750168');
INSERT INTO public.users VALUES (171, 'user_1687003754050');
INSERT INTO public.users VALUES (172, 'user_1687003754049');
INSERT INTO public.users VALUES (173, 'user_1687003757852');
INSERT INTO public.users VALUES (174, 'user_1687003757851');
INSERT INTO public.users VALUES (175, 'user_1687003761852');
INSERT INTO public.users VALUES (176, 'user_1687003761851');
INSERT INTO public.users VALUES (177, 'user_1687003765963');
INSERT INTO public.users VALUES (178, 'user_1687003765962');
INSERT INTO public.users VALUES (179, 'user_1687003770250');
INSERT INTO public.users VALUES (180, 'user_1687003770249');
INSERT INTO public.users VALUES (181, 'user_1687003774588');
INSERT INTO public.users VALUES (182, 'user_1687003774587');
INSERT INTO public.users VALUES (183, 'user_1687003826954');
INSERT INTO public.users VALUES (184, 'user_1687003826953');
INSERT INTO public.users VALUES (185, 'user_1687003833426');
INSERT INTO public.users VALUES (186, 'user_1687003833425');
INSERT INTO public.users VALUES (187, 'user_1687003837532');
INSERT INTO public.users VALUES (188, 'user_1687003837531');
INSERT INTO public.users VALUES (189, 'user_1687003841395');
INSERT INTO public.users VALUES (190, 'user_1687003841394');
INSERT INTO public.users VALUES (191, 'user_1687003845299');
INSERT INTO public.users VALUES (192, 'user_1687003845298');
INSERT INTO public.users VALUES (193, 'user_1687003849698');
INSERT INTO public.users VALUES (194, 'user_1687003849697');
INSERT INTO public.users VALUES (195, 'user_1687003853992');
INSERT INTO public.users VALUES (196, 'user_1687003853991');
INSERT INTO public.users VALUES (197, 'user_1687003858167');
INSERT INTO public.users VALUES (198, 'user_1687003858166');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 399, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 198, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

