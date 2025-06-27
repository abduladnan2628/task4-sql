CREATE DATABASE hospital;

CREATE TABLE hospital (
    patient_id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    bill_amount DECIMAL(10, 2)
);

INSERT INTO hospital VALUES
(1, 'Adnan', 'Cardiology', 45, 12000.50),
(2, 'Bobby', 'Dentistry', 60, 15000.00),
(3, 'Charwick', 'Cardiology', 50, 18000.75),
(4, 'Dinesh', 'ENT', 30, 7000.00),
(5, 'Elizabeth', 'Neurology', 55, 14000.00);

SELECT * FROM hospital;

SELECT 
  COUNT(*) AS total_patients,
  AVG(age) AS avg_age,
  SUM(bill_amount) AS total_bills,
  MIN(age) AS youngest,
  MAX(age) AS oldest
FROM hospital;

SELECT 
    department,
    COUNT(*) AS patient_count,
    AVG(bill_amount) AS avg_bill
FROM hospital
GROUP BY department;

SELECT 
    department,
    COUNT(*) AS patient_count,
    SUM(bill_amount) AS total_department_bill
FROM hospital
GROUP BY department
HAVING COUNT(*) > 1;


