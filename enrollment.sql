INSERT INTO `enrollment` VALUES (1, 'Alice', 'Web Development', 5000, 'Inactive'), 
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
 (3, 'Charlie', 'UI/UX Design', 4000, 'Active');
 
 SELECT * FROM `enrollment` WHERE Fees_paid>5000;

 UPDATE `enrollment` SET `Status`='Active' WHERE Course='Web Development';

 UPDATE `enrollment` SET `Fees_paid`= Fees_paid+500 WHERE Course= 'Data Science';

 UPDATE `enrollment` SET `Fees_paid`= Fees_paid-500,`Status`='Inactive' WHERE ID=3;

 DELETE FROM `enrollment` WHERE ID=2;

 DELETE FROM `enrollment` WHERE Status='Inactive';