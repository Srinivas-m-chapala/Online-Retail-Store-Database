# Online Retail Store Database Management System

## Project Overview
I built this project to manage and track an online retail store's day-to-day operations. It keeps records of customers, product inventories, customer orders, and individual order items. This project helped me practice designing relational databases and writing SQL queries to connect multiple tables together.

## Database Schema & Structure
The database is built using four main tables:

1. **Customers**: Stores basic information about people who buy items.
   * `CustomerID` (Primary Key, Auto Increment)
   * `FullName` (Not Null)
   * `Email` (Not Null, Unique)

2. **Products**: Contains the items available for sale in the store.
   * `ProductID` (Primary Key, Auto Increment)
   * `ProductName` (Not Null)
   * `Price` (Float, Not Null)

3. **Orders**: Tracks when and by whom an order was placed.
   * `OrderID` (Primary Key, Auto Increment)
   * `CustomerID` (Foreign Key referencing Customers)
   * `OrderDate` (Date, Not Null)

4. **Orderdetails**: Acts as a bridge table to track exactly which products and quantities were included in each order.
   * `OrderdetailID` (Primary Key, Auto Increment)
   * `OrderID` (Foreign Key referencing Orders)
   * `ProductID` (Foreign Key referencing Products)
   * `Quantity` (Integer, Not Null, with a check constraint ensuring quantity > 0)

## SQL Techniques & Concepts Used
* **Data Definition Language (DDL)**: Creating tables, setting up auto-incrementing primary keys, and defining table structures.
* **Constraints**: Using `PRIMARY KEY`, `FOREIGN KEY` to link tables, `UNIQUE` for emails, and `CHECK` constraints to keep quantities valid.
* **Data Manipulation Language (DML)**: Inserting sample data into all four tables to test interactions.
* **Joins**: Writing different types of SQL joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`) to pull and combine information across multiple tables.

## How to Run the Project
1. Run the schema creation script to set up the database and insert the sample records.
2. Execute the join queries file to test data retrieval and view order transactions.
  
