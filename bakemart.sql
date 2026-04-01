-- ======================================
-- DATABASE CREATION
-- ======================================
CREATE DATABASE bakemart;
USE bakemart;

-- ======================================
-- CUSTOMER TABLE
-- ======================================
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(50),
    Phone_number VARCHAR(15),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Anu', '9876543210', 'Chennai'),
(2, 'Ravi', '9123456789', 'Madurai'),
(3, 'Meena', '9345678123', 'Trichy'),
(4, 'Karthik', '9988776655', 'Coimbatore'),
(5, 'Farina', '9090909090', 'Salem'),
(6, 'Devi', '7896541230', 'Namakkal'),
(7, 'Pavi', '9562147830', 'Theni'),
(8, 'Mahesh', '8523697410', 'Kanyakumari'),
(9, 'Ryan', '7536984105', 'Madurai'),
(10, 'Banu', '9876576510', 'Chennai');

-- ======================================
-- ORDERS TABLE
-- ======================================
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY,
    Customer_id INT,
    Order_date DATE,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

INSERT INTO Orders VALUES
(1, 1, '2026-03-20'),
(2, 2, '2026-03-20'),
(3, 3, '2026-03-21'),
(4, 4, '2026-03-22'),
(5, 5, '2026-03-22'),
(6, 6, '2026-03-23'),
(7, 7, '2026-03-23'),
(8, 8, '2026-03-24'),
(9, 9, '2026-03-24'),
(10, 10, '2026-03-25');

-- ======================================
-- PRODUCTS TABLE
-- ======================================
CREATE TABLE Products (
    Product_id INT PRIMARY KEY,
    Product_name VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(201, 'ChocoTruffle', 'Cake', 600),
(202, 'Red Velvet', 'Cake', 680),
(203, 'Vanilla Cookie', 'Cookie', 58),
(204, 'White Forest', 'Cake', 500),
(205, 'Wheat Bread', 'Bread', 70),
(206, 'Chocolate Donut', 'Donut', 80),
(207, 'Vanilla Donut', 'Donut', 75),
(208, 'Chocolate Cookie', 'Cookie', 50),
(209, 'Butterscotch Bread', 'Bread', 65),
(210, 'Blueberry', 'Cake', 600);

-- ======================================
-- ORDER ITEMS TABLE
-- ======================================
CREATE TABLE Order_Items (
    Order_item_id INT PRIMARY KEY,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Product_id) REFERENCES Products(Product_id)
);

INSERT INTO Order_Items VALUES
(1, 1, 201, 2),
(2, 2, 206, 3),
(3, 3, 202, 1),
(4, 4, 208, 5),
(5, 5, 203, 1),
(6, 6, 201, 2),
(7, 7, 205, 4),
(8, 8, 209, 1),
(9, 9, 206, 2),
(10, 10, 204, 1);

-- ======================================
-- PAYMENTS TABLE
-- ======================================
CREATE TABLE Payments (
    Payment_id INT PRIMARY KEY,
    Order_id INT,
    Payment_method VARCHAR(20),
    Payment_date DATE,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id)
);

INSERT INTO Payments VALUES
(1, 1, 'UPI', '2026-03-20'),
(2, 2, 'Cash', '2026-03-20'),
(3, 3, 'UPI', '2026-03-21'),
(4, 4, 'Cash', '2026-03-22'),
(5, 5, 'UPI', '2026-03-22'),
(6, 6, 'Cash', '2026-03-23'),
(7, 7, 'UPI', '2026-03-23'),
(8, 8, 'Cash', '2026-03-24'),
(9, 9, 'UPI', '2026-03-24'),
(10, 10, 'Cash', '2026-03-25');

