# Maven Movies SQL Final Project

## Project Overview

This project analyzes the Maven Movies database using SQL to answer
business questions related to store operations, inventory, customers,
financial performance, and business stakeholders.

The project demonstrates SQL skills including:
- Multi-table JOINs
- Aggregate functions
- GROUP BY
- Filtering
- DISTINCT
- UNION
- CASE expressions
- Sorting and data summarization

## Business Questions

### 1. Store Managers and Locations
Identify the manager of each store and provide the full store address,
including street address, district, city, and country.

### 2. Inventory Details
Create a list of all inventory items, including:
- Store ID
- Inventory ID
- Film title
- Film rating
- Rental rate
- Replacement cost

### 3. Inventory by Rating
Summarize the inventory by showing how many inventory items exist for
each film rating at each store.

### 4. Replacement Cost by Film Category
Analyze inventory diversification by store and film category, including:
- Number of films
- Average replacement cost
- Total replacement cost

### 5. Customer Information
Create a list of all customers showing:
- Customer name
- Store
- Active status
- Street address
- City
- Country

### 6. Customer Lifetime Value
Analyze customer spending by showing:
- Customer name
- Total lifetime rentals
- Total payments collected

Order the results by total lifetime value, with the highest-value
customers first.

### 7. Advisors and Investors
Create one combined list of advisors and investors.

Identify whether each person is an advisor or investor and include the
company associated with each investor.

### 8. Actor Award Coverage
Analyze how well the film inventory covers awarded actors.

Calculate the percentage of actors for whom the business carries a film,
separated into:
- Actors with three award types
- Actors with two award types
- Actors with one award type

## Project Structure

```text
maven-movies-sql-final-project/
│
├── README.md
├── 01_store_managers_and_addresses.sql
├── 02_inventory_details.sql
├── 03_inventory_by_rating.sql
├── 04_replacement_cost_by_category.sql
├── 05_customer_information.sql
├── 06_customer_lifetime_value.sql
├── 07_advisors_and_investors.sql
└── 08_actor_award_coverage.sql
