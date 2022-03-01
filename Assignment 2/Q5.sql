--Q5 livesql.oracle.com

CREATE TABLE InstructorSubject 
(INSTRUCTOR CHAR(20) NOT NULL, 
SUBJECT CHAR(20) NOT NULL, 
PRIMARY KEY (INSTRUCTOR, SUBJECT));

INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Aleph','Scratch');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Aleph','Java');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Aleph','Processing');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Bit','Python');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Bit','JavaScript');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Bit','Java');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('CRC','Python');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('CRC','JavaScript');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Dat','Scratch');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Dat','Python');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Dat','JavaScript');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Emscr','Scratch');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Emscr','Processing');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Emscr','JavaScript');
INSERT INTO InstructorSubject (INSTRUCTOR, SUBJECT) VALUES ('Emscr','Python');


select INSTRUCTOR from InstructorSubject where subject in ('JavaScript','Scratch','Python') group by INSTRUCTOR having count(*) = 3 ;

-- Here I have used the concept of in clause where I am passing the hard coded subject list and using group and having keywords to extract that particular professor teaching that courses.

