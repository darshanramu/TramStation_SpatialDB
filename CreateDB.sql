CREATE TABLE buildings(
building_id CHAR(3) PRIMARY KEY,
building_name VARCHAR2(32),
shape SDO_GEOMETRY);

CREATE TABLE students(
student_id CHAR(3) PRIMARY KEY,
shape SDO_GEOMETRY);

CREATE TABLE tramstops(
tram_station_id CHAR(10) PRIMARY KEY,
shape SDO_GEOMETRY,
point SDO_GEOMETRY,
radius INT
);


SET ESCAPE '\';

INSERT INTO buildings VALUES('b0','PSA', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(79, 68, 184, 125, 179, 133, 189, 138, 139, 229, 131, 225, 127, 233, 
21, 175, 26, 168, 18, 163, 67, 73, 74, 76)));
INSERT INTO buildings VALUES('b1','OHE', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(226, 150, 254, 164, 240, 191, 212, 176)));
INSERT INTO buildings VALUES('b2','BHE', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(337, 209, 389, 236, 385, 242, 390, 244, 385, 253, 381, 251, 378, 
255, 327, 228, 330, 223, 324, 219, 328, 212, 334, 214)));
INSERT INTO buildings VALUES('b3','VHE', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(405, 239, 440, 257, 426, 283, 421, 280, 394, 329, 401, 332, 386, 
357, 351, 339, 365, 313, 369, 315, 396, 266, 391, 263)));
INSERT INTO buildings VALUES('b4','HED \& PCE', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(267, 265, 291, 278, 284, 290, 290, 294, 296, 283, 354, 314, 
348, 327, 340, 322, 335, 330, 290, 305, 291, 301, 281, 295, 277, 301, 258, 289)));
INSERT INTO buildings VALUES('b5','small buildings 1', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(207, 193, 219, 199, 191, 251, 179, 245)));
INSERT INTO buildings VALUES('b6','small buildings 2', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(264, 174, 273, 179, 247, 228, 237, 222)));
INSERT INTO buildings VALUES('b7','small buildings 3', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(216, 228, 241, 241, 225, 271, 199, 257)));
INSERT INTO buildings VALUES('b8','NBA', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(182, 284, 207, 298, 202, 306, 177, 293)));
INSERT INTO buildings VALUES('b9','ABT', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(157, 282, 169, 288, 158, 308, 147, 301)));
INSERT INTO buildings VALUES('b10','SBA', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(172, 304, 197, 317, 191, 327, 166, 313)));
INSERT INTO buildings VALUES('b11','GER', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(65, 226, 122, 258, 77, 341, 20, 310)));
INSERT INTO buildings VALUES('b12','EEB', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(127, 346, 184, 375, 171, 400, 115, 370)));
INSERT INTO buildings VALUES('b13','SAL', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(216, 370, 266, 397, 255, 417, 261, 420, 247, 445, 187, 412, 201, 
388, 206, 391)));
INSERT INTO buildings VALUES('b14','SSC', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(232, 324, 241, 329, 238, 333, 245, 338, 247, 334, 293, 358, 277, 
386, 233, 360, 234, 356, 228, 352, 224, 359, 217, 354)));
INSERT INTO buildings VALUES('b15','SSL', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(309, 371, 325, 379, 333, 365, 349, 374, 342, 388, 357, 396, 346, 
416, 331, 409, 324, 422, 307, 413, 313, 399, 298, 391)));
INSERT INTO buildings VALUES('b16','PHE', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(300, 432, 338, 452, 322, 482, 296, 469, 302, 459, 289, 452)));
INSERT INTO buildings VALUES('b17','LHI \& SLH', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(446, 339, 478, 357, 460, 390, 491, 408, 488, 417, 424, 
382)));
INSERT INTO buildings VALUES('b18','HLAG', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(420, 426, 464, 449, 435, 503, 392, 480)));
INSERT INTO buildings VALUES('b19','RRB \& LIS \& OCW \& CEM \& SCI', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(474, 285, 529, 315, 533, 310, 695, 
397, 644, 494, 601, 471, 644, 390, 627, 380, 623, 387, 633, 393, 609, 434, 586, 422, 610, 371, 524, 325, 508, 353, 454, 323)));
INSERT INTO buildings VALUES('b20','SHS', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(565, 357, 596, 374, 582, 399, 551, 383)));
INSERT INTO buildings VALUES('b21','ACP', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(564, 425, 585, 436, 573, 458, 552, 447)));
INSERT INTO buildings VALUES('b22','HAR', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(498, 459, 574, 503, 537, 569, 465, 530, 458, 541, 439, 530, 445, 
517, 462, 525)));
INSERT INTO buildings VALUES('b23','MPH', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(586, 500, 629, 523, 596, 578, 569, 563, 559, 579, 549, 574)));
INSERT INTO buildings VALUES('b24','ACC', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(748, 427, 791, 450, 768, 494, 725, 471)));
INSERT INTO buildings VALUES('b25','BRI', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(722, 483, 735, 490, 729, 505, 757, 518, 746, 538, 719, 525, 710, 
535, 698, 528)));
INSERT INTO buildings VALUES('b26','SGM', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(297, 13, 357, 45, 334, 87, 312, 75, 291, 114, 310, 125, 295, 151, 
239, 121, 253, 95, 275, 106, 280, 98, 259, 86, 270, 62, 293, 73, 297, 66, 275, 54)));
INSERT INTO buildings VALUES('b27','GFS', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(380, 66, 493, 126, 475, 157, 363, 97)));
INSERT INTO buildings VALUES('b28','BKS', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(607, 199, 641, 217, 617, 257, 584, 239)));
INSERT INTO buildings VALUES('b29','HSH', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(552, 231, 565, 238, 540, 284, 527, 278)));
INSERT INTO buildings VALUES('b30','YWC', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(514, 215, 537, 224, 530, 237, 521, 232, 513, 248, 530, 258, 527, 
264, 497, 247)));
INSERT INTO buildings VALUES('b31','commons \& STU', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(659, 228, 700, 249, 692, 263, 708, 272, 718, 255, 766, 
280, 740, 329, 646, 278, 640, 290, 619, 278, 640, 236, 652, 241)));
INSERT INTO buildings VALUES('b32','TSC', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(677, 320, 708, 337, 690, 368, 661, 351)));
INSERT INTO buildings VALUES('b33','HNB', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(431, 163, 440, 160, 443, 171, 472, 186, 482, 183, 485, 195, 474, 
198, 458, 227, 462, 236, 452, 239, 449, 230, 421, 214, 410, 216, 408, 207, 417, 205, 434, 175)));
INSERT INTO buildings VALUES('b34','PKS', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(94, 402, 110, 412, 105, 420, 115, 426, 118, 422, 176, 454, 165, 
472, 108, 441, 110, 435, 100, 430, 74, 480, 57, 470)));
INSERT INTO buildings VALUES('b35','STO', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,1),SDO_ORDINATE_ARRAY(574, 247, 586, 254, 577, 270, 589, 277, 599, 259, 610, 265, 587, 
309, 575, 302, 581, 290, 570, 283, 562, 296, 552, 289)));

