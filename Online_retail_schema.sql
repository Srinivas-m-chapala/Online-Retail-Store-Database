CREATE Database online_retail_db;

Use online_retail_db;

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE
);



CREATE TABLE Products (
ProductID INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(100) NOT NULL,
Price FLOAT(10, 2) NOT NULL
);


CREATE TABLE Orders (
OrderID INT PRIMARY KEY AUTO_INCREMENT,
CustomerID INT,
OrderDate DATE NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


CREATE TABLE Orderdetails (
  Oderdetail INT PRIMARY KEY AUTO_INCREMENT,
  OrderID INT,
  ProductID INT,
  Quantity INT NOT NULL,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



INSERT INTO Customers (FullName, Email)
VALUES
('Srinivas', 'srinu@gmail.com'),
('Ruchitha', 'ruchitha@gmail.com'),
('Prathyusha', 'prathyusha@gmail.com');



INSERT INTO Products (ProductName, Price)
VALUES
('Laptop', 999.99),
('Smartphone', 499.99),
('Tablet', 299.99);


INSERT INTO Orders (CustomerID, OrderDate)
VALUES
(1, '2024-09-01'),
(2, '2024-09-02');



INSERT INTO Orderdetails (OrderID, ProductID, Quantity)
VALUES
(1,1,9),
(2,3,11),
(1,2,17);
