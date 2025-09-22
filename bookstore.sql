INSERT INTO `bookstore` VALUES (1, 'Learn SQL', 'John Smith', 400, 10),
 (2, 'Mastering Python', 'Jane Doe', 600, 5), 
 (3, 'HTML & CSS Basics', 'Alan Webb', 300, 8);

 UPDATE `bookstore` SET `Price`=(Price+50),`Stock`=(Stock+12) WHERE Title= 'Learn SQL';

 UPDATE `bookstore` SET `Stock`= Stock-2 WHERE Price>500;

 DELETE FROM `bookstore` WHERE ID=3;