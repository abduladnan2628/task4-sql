Here's a clean and professional `README.md` for your **Hospital Database Project** — perfect for uploading to GitHub:

---

````markdown
# 🏥 Hospital Database Project

This project demonstrates the creation and querying of a simple **hospital database** using SQL. It includes table creation, data insertion, and data summarization using **aggregate functions**, **grouping**, and **filtering** with `HAVING`.

---

## 📂 Database Structure

### 🎯 Database Name: `hospital`

### 🗂️ Table: `hospital`

| Column Name   | Data Type        | Description                |
|---------------|------------------|----------------------------|
| `patient_id`  | INT              | Unique patient identifier  |
| `name`        | VARCHAR(100)     | Patient's full name        |
| `department`  | VARCHAR(50)      | Medical department         |
| `age`         | INT              | Age of patient             |
| `bill_amount` | DECIMAL(10, 2)   | Total billing amount (₹)   |

---

## 💾 Sample Data

```sql
INSERT INTO hospital VALUES
(1, 'Adnan', 'Cardiology', 45, 12000.50),
(2, 'Bobby', 'Dentistry', 60, 15000.00),
(3, 'Charwick', 'Cardiology', 50, 18000.75),
(4, 'Dinesh', 'ENT', 30, 7000.00),
(5, 'Elizabeth', 'Neurology', 55, 14000.00);
````

---

## 📊 SQL Queries & Concepts

### ✅ Aggregate Functions

```sql
SELECT 
  COUNT(*) AS total_patients,
  AVG(age) AS avg_age,
  SUM(bill_amount) AS total_bills,
  MIN(age) AS youngest,
  MAX(age) AS oldest
FROM hospital;
```

---

### ✅ Group by Department

```sql
SELECT 
    department,
    COUNT(*) AS patient_count,
    AVG(bill_amount) AS avg_bill
FROM hospital
GROUP BY department;
```

---

### ✅ Filter Groups Using `HAVING`

```sql
SELECT 
    department,
    COUNT(*) AS patient_count,
    SUM(bill_amount) AS total_department_bill
FROM hospital
GROUP BY department
HAVING COUNT(*) > 1;
```

---

## 📌 Concepts Covered

* Database creation
* Table creation with appropriate data types
* Inserting records
* Using aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
* Categorizing data with `GROUP BY`
* Filtering grouped data using `HAVING`

---

## 📁 File Structure

```
hospital-database/
├── create_database.sql
├── insert_data.sql
├── aggregate_queries.sql
└── README.md
```

---

## 🔗 License

This project is open-source and available under the [MIT License](LICENSE).

```

---

Let me know if you'd like me to generate the `.sql` files or a zipped GitHub repo structure too.
```
