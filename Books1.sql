INSERT INTO book1 VALUES(1,'To Kill a Mockingbird','Harper Lee',600,'Thriller'),
(2,' Ulysses','James Joyce',300,'History'),
(3,'In Search of Lost Time','Marcel Proust',500,'Science'),
(4,'The Great Gatsby','Catherine the Great',200,'Science'),
(5,'Dan Brown Omnibus ','Dan Brown',800,'Fiction');
SELECT * FROM BOOK1 WHERE Price >400;
SELECT * FROM BOOK1 WHERE Genre IN ('History','Fiction','Science');
SELECT * FROM BOOK1 WHERE Title ='The Great Gatsby';
SELECT * FROM BOOK1 WHERE Author='Dan Brown';
