CREATE DATABASE library;
USE library;
CREATE TABLE Branch (
Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(100),
Contact_no VARCHAR(20)
);

CREATE TABLE Employee (
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(50),
Position VARCHAR(50),
Salary DECIMAL(10, 2),
FOREIGN KEY (Emp_Id) REFERENCES Branch(Manager_Id)
);

CREATE TABLE Customer (
Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(50),
Customer_address VARCHAR(100),
Reg_date DATE
);

CREATE TABLE IssueStatus (
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(100),
Issue_date DATE,
Isbn_book VARCHAR(50),
FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

CREATE TABLE ReturnStatus (
Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(100),
Return_date DATE,
Isbn_book2 VARCHAR(50),
FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

CREATE TABLE Books (
ISBN VARCHAR(50) PRIMARY KEY,
Book_title VARCHAR(100),
Category VARCHAR(50),
Rental_Price DECIMAL(10, 2),
Status ENUM('yes', 'no'),
Author VARCHAR(50),
Publisher VARCHAR(50)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES
(1001, 151, 'Palayam, Thiruvananthapuram', '987-654-3210'),
(1002, 152, ‘Kottarakkara, Kollam’, '987-654-3211'),
(1003, 153, ‘Aranmula, Pathanamthitta’, '987-654-3212'),
(1004, 154, ‘Ambalapuzha, Alappuzha’, '987-654-3213'),
(1005, 155, ‘Ramapuram, Kottayam, '987-654-3214'),
(1006, 156, ‘Vytilla, Ernakulam’, '987-654-3215'),
(1007, 157, ‘Ottapalam, Palakkad’, '987-654-3216'),
(1008, 158, ‘Nilambur, Malappuram’, '987-654-3217'),
(1009, 159, ‘, Kozhikode’, '987-654-3218'),
(1010, 160, ‘, Kasaragod’, '987-654-3219'),
(1011, 161, ‘, Kannur’, '987-654-3220'),
(1012, 162, ‘, Thrissur, '987-654-3221'),
(1013, 163, ‘, Wayanad, '987-654-3222'),
(1014, 164, ‘, Idukki, '987-654-3223');

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary)
VALUES
(151, ‘Resmi K S', ‘Librarian’, 67000.00),
(152, 'Mahesh A', 'Assistant Librarian’, 43000.00),
(153, 'Latha A', 'Librarian’, 67000.00),
(154, 'Santra L', ‘Librarian’, 67000.00),
(155, 'Aneesh K', 'Assistant Librarian’, 43000.00),
(156, 'Banu S', ‘Librarian’, 67000.00),
(157, 'Charu R', 'Assistant Librarian’, 43000.00),
(158, 'Deepu G', ‘Librarian’, 67000.00),
(159, 'Eshan V', 'Assistant Librarian’, 43000.00),
(160, ‘Farooq K’, ‘Librarian’, 67000.00),
(161, 'Gayathri A’, 'Assistant Librarian’, 43000.00),
(162, ‘Hari P', ‘Librarian’, 67000.00),
(163, 'Irshad T’, 'Assistant Librarian’, 43000.00),
(164, ‘Jeyanthi B', ‘Librarian’, 67000.00);
