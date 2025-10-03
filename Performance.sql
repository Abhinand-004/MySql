INSERT INTO `performance` VALUES (1 ,'Raj','Chennai', 88, 5,'Fitness'),
(2 ,'Anu','Mumbai', 91, NULL,' Diet'),
(3 ,'Ravi','Chennai', 78, 3,'Fitness'),
(4 ,'Meena','Delhi', 82, NULL,' Diet'),
(5 ,'Farah','Mumbai', 95, 4,' Fitness'),
(6 ,'Kiran','Pune', 70, NULL,'Yoga'),
(7 ,'Latha','Pune', 87, NULL,'Fitness');

SELECT Name,Score FROM performance HAVING Score>(SELECT AVG(Score)FROM performance);