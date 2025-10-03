INSERT INTO `employees1`(`Id`, `Name`) VALUES (1,' Anjali'),
(2,'Rohan'),(3,'Meena');

INSERT INTO `dep1`(`Emp_id`, `Dep_name`) VALUES (1,'HR'),(2,'IT'),(4,'Finance');

SELECT employees1.Name,dep1.Dep_name 
FROM `dep1` 
LEFT OUTER JOIN `employees1`
 ON employees1.Id=dep1.Emp_id;

 SELECT employees1.Name, dep1.Dep_name FROM `dep1` INNER JOIN `employees1` ON employees1.Id=dep1.Emp_id;

SELECT employees1.Name,dep1.Dep_name FROM `dep1` LEFT OUTER JOIN `employees1` ON employees1.Id=dep1.Emp_id
UNION
SELECT employees1.Name,dep1.Dep_name FROM `dep1` RIGHT OUTER JOIN `employees1` ON employees1.Id=dep1.Emp_id;