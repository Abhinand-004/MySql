CREATE TABLE author1( 
    Author_id int UNIQUE KEY, 
    Author_name text , 
    Email_address varchar(20) UNIQUE KEY);

CREATE TABLE book2(
    Book_id int UNIQUE KEY,
    Book_title text ,
    Author_id int ,
    FOREIGN KEY(Author_id) REFERENCES author1(Author_id));