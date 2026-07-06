# Inventory Management System
## Order Management Module
> Part of a group Inventory Management System (DBMS Course Project)
> My responsibility: Order Management module (database design + frontend workflow)

## My Contribution
Designed the database schema for the order management module and built
the frontend workflow for customer-facing order operations.

## Database Schema
Four tables designed and implemented:

- **Orders**: Tracks customer orders with status 
  (pending/completed/returned) and FK reference to Products
- **Returns**: Logs return requests with reason and FK reference to Orders
- **SalesReport**: Aggregates quantity sold and revenue per product
- **Products**: Product catalog (shared table, read by this module)

Foreign key constraints with CASCADE DELETE ensure referential integrity
across all tables.

## Frontend Workflow (UI Mockup)
Static HTML pages demonstrating the customer order flow:

- view_products.html: Product listing with selection
- cart.html: Cart review before checkout
- place_order.html: Delivery address and order confirmation
- cancel_order.html: Order cancellation by Order ID
- return_order.html: Return request with reason
- dashboard.html: Central navigation hub

## Tech Stack
- Database: MySQL (phpMyAdmin)
- Frontend: HTML, CSS
- Backend connection: PHP (connection.php configured for localhost)

## Database Setup
Import `database/order_management.sql` into phpMyAdmin.

Required tables: Orders, Products, Returns, SalesReport

## Note
This repo contains only my module. The complete project includes
Admin and Salesperson modules built by other team members.
The frontend pages are UI mockups demonstrating the intended workflow.
No PHP query processors were part of my assigned module scope.