INSERT INTO students VALUES('p0', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(228,102,NULL),NULL,NULL));
INSERT INTO students VALUES('p1', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(220,112,NULL),NULL,NULL));
INSERT INTO students VALUES('p2', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(213,135,NULL),NULL,NULL));
INSERT INTO students VALUES('p3', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(189,177,NULL),NULL,NULL));
INSERT INTO students VALUES('p4', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(180,202,NULL),NULL,NULL));
INSERT INTO students VALUES('p5', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(166,231,NULL),NULL,NULL));
INSERT INTO students VALUES('p6', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(153,257,NULL),NULL,NULL));
INSERT INTO students VALUES('p7', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(138,278,NULL),NULL,NULL));
INSERT INTO students VALUES('p8', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(125,300,NULL),NULL,NULL));
INSERT INTO students VALUES('p9', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(116,320,NULL),NULL,NULL));
INSERT INTO students VALUES('p10', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(94,369,NULL),NULL,NULL));
INSERT INTO students VALUES('p11', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(104,394,NULL),NULL,NULL));
INSERT INTO students VALUES('p12', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(136,409,NULL),NULL,NULL));
INSERT INTO students VALUES('p13', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(171,430,NULL),NULL,NULL));
INSERT INTO students VALUES('p14', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(195,438,NULL),NULL,NULL));
INSERT INTO students VALUES('p15', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(221,453,NULL),NULL,NULL));
INSERT INTO students VALUES('p16', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(250,462,NULL),NULL,NULL));
INSERT INTO students VALUES('p17', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(283,485,NULL),NULL,NULL));
INSERT INTO students VALUES('p18', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(320,505,NULL),NULL,NULL));
INSERT INTO students VALUES('p19', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(342,502,NULL),NULL,NULL));
INSERT INTO students VALUES('p20', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(365,475,NULL),NULL,NULL));
INSERT INTO students VALUES('p21', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(320,531,NULL),NULL,NULL));
INSERT INTO students VALUES('p22', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(318,561,NULL),NULL,NULL));
INSERT INTO students VALUES('p23', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(439,318,NULL),NULL,NULL));
INSERT INTO students VALUES('p24', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(422,344,NULL),NULL,NULL));
INSERT INTO students VALUES('p25', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(412,378,NULL),NULL,NULL));
INSERT INTO students VALUES('p26', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(484,233,NULL),NULL,NULL));
INSERT INTO students VALUES('p27', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(504,208,NULL),NULL,NULL));
INSERT INTO students VALUES('p28', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(518,175,NULL),NULL,NULL));
INSERT INTO students VALUES('p29', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(516,290,NULL),NULL,NULL));
INSERT INTO students VALUES('p30', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(531,299,NULL),NULL,NULL));
INSERT INTO students VALUES('p31', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(588,328,NULL),NULL,NULL));
INSERT INTO students VALUES('p32', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(637,352,NULL),NULL,NULL));
INSERT INTO students VALUES('p33', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(657,363,NULL),NULL,NULL));
INSERT INTO students VALUES('p34', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(448,409,NULL),NULL,NULL));
INSERT INTO students VALUES('p35', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(464,420,NULL),NULL,NULL));
INSERT INTO students VALUES('p36', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(484,428,NULL),NULL,NULL));
INSERT INTO students VALUES('p37', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(491,432,NULL),NULL,NULL));
INSERT INTO students VALUES('p38', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(507,438,NULL),NULL,NULL));
INSERT INTO students VALUES('p39', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(548,462,NULL),NULL,NULL));
INSERT INTO students VALUES('p40', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(583,480,NULL),NULL,NULL));
INSERT INTO students VALUES('p41', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(302,197,NULL),NULL,NULL));
INSERT INTO students VALUES('p42', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(290,188,NULL),NULL,NULL));
INSERT INTO students VALUES('p43', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(297,202,NULL),NULL,NULL));
INSERT INTO students VALUES('p44', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(358,199,NULL),NULL,NULL));
INSERT INTO students VALUES('p45', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(384,214,NULL),NULL,NULL));
INSERT INTO students VALUES('p46', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(281,162,NULL),NULL,NULL));
INSERT INTO students VALUES('p47', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(264,314,NULL),NULL,NULL));
INSERT INTO students VALUES('p48', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(256,302,NULL),NULL,NULL));
INSERT INTO students VALUES('p49', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(221,285,NULL),NULL,NULL));
INSERT INTO students VALUES('p50', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(197,275,NULL),NULL,NULL));
INSERT INTO students VALUES('p51', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(179,338,NULL),NULL,NULL));
INSERT INTO students VALUES('p52', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(161,325,NULL),NULL,NULL));
INSERT INTO students VALUES('p53', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(378,280,NULL),NULL,NULL));
INSERT INTO students VALUES('p54', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(362,267,NULL),NULL,NULL));
INSERT INTO students VALUES('p55', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(530,364,NULL),NULL,NULL));
INSERT INTO students VALUES('p56', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(535,353,NULL),NULL,NULL));
INSERT INTO students VALUES('p57', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(589,448,NULL),NULL,NULL));
INSERT INTO students VALUES('p58', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(691,456,NULL),NULL,NULL));
INSERT INTO students VALUES('p59', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(698,427,NULL),NULL,NULL));
INSERT INTO students VALUES('p60', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(716,430,NULL),NULL,NULL));
INSERT INTO students VALUES('p61', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(723,446,NULL),NULL,NULL));
INSERT INTO students VALUES('p62', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(687,503,NULL),NULL,NULL));
INSERT INTO students VALUES('p63', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(674,525,NULL),NULL,NULL));
INSERT INTO students VALUES('p64', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(652,523,NULL),NULL,NULL));
INSERT INTO students VALUES('p65', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(645,539,NULL),NULL,NULL));
INSERT INTO students VALUES('p66', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(659,309,NULL),NULL,NULL));
INSERT INTO students VALUES('p67', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(716,340,NULL),NULL,NULL));
INSERT INTO students VALUES('p68', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(524,150,NULL),NULL,NULL));
INSERT INTO students VALUES('p69', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(476,258,NULL),NULL,NULL));
INSERT INTO students VALUES('p70', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(241,269,NULL),NULL,NULL));
INSERT INTO students VALUES('p71', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(284,409,NULL),NULL,NULL));
INSERT INTO students VALUES('p72', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(272,409,NULL),NULL,NULL));
INSERT INTO students VALUES('p73', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(204,367,NULL),NULL,NULL));
INSERT INTO students VALUES('p74', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(231,371,NULL),NULL,NULL));
INSERT INTO students VALUES('p75', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(381,424,NULL),NULL,NULL));
INSERT INTO students VALUES('p76', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(466,471,NULL),NULL,NULL));
INSERT INTO students VALUES('p77', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(338,96,NULL),NULL,NULL));
INSERT INTO students VALUES('p78', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(349,78,NULL),NULL,NULL));
INSERT INTO students VALUES('p79', SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(409,132,NULL),NULL,NULL));


