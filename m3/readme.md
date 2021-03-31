# Task3

## Part 3.1 

### DKosiakIbrary database schema

```sh 
 |Book |       |Chapter| 
 |id   |       |id     |
 |Title|     > |book_id|
               |title  |
    
    
               |BookAuthor|  
             > |book_id   |			
               |author_id | > 
							
			   |Author|				
			 > |id	  |                
			   |fname |
			   |lname |
	
```	

### Create database 

mysqladmin - u root password

mysqladmin create  DkosiakLibrary

```sh

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

```

### Work with DB

```sh 

MariaDB [(none)]> use DkosiakLibrary

Database changed

MariaDB [DkosiakLibrary]> SELECT database();

+----------------+
| database()     |
+----------------+
| DkosiakLibrary |
+----------------+

```

#### Create tables

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

```sh

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

```

##### Put data into tables

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

#### make select from DB

select Title, fname, lname from Book, BookAuthor, Author where Book.id=BookAuthor.book_id and BookAuthor.author_id=Author.id

```sh 

MariaDB [DkosiakLibrary]> select Title, fname, lname from Book, BookAuthor, Author where Book.id=BookAuthor.book_id and BookAuthor.author_id=Author.id;
+-------------+---------+----------+
| Title       | fname   | lname    |
+-------------+---------+----------+
| First Book  | 1 fname | 1 laname |
| Second Book | 2 fname | 2 laname |
+-------------+---------+----------+
2 rows in set (0.00 sec)

```

## Part 3.2

### Tasks 10-12
Backup and restore DB

mysqldump  DkosiakLibrary > DKL.sql

```sh 
MariaDB [DkosiakLibrary]> drop table Author
    -> ;
Query OK, 0 rows affected (0.01 sec)

MariaDB [DkosiakLibrary]> show tables
    -> ;
+--------------------------+
| Tables_in_DkosiakLibrary |
+--------------------------+
| Book                     |
| BookAuthor               |
| Chapter                  |
+--------------------------+
3 rows in set (0.00 sec)

```

mysql DkosiakLibrary < DKL.sql

```sh

Database changed
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

```
### Tasks 13-15 

1. Create DB Instance on AWS 

![Link to 3.1-CreateInstance](task3.1/Task3.1p2p13.jpg)


2. Import Data to Instanse

```sh 

DKO:~$ mysql -u admin -p -D DkosiakLibrary --host dkosiak-database-1.c2hnnzvoj5f8.us-east-2.rds.amazonaws.com < /mnt/c/Users/dimka/Documents/GitHub/DevOps_online_Zaporizhzhya_2021Q1/m3/task3.1/DKL.sql
Enter password:

DKO:~$ mysql -u admin -p --host dkosiak-database-1.c2hnnzvoj5f8.us-east-2.rds.amazonaws.com -D DkosiakLibrary
Enter password:
........
MariaDB [DkosiakLibrary]>  select Title, fname, lname from Book, BookAuthor, Author where Book.id=BookAuthor.book_id and BookAuthor.author_id=Author.id;
+-------------+---------+----------+
| Title       | fname   | lname    |
+-------------+---------+----------+
| First Book  | 1 fname | 1 laname |
| Second Book | 2 fname | 2 laname |
+-------------+---------+----------+
2 rows in set (0.15 sec)

```

3. Take DB snapshot 

![Link to 3.1-TakeInstanceSnapShot](task3.1/Task3.1p2p16.jpg)
