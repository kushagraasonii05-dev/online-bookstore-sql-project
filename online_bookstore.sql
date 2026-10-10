-- ============================================
-- ONLINE BOOKSTORE SQL PROJECT
-- ============================================


-- ============================================
-- 1. CREATE DATABASE
-- ============================================

CREATE DATABASE Online_Bookstore;
USE Online_Bookstore;
-- ============================================
-- 2. CREATE BOOKS TABLE
-- ============================================

CREATE TABLE books(
      book_id INT PRIMARY KEY,
      title VARCHAR (100),
      author VARCHAR(100),
      genre VARCHAR(100),
      price DECIMAL (10,2),
      stock INT
);
-- ============================================
-- 3. CREATE CUSTOMERS TABLE
-- ============================================

CREATE TABLE customers(
      customer_id INT PRIMARY KEY,
      name VARCHAR (50),
      email VARCHAR (50),
      city VARCHAR(50)
);
-- ============================================
-- 4. CREATE ORDERS TABLE
-- ============================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    quantity INT,
    order_date DATE
);

-- ============================================
-- 5. INSERT CUSTOMER DATA
-- ============================================

INSERT INTO customers (customer_id, name, email, city) VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', 'Indore'),
(2, 'Priya Verma', 'priya@gmail.com', 'Bhopal'),
(3, 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
(4, 'Sneha Patel', 'sneha@gmail.com', 'Pune'),
(5, 'Aditya Singh', 'aditya@gmail.com', 'Delhi'),
(6, 'Ananya Gupta', 'ananya@gmail.com', 'Indore'),
(7, 'Rahul Joshi', 'rahul@gmail.com', 'Jaipur'),
(8, 'Kavya Shah', 'kavya@gmail.com', 'Ahmedabad'),
(9, 'Vikram Rao', 'vikram@gmail.com', 'Bangalore'),
(10, 'Neha Kapoor', 'neha@gmail.com', 'Delhi'),
(11, 'Arjun Malhotra', 'arjun@gmail.com', 'Mumbai'),
(12, 'Ishita Jain', 'ishita@gmail.com', 'Indore'),
(13, 'Karan Tiwari', 'karan@gmail.com', 'Lucknow'),
(14, 'Meera Nair', 'meera@gmail.com', 'Kochi'),
(15, 'Yash Agarwal', 'yash@gmail.com', 'Bhopal'),
(16, 'Pooja Soni', 'pooja@gmail.com', 'Indore'),
(17, 'Dev Patel', 'dev@gmail.com', 'Surat'),
(18, 'Riya Mishra', 'riya@gmail.com', 'Kanpur'),
(19, 'Manav Khanna', 'manav@gmail.com', 'Chandigarh'),
(20, 'Simran Kaur', 'simran@gmail.com', 'Amritsar');

-- ============================================
-- 6. INSERT BOOK DATA
-- ============================================

INSERT INTO books (book_id, title, author, genre, price, stock) VALUES
(101, 'Atomic Habits', 'James Clear', 'Self-Help', 499, 25),
(102, 'The Alchemist', 'Paulo Coelho', 'Fiction', 299, 40),
(103, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 399, 30),
(104, 'Ikigai', 'Hector Garcia', 'Self-Help', 350, 35),
(105, 'The Psychology of Money', 'Morgan Housel', 'Finance', 450, 20),
(106, 'Harry Potter', 'J.K. Rowling', 'Fantasy', 599, 15),
(107, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 499, 18),
(108, '1984', 'George Orwell', 'Fiction', 299, 22),
(109, 'Animal Farm', 'George Orwell', 'Fiction', 249, 28),
(110, 'Deep Work', 'Cal Newport', 'Self-Help', 450, 17),
(111, 'Think and Grow Rich', 'Napoleon Hill', 'Finance', 320, 25),
(112, 'The Power of Now', 'Eckhart Tolle', 'Self-Help', 399, 20),
(113, 'Sapiens', 'Yuval Noah Harari', 'History', 699, 12),
(114, 'Educated', 'Tara Westover', 'Biography', 550, 14),
(115, 'Becoming', 'Michelle Obama', 'Biography', 650, 10),
(116, 'Steve Jobs', 'Walter Isaacson', 'Biography', 799, 8),
(117, 'The Kite Runner', 'Khaled Hosseini', 'Fiction', 399, 16),
(118, 'A Man Called Ove', 'Fredrik Backman', 'Fiction', 450, 19),
(119, 'Dune', 'Frank Herbert', 'Sci-Fi', 599, 13),
(120, 'The Martian', 'Andy Weir', 'Sci-Fi', 499, 21),
(121, 'Pride and Prejudice', 'Jane Austen', 'Classic', 299, 30),
(122, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 249, 27),
(123, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 399, 24),
(124, 'The Book Thief', 'Markus Zusak', 'Historical Fiction', 450, 18),
(125, 'The Midnight Library', 'Matt Haig', 'Fiction', 399, 20),
(126, 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Self-Help', 499, 23),
(127, 'Start With Why', 'Simon Sinek', 'Business', 450, 15),
(128, 'Zero to One', 'Peter Thiel', 'Business', 550, 11),
(129, 'The Lean Startup', 'Eric Ries', 'Business', 499, 16),
(130, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 350, 32);

-- ============================================
-- 7. INSERT ORDER DATA
-- ============================================

INSERT INTO orders (order_id, customer_id, book_id, quantity, order_date) VALUES
(1, 1, 101, 2, '2026-01-05'),
(2, 2, 105, 1, '2026-01-07'),
(3, 3, 102, 3, '2026-01-10'),
(4, 4, 110, 1, '2026-01-12'),
(5, 5, 106, 2, '2026-01-15'),
(6, 6, 103, 1, '2026-01-18'),
(7, 7, 108, 2, '2026-01-20'),
(8, 8, 104, 1, '2026-01-22'),
(9, 9, 119, 2, '2026-01-25'),
(10, 10, 115, 1, '2026-01-28'),

(11, 11, 101, 1, '2026-02-02'),
(12, 12, 107, 2, '2026-02-05'),
(13, 13, 113, 1, '2026-02-08'),
(14, 14, 117, 3, '2026-02-10'),
(15, 15, 111, 2, '2026-02-12'),
(16, 16, 126, 1, '2026-02-15'),
(17, 17, 120, 2, '2026-02-18'),
(18, 18, 121, 1, '2026-02-20'),
(19, 19, 128, 2, '2026-02-22'),
(20, 20, 130, 3, '2026-02-25'),

(21, 1, 103, 1, '2026-03-01'),
(22, 2, 102, 2, '2026-03-03'),
(23, 3, 110, 3, '2026-03-05'),
(24, 4, 125, 1, '2026-03-07'),
(25, 5, 106, 1, '2026-03-10'),
(26, 6, 105, 2, '2026-03-12'),
(27, 7, 109, 3, '2026-03-15'),
(28, 8, 127, 1, '2026-03-18'),
(29, 9, 119, 1, '2026-03-20'),
(30, 10, 114, 2, '2026-03-22'),

(31, 11, 101, 2, '2026-04-01'),
(32, 12, 104, 1, '2026-04-04'),
(33, 13, 129, 2, '2026-04-06'),
(34, 14, 118, 1, '2026-04-08'),
(35, 15, 111, 3, '2026-04-10'),
(36, 16, 112, 2, '2026-04-12'),
(37, 17, 123, 1, '2026-04-15'),
(38, 18, 122, 2, '2026-04-18'),
(39, 19, 128, 1, '2026-04-20'),
(40, 20, 130, 2, '2026-04-22'),

(41, 1, 126, 1, '2026-05-02'),
(42, 2, 113, 2, '2026-05-05'),
(43, 3, 107, 1, '2026-05-08'),
(44, 4, 102, 2, '2026-05-10'),
(45, 5, 119, 1, '2026-05-12'),
(46, 6, 120, 3, '2026-05-15'),
(47, 7, 101, 2, '2026-05-18'),
(48, 8, 115, 1, '2026-05-20'),
(49, 9, 124, 2, '2026-05-22'),
(50, 10, 116, 1, '2026-05-25'),

(51, 11, 108, 3, '2026-06-01'),
(52, 12, 125, 2, '2026-06-04'),
(53, 13, 103, 1, '2026-06-07'),
(54, 14, 117, 2, '2026-06-10'),
(55, 15, 129, 1, '2026-06-12'),
(56, 16, 109, 3, '2026-06-15'),
(57, 17, 121, 2, '2026-06-18'),
(58, 18, 127, 1, '2026-06-20'),
(59, 19, 123, 2, '2026-06-22'),
(60, 20, 105, 1, '2026-06-25');

-- ============================================
-- 8. ADD FOREIGN KEYS
-- ============================================

ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

ALTER TABLE orders
ADD CONSTRAINT fk_book
FOREIGN KEY (book_id) REFERENCES books(book_id);

-- ============================================
-- 9. CHECK TABLES AND DATA
-- ============================================

SHOW TABLES;

SELECT * FROM customers;

SELECT * FROM books;

SELECT * FROM orders;

-- ============================================
-- 10. BASIC DATA ANALYSIS
-- ============================================

-- Count total customers

SELECT COUNT(*) FROM customers;

-- Count total books
SELECT COUNT(*) FROM books;

-- Count total orders
SELECT COUNT(*) FROM orders;

-- ============================================
-- 11. BOOKS BY GENRE
-- ============================================
-- How many books are available in each genre?

SELECT genre,COUNT(*)
FROM books
GROUP BY genre;

-- ============================================
-- 12. CUSTOMER ORDER ANALYSIS
-- ============================================

-- How many books has each customer ordered?

SELECT customers.name, SUM(orders.quantity) as total
FROM orders


JOIN customers
on orders.customer_id = customers.customer_id
GROUP BY customers.name;

-- ============================================
-- 13. BOOK SALES ANALYSIS
-- ============================================

-- How many copies of each book were sold?

SELECT books.title, SUM(orders.quantity)
FROM orders
JOIN books
ON orders.book_id = books.book_id
GROUP BY books.title;

-- ============================================
-- 14. HIGHEST ORDERING CUSTOMER
-- ============================================

-- Which customer ordered the highest number of books?

SELECT customers.name, SUM(orders.quantity) AS total_books
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.name
ORDER BY total_books DESC
LIMIT 1;

-- ============================================
-- 15. HIGHEST REVENUE BOOK
-- ============================================

-- Which book generated the highest revenue?

SELECT books.title,
       SUM(orders.quantity * books.price) AS Total_Revenue
FROM books
JOIN orders
ON books.book_id = orders.book_id
GROUP BY books.title
ORDER BY total_revenue DESC
LIMIT 1;

-- ============================================
-- 16. HIGHEST REVENUE CUSTOMER
-- ============================================

-- Which customer generated the highest revenue?

SELECT customers.name, 
       SUM(orders.quantity * books.price) as Total_Revenue
FROM customers
JOIN Orders
ON customers.customer_id = orders. customer_id
JOIN books
ON orders.book_id = books.book_id
GROUP BY customers.name
ORDER BY Total_Revenue DESC
LIMIT 1;

-- ============================================
-- 17. LOW STOCK BOOKS
-- ============================================

-- Which books have a stock level below 10?

SELECT title, stock
FROM books
WHERE stock < 10;

-- ============================================
-- 18. EXPENSIVE BOOKS
-- ============================================

-- Which books have a price greater than 500?

SELECT title, price
FROM books
WHERE price > 500;

-- ============================================
-- 19. BOOKS NEVER ORDERED
-- ============================================

-- Which books have never been ordered?

SELECT books.title
from books
LEFT JOIN orders
on books.book_id = orders.book_id
WHERE orders.book_id IS NULL;

-- ============================================
-- 20. RANK BOOKS BY SALES
-- ============================================

-- What is the rank of each book based on total copies sold?

SELECT 
books.title,
sum(orders.quantity) AS Total_sold,
RANK() OVER(ORDER BY SUM(orders.quantity) DESC) AS Sales_Rank
FROM books
JOIN orders
on books.book_id = orders.book_id
GROUP BY books.book_id, books.title;

-- ============================================
-- 21. CUSTOMER RANKING BY PURCHASES
-- ============================================

-- What is the rank of each customer based on total books purchased?

	SELECT
    customers.name,
    SUM(orders.quantity) AS Total_books,
    RANK() OVER(ORDER BY SUM(orders.quantity) DESC) AS Customer_Rank
    FROM customers
    JOIN Orders
    on customers.customer_id = orders.customer_id
    GROUP BY customers.customer_id, customers.name;

-- ============================================
-- 22. MONTHLY SALES REVENUE
-- ============================================

-- How much revenue did the bookstore generate each month?

SELECT
MONTH(orders.order_date) AS Sales_month,
SUM(orders.quantity * books.price) AS Total_revenue
FROM orders
join books
on books.book_id = orders.book_id
GROUP BY MONTH(orders.order_date)
ORDER BY Sales_month;

-- ============================================
-- 23. BOOK PRICE CATEGORY
-- ============================================

-- How can we categorize books based on their price?

SELECT
     title,
     price,
	 CASE 
	     WHEN price < 300 THEN 'Budget'
         WHEN price <= 600 THEN 'Mid-range'
         ELSE 'Premium'
     END AS Price_catagory
FROM books;

-- ============================================
-- 24. CUSTOMERS WITH NO ORDERS
-- ============================================

-- Which customers have never placed an order?

SELECT 
	customers.customer_id,
    customers.name
FROM customers
LEFT JOIN orders
on customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;

-- ============================================
-- 25. CREATE VIEW FOR BOOK SALES
-- ============================================

-- How can we save book sales analysis for reuse?

CREATE VIEW Book_sales_summary AS
SELECT 
     books.title,
     SUM(orders.quantity) AS total_sold
FROM books
JOIN orders
ON books.book_id = orders.book_id
GROUP BY books.book_id, books.title;

SELECT * FROM Book_Sales_Summary;


-- ============================================
-- PROJECT COMPLETED
-- ============================================

-- Online Bookstore SQL Project
-- Database: MySQL
-- Concepts Used: CREATE DATABASE, CREATE TABLE, INSERT, PRIMARY KEY, FOREIGN KEY, JOIN, GROUP BY, Aggregate Functions, ORDER BY, CASE, Window Functions, VIEW.

-- Project Status: COMPLETED
-- ============================================

