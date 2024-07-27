# Food Ordering System Database

This repository contains the SQL scripts for a food ordering system database. The database includes various tables to manage and store information related to food orders, staff, inventory, and more. The tables and their relationships are designed to handle the operations of a food ordering system efficiently.

## Database Structure

The database consists of the following tables:

- **Invoice**: Stores information about invoices generated for orders.
- **Cart_food**: Links food items to carts, indicating which items are in a particular cart.
- **Cart**: Stores information about user carts.
- **Food**: Contains details about different food items available for order.
- **Inventory**: Manages inventory data for food items.
- **Order_**: Keeps track of orders placed by customers.
- **Staff**: Stores information about staff members.
- **Reservation**: Manages table reservations made by customers.
- **Table**: Contains details about tables available in the restaurant.
- **Customer**: Stores information about customers.
- **Chef**: Stores information about chefs working in the restaurant.
- **Admin**: Contains details about admin users.
- **Waiter**: Stores information about waiters serving in the restaurant.
- **Meal**: Contains details about meal items.
- **Dessert**: Contains details about dessert items.
- **Beverage**: Contains details about beverage items

## Features

- **Comprehensive Table Design**: The database includes tables for managing various aspects of a food ordering system, from customer orders to staff information and inventory management.
- **Relationships and Constraints**: Proper relationships and constraints are defined to ensure data integrity and consistency across the database.
- **Efficient Data Management**: The database design supports efficient data management and retrieval for the food ordering system.

## Requirements

- **Database System**: This SQL script is compatible with any SQL-compliant database system such as MySQL, PostgreSQL, or Oracle Database.

## How to Use

1. **Set Up the Database**:
   - Ensure you have a SQL-compliant database system installed and running.
   - Create a new database for the food ordering system.

2. **Execute the SQL Script**:
   - Open your database management tool (e.g., MySQL Workbench, pgAdmin, Oracle SQL Developer).
   - Run the provided SQL script (`Food_Ordering_System.sql`) to create the necessary tables and constraints.

## Included Files

- **Food_Ordering_System.sql**: The main SQL script file for creating the database tables and constraints.
- **Data Dictionary.docx**: A Word document that describes the structure and details of the database tables.
- **DT Assignment.accdb**: The Access database file containing the database.
- **EER_Diagram.drawio**: The Enhanced Entity-Relationship (EER) diagram in Draw.io format.
- **ERD_Diagram.drawio**: The Entity-Relationship (ERD) diagram in Draw.io format.

