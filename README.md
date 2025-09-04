# Help Desk Ticket Dashboard
A simple IT project that demonstrates how to:

- Store IT helpdesk tickets in PostgreSQL database
- Query data with SQL to answer common IT support questions
- Build a Power BI dashboard(web version) to visualize ticket trends and KPIs
- Share the whole project in a clean GitHub repo

## Tools Used
- PostgreSQL -> database to hold the ticket data
- VS Code -> editor for SQL and documentation
- Power BI Service (Web) -> dashboards and visuals
- Git & Github -> version control and portfolio housing

## Project Structure

        ``` tree
            .
            ├── README.md                > Project documentation (this file)
            ├── data:
            │   ├── tickets.csv          > Exported dataset (for Power BI Service)
            │   └── tickets.sql          > SQL script to create and seed the tickets table
            ├── sample_queries.sql       > Example SQL queries for analysis
            └── screenshots:             > Example Power BI dashboard screenshot
                ├── assigned_screenshot.png
                └── sumof_screenshot.png    

## DataSets

The tickets table has:
- ticket_id -> auto-increment ID
- issue_type -> e.g, Password Reset, Network Issue
- priority -> Low/Medium/High
- assigned_to -> technician's name
- created date -> when ticket is resolved (NULL if still open)
- status -> Open or Closed

## Dashboard Features

- KPIs (cards): total tickets, closed tickets, avg resolution time
- Bar chart: tickets by issue type
- Pie chart: tickets by priority
- Line chart: open vs closed tickets over time
- Table: current open tickets with details

## How to Run

1. Set up PostgreSQL
        - Create a database called helpdesk
        - Run data/tickets.sql to create and load sample data

            ``` bash 
                psql -d helpdesk -f data/tickets.sql

2. Export dataset to CSV (if using Power BI Service)

    ``` sql 
        \copy (SELECT * FROM tickets) TO 'data/tickets.csv' WITH CSV HEADER;

3. Upload to Power BI Service (Web)
        - Go to app.powerbi.com
        - Get Data → Upload tickets.csv
        - Build visuals (bar, pie, line, KPI cards, table)

4. Save screenshot of the dashboard → put it in screenshot folder: helpdesk-dashboard/screentshots: 

## Example Dashboard

A screenshot showing the total tickets assigned to each employee
    [!AssignedTo](https://github.com/IfeAyo/helpdesk-dashboard/blob/346f94c9440eb73eb33d09d5269cb76d67086186/screenshots%3A/AssignedTo.png)

A screenshot showing the sum of tickets by Issues, Priority and Status
    !(/Users/peace/helpdesk-dashboard/screenshots:/IssuePriorityStatus.png)  

## Why This Project Matters

This project shows that I can:

- Model IT support data in SQL

- Write queries to answer real support questions

- Turn raw data into clear dashboards in Power BI

- Document and share projects professionally on GitHub

It’s a practical example of bridging IT operations + analytics, a skill set useful in Help Desk, SysAdmin, and Security Analyst roles.
         
