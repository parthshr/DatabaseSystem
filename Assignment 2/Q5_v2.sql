--Q5_v2 livesql.oracle.com

CREATE TABLE InstructorSubject 
(INSTRUCTOR CHAR(20) NOT NULL, 
SUBJECT CHAR(20) NOT NULL, 
PRIMARY KEY (INSTRUCTOR, SUBJECT));

CREATE TABLE CodingSubject 
(SUBJECT CHAR(20) NOT NULL, 
PRIMARY KEY (SUBJECT));

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

INSERT INTO CodingSubject (SUBJECT) VALUES ('JavaScript');
INSERT INTO CodingSubject (SUBJECT) VALUES ('Scratch');
INSERT INTO CodingSubject (SUBJECT) VALUES ('Python');

select ins.instructor from InstructorSubject ins inner join CodingSubject cs on ins.subject = cs.subject group by ins.instructor having count(*) = 3;

-- Here I have created another table of subject and using join to join subject and InstructorSubject to fetch the instructors that taught those courses.
