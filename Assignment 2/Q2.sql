--Q2 livesql.oracle.com

CREATE TABLE ClassGrade
(SSID INTEGER NOT NULL,
CLASSNAME CHAR(20) NOT NULL,
GRADE CHAR(10) NOT NULL,
PRIMARY KEY (SSID, CLASSNAME));

INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (123,'Processing','A');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (123,'Python','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (123,'Scratch','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (662,'Java','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (662,'Python','A');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (662,'JavaScript','A');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (662,'Scratch','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (345,'Scratch','A');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (345,'JavaScript','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (345,'Python','A');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (555,'Python','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (555,'JavaScript','B');
INSERT INTO ClassGrade (SSID, CLASSNAME, GRADE) VALUES (213,'JavaScript','A');

select classname as classname,count(classname) as TOTAL from classgrade group by classname order by count(classname) desc;

--The key in this question is to use group by keyword inorder to group the class name and use count keyword to find its occurances. 