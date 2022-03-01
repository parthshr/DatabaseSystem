--Q3 livesql.oracle.com

CREATE TABLE ProjectStatus
(PID CHAR(10) NOT NULL,
STEP INTEGER NOT NULL,
STATUS CHAR(10) NOT NULL,
PRIMARY KEY (PID, STEP));

INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P100',0,'C');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P100',1,'W');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P100',2,'W');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P201',0,'C');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P201',1,'C');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P333',0,'W');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P333',1,'W');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P333',2,'W');
INSERT INTO ProjectStatus (PID, STEP, STATUS) VALUES ('P333',3,'W');

select distinct(ps1.pid) from ProjectStatus ps1 inner join ProjectStatus ps2 on ps1.pid = ps2.pid where ps1.step=0 and ps1.status='C' and ps2.step = 1 and ps2.status='W';

--In this question, I have used inner join to join the table ProjectStatus with itself and used the distinct keyword to extract the unique solution.