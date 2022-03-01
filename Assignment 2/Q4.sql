--Q4 livesql.oracle.com

CREATE TABLE EnrollSubject 
(STUDENT CHAR(20) NOT NULL, 
SUBJECT CHAR(20) NOT NULL,
TAUGHTBY CHAR(20) NOT NULL,
PRIMARY KEY (STUDENT, SUBJECT,TAUGHTBY));

CREATE TABLE INSTRUCTOR
(FULLNAME CHAR(20) NOT NULL,
HOURRATE INTEGER NOT NULL,
PRIMARY KEY (FULLNAME));


INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Aashima','Scratch','Aleph');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Anmol','Scratch','BIT');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Ayushi','Java','CRC');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Molshri','Python','Dat');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Mini','JavaScript','Emscr');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Parth','Processing','Aleph');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Pranav','Python','BIT');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Kartik','Java','CRC');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Sumalya','Processing','Dat');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Sanya','JavaScript','Emscr');
INSERT INTO EnrollSubject (STUDENT, SUBJECT, TAUGHTBY) VALUES ('Anmol','Java','Aleph');


INSERT INTO INSTRUCTOR (FULLNAME,HOURRATE) VALUES ('Aleph',15);
INSERT INTO INSTRUCTOR (FULLNAME,HOURRATE) VALUES ('BIT',16);
INSERT INTO INSTRUCTOR (FULLNAME,HOURRATE) VALUES ('CRC',14);
INSERT INTO INSTRUCTOR (FULLNAME,HOURRATE) VALUES ('Dat',17);
INSERT INTO INSTRUCTOR (FULLNAME,HOURRATE) VALUES ('Emscr',19);


select max(bonus) from (select prof,num_students,ins.hourrate,ins.hourrate * num_students * 0.1 as bonus  from 
(select es.taughtby as prof,count(es.student) as num_students from enrollSubject es group by es.taughtby) inner join instructor ins on prof=ins.fullname);

-- In this question, I created two tables, EnrollSubject and INSTRUCTOR. EnrollSubject will have student, the course that the student took and the professor who taught that course. Instructor table will have professor name and hourly rate.
