--Q1 livesql.oracle.com

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum, startTime)
CONSTRAINT timeValid check (startTime<endTime));

-- Texual Explaination : 
-- For checking whether the room is occupied or not we can create a trigger which can check on every insert or update commands that the given room is occupied or not by just comparing the starttimes and endtimes of the same room.
