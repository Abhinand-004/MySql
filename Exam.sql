CREATE TABLE employee2(
    ID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(20),
    Department varchar(20),
    Leaves int
);
CREATE TABLE exam1(
    Exam_id int AUTO_INCREMENT PRIMARY KEY,
    Employee_id int,
    Exam_status varchar(10),
    FOREIGN KEY(Employee_id) REFERENCES employee2(ID)
);
INSERT INTO `employee2`(`Name`, `Department`, `Leaves`) VALUES ('Raju','Sales',1),
('Sangeetha','Sales',3),('Vinay','Operations',8),
('Abey','Packing',2),('Thomas','Packing',1),
('Muneer','Operations',7),('Aparna','Sales',3),
('Abid','Operations',9),('Fathima','Sales',11),
('Varghese','Operations',14);

INSERT INTO `exam1`(`Employee_id`, `Exam_status`) VALUES (2,'Pass'),(5,'Fail'),
(1,'Fail'),(8,'Pass'),(3,'Pass'),(1,'Pass'),
(6,'Fail'),(9,'Pass'),(10,'Pass');

SELECT * FROM `employee2` WHERE Leaves>5;

SELECT COUNT(*) FROM `employee2` WHERE Department='Operations';

SELECT Department,COUNT(*) FROM `employee2` GROUP BY Department 

SELECT Department FROM `employee2` GROUP BY Department HAVING SUM(Leaves)>10;

SELECT Name,exam1.Exam_status FROM `employee2`
INNER JOIN exam1
 ON employee2.ID=exam1.Employee_id 
 WHERE exam1.Exam_status='Pass';

 SELECT Name FROM `employee2` WHERE ID NOT IN (SELECT Employee_id FROM exam1 );