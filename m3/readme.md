#Task3.1 


 |Book|      |Chapter| 
 |--> id    --|   id
 |    Title   |-->book_id
 |                title
 |      
 | |BookAuthor|  
 ---book_id		 |Author|	
    author_id---->id	
	              fname
				  lname
================================
mysqladmin - u root password

mysqladmin create  DkosiakLibrary

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| DkosiakLibrary     |
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
5 rows in set (0.00 sec)

=================================
MariaDB [(none)]> use DkosiakLibrary
Database changed
MariaDB [DkosiakLibrary]> SELECT database();
+----------------+
| database()     |
+----------------+
| DkosiakLibrary |
+----------------+

CREATE TABLE Book
(
    id INT,
    Title VARCHAR(100)    
);

CREATE TABLE Chapter
(
    id INT,
	book_id INT,
    Title VARCHAR(100)    
);

CREATE TABLE BookAuthor
(
    
	book_id INT,
    author_id INT    
);


CREATE TABLE Author
(
    id INT,
    fname VARCHAR(20),
    lname VARCHAR(20)
);

MariaDB [DkosiakLibrary]> show tables;
+--------------------------+
| Tables_in_DkosiakLibrary |
+--------------------------+
| Author                   |
| Book                     |
| BookAuthor               |
| Chapter                  |
+--------------------------+
4 rows in set (0.00 sec)
==================================
INSERT Book VALUES (1, "First Book");
INSERT Book VALUES (2, "Second Book");

INSERT Chapter VALUES (1,1, "Book 1 Chapter 1");
INSERT Chapter VALUES (2,1, "Book 1 Chapter 2");
INSERT Chapter VALUES (3,2, "Book 2 Chapter 1");
INSERT Chapter VALUES (4,2, "Book 2 Chapter 2");

INSERT BookAuthor VALUES (1,1);
INSERT BookAuthor VALUES (2,2);

INSERT Author VALUES (1, "1 fname", "1 laname");
INSERT Author VALUES (2, "2 fname", "2 laname");
==================================
select Title, fname, lname from Book, BookAuthor, Author where Book.id=BookAuthor.book_id and BookAuthor.author_id=Author.id

MariaDB [DkosiakLibrary]> select Title, fname, lname from Book, BookAuthor, Author where Book.id=BookAuthor.book_id and BookAuthor.author_id=Author.id;
+-------------+---------+----------+
| Title       | fname   | lname    |
+-------------+---------+----------+
| First Book  | 1 fname | 1 laname |
| Second Book | 2 fname | 2 laname |
+-------------+---------+----------+
2 rows in set (0.00 sec)
