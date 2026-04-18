# 🚢 Titanic Data Analysis Project

## 📌 Project Overview

This project focuses on cleaning and analyzing the Titanic dataset to uncover patterns that influenced passenger survival. The analysis highlights how factors such as gender, class, age, and family structure impacted survival rates.

---

## 🎯 Objectives

* Clean and prepare a real-world messy dataset
* Perform feature engineering to extract meaningful variables
* Analyze survival patterns across different passenger groups
* Present insights using Excel, Python (Pandas), and SQL

---

## 🛠️ Tools & Technologies

* **Excel** → Data cleaning & dashboard
* **Python (Pandas)** → Data processing & analysis
* **SQL (SQLite)** → Data querying
* **Git & GitHub** → Version control & project sharing

---

## 🧹 Data Cleaning Process

* Handled missing values in `Age` using median imputation
* Filled missing `Embarked` values using mode
* Extracted **Title** (Mr, Mrs, Miss, etc.) from passenger names
* Created new features:

  * `family_size`
  * `is_alone`
  * `age_group`
* Removed duplicates and ensured correct data types

---

## 📊 Key Analysis & Insights

### 🔹 Survival by Gender

* Female passengers had a significantly higher survival rate than males

### 🔹 Survival by Class

* First-class passengers had the highest survival rate
* Third-class passengers were the most affected

### 🔹 Family Influence

* Passengers traveling with family had better survival chances than those alone

### 🔹 Age Factor

* Children had a higher survival rate compared to adults

### 🔹 Title-Based Insights

* Titles like **Mrs** and **Miss** showed higher survival rates
* Titles like **Mr** had lower survival rates

---

## 🗂️ Project Structure

```
titanic-analysis/
│
├── data/
│ ├── raw_titanic.csv
│ └── cleaned_titanic.csv
│
├── titanic.db
├── analysis.sql
├── analysis.py
├── excel_dashboard.xlsx
└── README.md
```

---

## 🚀 How to Use This Project

1. Open the dataset from the `data/` folder
2. Run `analysis.py` for Python-based analysis
3. Execute queries in `analysis.sql` using SQLite
4. Explore the Excel dashboard for visual insights

---

## 📈 Future Improvements

* Add advanced statistical analysis
* Build an interactive dashboard (Power BI or Tableau)
* Integrate machine learning for survival prediction

---

## 💡 Key Takeaway

This project demonstrates the importance of data cleaning and feature engineering in uncovering meaningful insights from real-world datasets.
