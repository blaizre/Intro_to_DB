CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE Books(
	book_id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price DOUBLE,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
	author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_name VARCHAR(215) NOT NULL,
	email VARCHAR(215) NOT NULL,
	address TEXT
);

CREATE TABLE Orders(
	orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity DOUBLE
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
 
