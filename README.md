



# 📊 SQL Exploratory Data Analysis — Layoffs

## 👋 About the Project

After cleaning the global layoffs dataset using SQL, I wanted to take the next step and **explore the data to find patterns and trends**.

In this project, I used SQL to investigate different aspects of layoffs — from companies and industries to countries, company stages, and changes over time.

Instead of just writing queries, I tried to approach the dataset by asking questions such as:

* 🏢 Which companies had the highest number of layoffs?
* 💼 Which industries were affected the most?
* 🌍 Which countries had the highest layoffs?
* 📅 Which years and months had the most layoffs?
* 🚀 Which company stages experienced the most layoffs?
* 📉 Which companies laid off 100% of their workforce?
* 🏆 Which companies and industries ranked among the top 5 each year?

The main purpose of this project was to **practice using SQL for exploratory analysis and turn raw data into meaningful findings.**

---

# 🔗 Previous Project — Data Cleaning

This project is a continuation of my previous **SQL Data Cleaning — Layoffs** project.

In the previous project, I cleaned and standardized the raw layoffs dataset and prepared it for analysis.

👉 **[View the SQL Data Cleaning Project](https://github.com/prathmeshbelwate-cmd/SQL-Data-Cleaning-Layoffs)**

### 🔄 Project Flow

```text
🗃️ Raw Layoffs Dataset
        ↓
🧹 SQL Data Cleaning
        ↓
📁 Cleaned Dataset
        ↓
🔎 Exploratory Data Analysis
        ↓
💡 Results & Insights
```

---

# 🎯 What I Wanted to Explore

I looked at the dataset from several different perspectives:

| Area                | What I wanted to find                                       |
| ------------------- | ----------------------------------------------------------- |
| 🏢 Companies        | Which companies had the highest layoffs?                    |
| 💼 Industries       | Which industries were affected the most?                    |
| 🌍 Countries        | Which countries had the highest layoffs?                    |
| 📅 Time             | How did layoffs change over time?                           |
| 🚀 Company Stage    | Which stages experienced the most layoffs?                  |
| 📉 Workforce Impact | Which companies laid off 100% of their workforce?           |
| 🏆 Yearly Rankings  | Which companies and industries were in the top 5 each year? |

---

# 🛠️ Tools & SQL Concepts Used

### Tools

* 🐬 MySQL
* 💻 MySQL Workbench
* SQL

### SQL Concepts

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* Aggregate Functions
* `MAX()`
* `MIN()`
* `SUM()`
* `COUNT()`
* CTEs
* Window Functions
* `DENSE_RANK()`
* `PARTITION BY`
* Date Functions
* Subqueries

---

# 🔍 Exploratory Analysis

## 1️⃣ Dataset Overview

I started by looking at the cleaned dataset to understand the available records and columns before moving into deeper analysis.

---

## 2️⃣ Maximum Layoffs & Highest Layoff Percentage

I checked the maximum number of employees laid off in a single record and the highest percentage of the workforce laid off.

This gives an idea of the **largest individual layoff events** in the dataset.

---

## 3️⃣ Companies with 100% Workforce Layoffs

I identified companies where **100% of their workforce was laid off**.

These records can indicate companies that effectively shut down.

I also looked at the number of employees affected to understand the scale of these events.

---

## 4️⃣ Fully Shut-Down Companies with the Highest Funding

I explored companies that laid off 100% of their workforce and compared them based on the amount of funding they had raised.

This was particularly interesting because it highlights companies that had received funding but still ended up completely shutting down.

---

## 5️⃣ Companies with the Highest Total Layoffs 🏢

I calculated the total number of layoffs for each company.

This helped identify the companies that experienced the **largest overall workforce reductions** across the dataset.

---

## 6️⃣ Time Period Covered by the Dataset 📅

I checked the earliest and latest layoff dates to understand the overall period covered by the dataset.

This provided context for the time-based analysis that followed.

---

## 7️⃣ Industries Most Affected by Layoffs 💼

I grouped the data by industry and calculated the total number of layoffs.

This helped identify **which industries experienced the greatest workforce reductions**.

---

## 8️⃣ Countries with the Highest Layoffs 🌍

I compared countries based on their total number of recorded layoffs.

This provided a geographical perspective on where layoffs were concentrated.

---

## 9️⃣ Yearly Distribution of Layoffs 📅

I grouped layoffs by year to understand how layoffs changed over time.

This helped identify the years with the highest and lowest levels of recorded layoffs.

---

## 🔟 Layoffs by Company Stage 🚀

I analyzed layoffs according to company stage.

The aim was to understand whether layoffs were more concentrated among particular stages of companies.

---

## 1️⃣1️⃣ Monthly Layoff Trends 📈

I grouped layoffs by month to get a more detailed view of how layoffs changed over time.

This helped identify months where layoff activity was particularly high or low.

---

## 1️⃣2️⃣ Rolling Total of Layoffs 📊

I calculated a cumulative or **rolling total of layoffs over time** using a window function.

This shows how the total number of layoffs accumulated month after month.

### SQL Concepts Used

* `SUM() OVER()`
* Window Functions
* `ORDER BY`
* CTE

---

## 1️⃣3️⃣ Company Layoffs by Year 🏢📅

I broke down company layoffs by year to see how individual companies' layoffs changed over time.

This makes it easier to compare company-level layoffs across different years.

---

## 1️⃣4️⃣ Top 5 Companies with the Highest Layoffs Each Year 🏆

I used `DENSE_RANK()` and `PARTITION BY` to identify the **top 5 companies with the highest layoffs for each year**.

This goes beyond finding the overall top companies and shows which companies were most affected in each individual year.

### SQL Concepts Used

* CTEs
* `DENSE_RANK()`
* `PARTITION BY`
* Window Functions
* Aggregation

---

## 1️⃣5️⃣ Top 5 Industries with the Highest Layoffs Each Year 🏭

I applied a similar ranking approach to industries.

This identifies the **top 5 industries with the highest layoffs in each year** and allows the industries most affected to be compared over time.

### SQL Concepts Used

* CTEs
* `DENSE_RANK()`
* `PARTITION BY`
* Window Functions
* `GROUP BY`

---

# 📌 Results & Key Findings

The analysis helped me identify several patterns in the layoffs dataset.

### 🏢 Company-Level Findings

* The dataset contains companies with very different scales of layoffs.
* Some companies experienced extremely large workforce reductions.
* A number of companies recorded layoffs affecting **100% of their workforce**.

### 💼 Industry-Level Findings

* Layoffs were not distributed equally across industries.
* Some industries experienced substantially higher total layoffs than others.
* Comparing industries year by year showed that the most affected industries could change over time.

### 🌍 Country-Level Findings

* Layoffs were concentrated in certain countries.
* Comparing total layoffs by country provided a clearer picture of the geographical distribution of workforce reductions.

### 📅 Time-Based Findings

* Layoff activity varied significantly across different years and months.
* The rolling-total analysis showed how layoffs accumulated over the period covered by the dataset.

### 🏆 Yearly Rankings

* The yearly ranking analysis identified the companies and industries that contributed most to layoffs in each year.
* Using window functions made it possible to rank companies and industries **within each year**, rather than only looking at the overall ranking.

> **Note:** The specific numerical results are available directly in the SQL query outputs.

---

# 🧠 What I Learned

This project helped me move beyond basic SQL queries and think more about **how SQL can be used to investigate a dataset**.

Some of the main things I practiced were:

✅ Asking analytical questions before writing queries

✅ Using aggregate functions to summarize data

✅ Grouping data by different dimensions

✅ Working with dates for time-based analysis

✅ Using CTEs to make complex queries easier to understand

✅ Using window functions for ranking and cumulative calculations

✅ Using `DENSE_RANK()` to find yearly top performers

✅ Using `PARTITION BY` to perform calculations within groups

Most importantly, I got more comfortable with the process of:

**Question → SQL Query → Result → Insight** 🔎

---

# 📁 Repository Structure

```text
SQL-Exploratory-Data-Analysis-Layoffs/
│
├── README.md
│
├── data/
│   └── layoffs_cleaned.csv
│
└── sql/
    └── layoffs_eda.sql
```

### 📄 `layoffs_cleaned.csv`

The cleaned dataset used for this analysis.

It was generated from my previous SQL data-cleaning project.

### 📄 `layoffs_eda.sql`

Contains the SQL queries used for the exploratory analysis.

### 📄 `README.md`

Documentation explaining the project, analysis, SQL concepts, and findings.

---

# 🚀 What's Next?

This project is currently focused on **SQL-based exploratory analysis**.

The next step is to use the cleaned dataset and the insights found here to build an **interactive Power BI dashboard**.

```text
🗃️ Raw Data
     ↓
🧹 Data Cleaning
     ↓
🔎 SQL EDA
     ↓
📊 Power BI Dashboard
     ↓
💡 Business Insights
```

This will help me move from simply querying data to **communicating insights visually and building a complete analytics project.**

---

# 👨‍💻 About Me

**Prathmesh Belwate**

I'm currently building my skills in **SQL and Data Analytics** through hands-on projects.

This project is part of my learning journey, where I'm focusing on understanding not only how to write SQL queries, but also **how to use data to answer meaningful questions.** 🚀

⭐ Feel free to explore the repository and the SQL queries!

[1]: https://github.com/prathmeshbelwate-cmd/SQL-Data-Cleaning-Layoffs "GitHub - prathmeshbelwate-cmd/SQL-Data-Cleaning-Layoffs: An end-to-end SQL data cleaning project based on global layoffs data, demonstrating techniques to clean, standardize, and transform raw data into a reliable dataset ready for exploratory analysis and insights. · GitHub"
