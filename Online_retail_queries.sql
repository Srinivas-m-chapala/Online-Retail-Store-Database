-- ============================================================
-- ONLINE RETAIL STORE - JOIN QUERIES
-- ============================================================

-- Query 1: INNER JOIN - Retrieve all orders with corresponding customer details
SELECT 
    o.OrderID,
    c.FullName,
    c.Email,
    o.OrderDate
FROM Orders o
INNER JOIN Customers c ON o.CustomerID = c.CustomerID;


-- Query 2: INNER JOIN (Multi-Table) - Retrieve detailed order line items with product names and prices
SELECT 
    od.OrderdetailID,
    od.OrderID,
    p.ProductName,
    p.Price,
    od.Quantity,
    (p.Price * od.Quantity) AS TotalPrice
FROM Orderdetails od
INNER JOIN Products p ON od.ProductID = p.ProductID;


-- Query 3: LEFT JOIN - List all customers, including those who have not placed any orders yet
SELECT 
    c.CustomerID,
    c.FullName,
    o.OrderID,
    o.OrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;


-- Query 4: RIGHT JOIN - List all products, including those that have never been ordered
SELECT 
    p.ProductID,
    p.ProductName,
    od.OrderID,
    od.Quantity
FROM Orderdetails od
RIGHT JOIN Products p ON od.ProductID = p.ProductID;


-- Query 5: COMPREHENSIVE MULTI-TABLE JOIN - Connect all four tables to view full order transactions
SELECT 
    c.FullName,
    o.OrderID,
    o.OrderDate,
    p.ProductName,
    od.Quantity,
    p.Price
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN Orderdetails od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID;