INSERT INTO tramstops VALUES('t1psa', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(80,120,280,120,180,220)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(180,120,NULL),NULL,NULL),100);
INSERT INTO tramstops VALUES('t2ohe', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(134,177,274,177,204,247)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(204,177,NULL),NULL,NULL),70);
INSERT INTO tramstops VALUES('t3sgm', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(178,81,328,81,253,156)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(253,81,NULL),NULL,NULL),75);
INSERT INTO tramstops VALUES('t4hnb', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(426,229,526,229,476,279)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(476,229,NULL),NULL,NULL),50);
INSERT INTO tramstops VALUES('t5vhe', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(397,299,497,299,447,349)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(447,299,NULL),NULL,NULL),50);
INSERT INTO tramstops VALUES('t6ssl', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(163,432,263,432,213,482)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(213,432,NULL),NULL,NULL),50);
INSERT INTO tramstops VALUES('t7helen', SDO_GEOMETRY(2003,NULL,NULL,SDO_ELEM_INFO_ARRAY(1,1003,4),SDO_ORDINATE_ARRAY(278,460,478,460,378,560)),SDO_GEOMETRY(2001,Null,SDO_POINT_TYPE(378,460,NULL),NULL,NULL),100);


/* Create MetaData */
INSERT INTO user_sdo_geom_metadata(TABLE_NAME,COLUMN_NAME,DIMINFO,SRID) VALUES ('buildings','shape',SDO_DIM_ARRAY(SDO_DIM_ELEMENT('X',0,800,0.05),SDO_DIM_ELEMENT('Y',0,800,0.05)),NULL);
INSERT INTO user_sdo_geom_metadata(TABLE_NAME,COLUMN_NAME,DIMINFO,SRID) VALUES ('students','shape',SDO_DIM_ARRAY(SDO_DIM_ELEMENT('X',0,600,0.05),SDO_DIM_ELEMENT('Y',0,600,0.05)),NULL);
INSERT INTO user_sdo_geom_metadata(TABLE_NAME,COLUMN_NAME,DIMINFO,SRID) VALUES ('tramstops','shape',SDO_DIM_ARRAY(SDO_DIM_ELEMENT('X',0,600,0.05),SDO_DIM_ELEMENT('Y',0,600,0.05)),NULL);
INSERT INTO user_sdo_geom_metadata(TABLE_NAME,COLUMN_NAME,DIMINFO,SRID) VALUES ('tramstops','point',SDO_DIM_ARRAY(SDO_DIM_ELEMENT('X',0,600,0.05),SDO_DIM_ELEMENT('Y',0,600,0.05)),NULL);

CREATE INDEX buildings_idx ON buildings(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX; 
CREATE INDEX students_idx ON students(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX tramstops_idx ON tramstops(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;
CREATE INDEX tramstops_indx ON tramstops(point) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

