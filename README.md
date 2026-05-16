# 🏏 Cricket Data Analysis Using SQL

## 📌 Project Overview

This project focuses on analyzing cricket match data using SQL queries. The analysis covers team performance, match statistics, toss decisions, venue analysis, player achievements, scoring trends, and win patterns.

The main objective of this project is to practice SQL concepts such as:

* Database creation
* Data cleaning and transformation
* Aggregate functions
* Grouping and sorting
* Filtering data
* Date formatting
* Analytical SQL queries

---

# 📂 Project Structure

```bash
Cricket-Data-Analysis-Using-SQL/
│
├── Cricket data analysis using SQL.sql
├── README.md
```

---

# 🛠️ Technologies Used

* SQL
* MySQL

---

# 🗄️ Database Setup

## Create Database

```sql
CREATE DATABASE cricketdb;
USE cricketdb;
```

---

# 🧹 Data Cleaning Performed

The following cleaning steps were applied to the dataset:

* Converted `start_date` and `end_date` into proper DATE format.
* Removed unnecessary timestamp values.
* Modified column datatype using `ALTER TABLE`.

Example:

```sql
UPDATE cricket_data
SET start_date = STR_TO_DATE(start_date, '%d-%m-%Y');
```

---

# 📊 SQL Analysis Performed

## Match Analysis

* Total matches played
* Matches played per season
* Highest and lowest scores
* Highest successful run chase
* Close matches analysis

## Team Performance Analysis

* Team with most wins
* Top 5 winning teams
* Toss-winning teams analysis
* Team-wise win percentage
* Home vs away team performance

## Toss Analysis

* Toss winner vs match winner
* Batting vs bowling decision analysis

## Player Analysis

* Most Player of the Match awards
* Top 5 Player of the Match winners

## Venue Analysis

* Venues hosting maximum matches

---

# 📈 Key SQL Concepts Used

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `COUNT()`
* `AVG()`
* `MAX()`
* `MIN()`
* `ALTER TABLE`
* `UPDATE`
* `STR_TO_DATE()`
* Subqueries

---

# 🚀 Sample Queries

## Top 5 Winning Teams

```sql
SELECT winner, COUNT(*) AS wins
FROM cricket_data
GROUP BY winner
ORDER BY wins DESC
LIMIT 5;
```

## Average Score Per Match

```sql
SELECT AVG(first_inning_score) AS avg_first_score,
       AVG(second_inning_score) AS avg_second_score
FROM cricket_data;
```

---

# 🎯 Project Objectives

* Improve SQL querying skills
* Understand sports data analysis
* Perform real-world analytical queries
* Practice data cleaning in SQL
* Build portfolio-ready SQL projects

---

# 📌 Future Improvements

* Add advanced SQL queries using joins and window functions
* Build dashboards using Power BI or Tableau
* Create visualizations for team performance
* Automate reporting using Python

---

# 🙋‍♂️ Author

**Akshay Besekar**

* MBA in Business Analytics
* Aspiring Data Analyst
* Skilled in SQL, Python, Power BI, and Data Visualization

---

# ⭐ If You Like This Project

Give this repository a star ⭐ and share your feedback.
