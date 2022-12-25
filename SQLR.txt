CREATE Table MySchool(
School_Name VARCHAR(50),
School_id INT NOT NULL,
School_Registration_Number VARCHAR (20),
);



INSERT INTO MySchool ( School_Name,School_id,School_Registration_Number) VALUES ( 'ALROODH',01,9944);
INSERT INTO MySchool ( School_Name,School_id,School_Registration_Number) VALUES ( 'ALRawdha',02,9945);
INSERT INTO MySchool ( School_Name,School_id,School_Registration_Number) VALUES ( 'ALRyadh',03,9946);
DELETE FROM MySchool WHERE School_id = 2;
SELECT * FROM MySchool;


CREATE Table MySchoolStudents(
Student_Name VARCHAR(50),
Student_id INT NOT NULL,
Student_dateOfBirth DATE,
);

INSERT INTO MySchoolStudents (Student_Name,Student_id,Student_dateOfBirth) VALUES ('Rawdha',01,1996-12-19);




CREATE Table MyStudentSubjects(
Subject_Name VARCHAR(50),
Subject_id INT NOT NULL,
);
CREATE Table MyStudentsMarks(
Mark_Of_Assignment1 INT ,
Mark_Of_Assignment2 INT ,
Mark_Of_Test1 INT ,
Mark_Of_Test2 INT ,
);

