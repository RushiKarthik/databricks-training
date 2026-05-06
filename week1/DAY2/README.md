#  Day 2 – SQL Practice (Joins, Subqueries & Aggregations)

##  Overview

Day 2 focuses on strengthening SQL skills with:

* **JOIN operations**
* **Nested and Correlated Subqueries**
* **Aggregate functions with conditions**
* **Moderate-level combined queries**

These exercises improve understanding of how data from multiple tables can be combined and analyzed effectively.

---

## Topics Covered

###  1. Join Queries (36–45)

Practiced different types of joins to retrieve and combine data from multiple tables:

* **INNER JOIN**

  * Retrieve matching records between `Employee`, `Department`, and `Project`.
* **LEFT JOIN**

  * Include all records from one table and matched records from another.
* **JOIN with GROUP BY**

  * Count projects per employee.
* **Filtering with NULL**

  * Identify employees without projects.
  * Find departments without employees.
* **Subquery inside WHERE**

  * Retrieve employees from the same department as a specific employee.
* **Aggregation with ORDER BY & LIMIT**

  * Find department with highest average salary.

---

###  2. Nested & Correlated Queries (46–55)

Learned how to use subqueries for advanced filtering:

* **Scalar Subqueries**

  * Find employees with maximum or above-average salary.
* **Correlated Subqueries**

  * Compare employee salary with department average.
* **Ranking Logic**

  * Retrieve second or third highest salary.
* **ALL / IN Operators**

  * Compare values across subsets.
* **GROUP BY with HAVING**

  * Filter departments based on average salary or project count.

---

###  3. Combined Moderate Queries (56–65)

Applied multiple concepts together:

* **Date Functions**

  * Filter employees based on hire year or recent hires.
* **Aggregations**

  * Calculate total salary, average salary per department.
* **Advanced Filtering**

  * Employees earning above department average.
* **Minimum / Maximum Logic**

  * Find earliest hired employee.
* **JOIN + GROUP BY**

  * Count projects per department.
* **Correlated Subqueries**

  * Identify highest-paid employee in each department.
  * Compare employee age with department average.

---

##  Key Learnings

* Efficient use of **JOINs** to combine relational data.
* Importance of **subqueries** for dynamic filtering.
* Practical use of **aggregate functions** (`COUNT`, `AVG`, `SUM`, `MAX`, `MIN`).
* Handling **NULL values** in joins.
* Writing **optimized queries** for real-world scenarios.

---


By completing Day 2 tasks, you can:

* Write complex SQL queries with confidence.
* Analyze relational datasets efficiently.
* Apply SQL concepts to solve business problems.


