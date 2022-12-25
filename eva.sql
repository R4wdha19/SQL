CREATE TABLE Department(
Department_id INT PRIMARY KEY,
Department_name VARCHAR(20),
Department_location VARCHAR(15)
);
INSERT INTO Department(
Department_id ,
Department_name,
Department_location )
VALUES (
1001,
'FINANCE',
'SYDNEY'
),
(
2001,
'AUDIT',
'MELBOURNE'
),
(
3001,
'MARKETING',
'PERTH'
),
(
4001,
'PRODUCTION',
'BRISBANE'
);













CREATE TABLE Salary_grade(
Grade INT PRIMARY KEY,
Min_Salary INT,
Max_Salary INT
);

INSERT INTO Salary_grade(
Grade ,
Min_Salary,
Max_Salary )
VALUES
(
1,
800,
1300
),
(
2,
1301 ,
1500
),
(
3 ,
1501,
2100),
(
4,
2101 ,
3100),
(
5,
3101 ,
9999
);







CREATE TABLE Employee(
Employee_id INT PRIMARY KEY,
Employee_Name VARCHAR(15),
job_name VARCHAR(10),
Manager_id INTEGER,
Hire_date DATE,
Salary DECIMAL(10, 2),
Commission DECIMAL(7,2),
Department_id INTEGER REFERENCES Department(Department_id)
);
INSERT INTO Employee(
Employee_id,
Employee_Name,
job_name ,
Manager_id ,
Hire_date,
Salary,
Commission ,
Department_id 
)
VALUES (
68319,
'KAYLING',
'PRESIDENT',
Null,
'1991-11-18',
6000.00 ,
Null,
  1001),
  (
  66928,
  'BLAZE',
  'MANAGER ',
  68319,
 ' 1991-05-01' ,
  2750.00,
  Null,
   3001
   ),
     (
  67832 ,
  'CLARE',
  'MANAGER ',
  68319,
  '1991-06-09' ,
  2550.00 ,
  Null,
   1001
   ),
  (
   65646 ,
  'JONAS',
  'MANAGER ',
  68319,
  '1991-04-02' ,
  2957.00 ,
  Null,
   2001
   ),
 (
   67858 ,
  'SCARLET',
  'ANALYST ',
  65646,
 ' 1997-04-19 ' ,
  3100.00,
  Null,
   2001
   ),
  (
    69062 ,
  'FRANK ',
  'ANALYST ',
  65646,
'  1991-12-03 ' ,
  3100.00,
  Null,
   2001
   ),
 (
   63679 ,
  'SANDRINE',
  'CLERK ',
  69062,
  '1990-12-18 '  ,
  900.00,
  Null,
   2001
   ),
 (
   64989 ,
  'ADELYN',
  'SALESMAN ',
  66928,
 '1991-02-20 ' ,
  1700.00,
 400.00,
   3001
   ),
   (
    65271 ,
  'WADE ',
  'SALESMAN ',
  66928,
 '1991-02-22 ',
  1350.00,
600.00 ,
   3001
   ),
    (
    66564 ,
  'MADDEN ',
  'SALESMAN ',
  66928,
' 1991-09-28 ' ,
  1350.00,
 1500.00,
   3001
   ),
      (
    68454 ,
  'TUCKER  ',
  'SALESMAN ',
  66928,
' 1991-09-08 '  ,
 1600.00,
 0.00,
   3001
   ),
         (
    68736  ,
  'ADNRES  ',
  'CLERK ',
  67858,
' 1997-05-23 '  ,
 1200.00,
 Null,
   2001
   ),
            (
    69000   ,
  'JULIUS  ',
  'CLERK ',
  66928,
' 1991-12-03  '  ,
  1050.00,
 Null,
   3001),
   
              (
    69324   ,
  'MARKER  ',
  'CLERK ',
  67832,
' 1992-01-23  '  ,
  1400.00 ,
 Null,
   1001
  
   );

       SET STATISTICS TIME,IO ON; 
	   SELECT * FROM Employee;
	   SELECT Salary FROM Employee;
	   SELECT DISTINCT job_name FROM Employee;
	   SELECT Employee_Name , Salary+ 1.15*salary AS NewSalary  FROM Employee;
	SELECT CONCAT ( Employee_Name, '   ' ,job_name) AS "Employee & Job" FROM Employee;
	SELECT Employee_id, Employee_Name,Salary, Hire_date,FORMAT(hire_date,'MMM dd yyyy')AS NewHireDate FROM Employee; 
    SELECT COUNT(salary) AS NmberOfEmployees FROM Employee WHERE Salary > 2200;
	 SELECT  DISTINCT job_name ,Department_id FROM Employee;
	 SELECT * FROM Employee WHERE Department_id  !=  2001 ; 
	 SELECT * FROM Employee WHERE Hire_date <('1991-01-01') ;
	 SELECT AVG(Salary) AS average_Salary  FROM Employee  WHERE job_name = 'ANALYST';
	 SELECT * FROM Employee WHERE Employee_Name LIKE 'B%' OR Employee_Name LIKE '%E';
	 SELECT * FROM Employee WHERE Department_id IN (SELECT Department_id FROM Department 
	 WHERE Department_name LIKE 'B%' OR Department_name LIKE '%E');
	 SELECT * FROM Employee 
	 SELECT emp.*, d.Department_location, d.Department_name FROM Employee emp INNER JOIN department d
	 ON emp.Department_id = d.Department_id WHERE emp.commission > emp.salary;
	SELECT Employee_id, Employee_Name, salary FROM Employee WHERE salary * 25 > 3000;
	SELECT *FROM Employee WHERE MONTH(hire_date) = 1;
	SELECT CONCAT(Employee_Name, ' works for ', manager_id) AS 'Employee and Manager' FROM Employee ;
SELECT * FROM Employee WHERE job_name = 'CLERK';
SELECT Employee_id, hire_date FROM Employee WHERE hire_date <= DATEADD(year, -27, GETDATE());
SELECT * FROM Employee WHERE salary <3500;
SELECT Employee_Name, job_name,  salary FROM Employee WHERE job_name = 'ANALYST';
SELECT * FROM Employee WHERE FORMAT (hire_date,'yyy') IN ('1991');
SELECT Employee_id,Employee_Name, Hire_date,salary FROM Employee WHERE hire_date<('1991-4-1');
SELECT e.Employee_Name,   e.job_name FROM Employee e WHERE manager_id IS NULL;
SELECT * FROM Employee WHERE hire_date = '1991-05-01';
SELECT Employee_id, Employee_Name,  salary,DATEDIFF(YEAR, Hire_date ,GETDATE()) As experience   FROM Employee
WHERE manager_id=68319;
SELECT Employee_id, Employee_Name,  salary,DATEDIFF(YEAR, Hire_date ,GETDATE()) As experience  FROM Employee
WHERE (Salary/30)>100;
SELECT Employee_Name FROM Employee WHERE hire_date + interval '96 months' > '1999-12-31';
SELECT * FROM Employee WHERE mod(salary,2) = 1;
SELECT * FROM employee WHERE length(TRIM(TO_CHAR(salary,'9999'))) = 3;
SELECT CAST(GETDATE() AS DATE) 'Current Date' ; 
SELECT * FROM Employee WHERE salary between 100 AND 999;
SELECT * FROM Employee WHERE to_char(hire_date,'MM') =('4');