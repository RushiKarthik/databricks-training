Join Queries (36–45)
  -- 36
SELECT e.name, d.name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;
-- 37
SELECT p.name, d.name
FROM Project p
JOIN Department d ON p.department_id = d.department_id;
-- 38
SELECT e.name, p.name
FROM Employee e
JOIN Project p ON e.department_id = p.department_id;
-- 39
SELECT e.*, d.name
FROM Employee e
LEFT JOIN Department d ON e.department_id = d.department_id;
-- 40
SELECT d.name, e.name
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id;
-- 41
SELECT * FROM Employee e
LEFT JOIN Project p ON e.department_id = p.department_id
WHERE p.project_id IS NULL;
-- 42
SELECT e.name, COUNT(p.project_id)
FROM Employee e
JOIN Project p ON e.department_id = p.department_id
GROUP BY e.name;
-- 43
SELECT d.*
FROM Department d
LEFT JOIN Employee e ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;
-- 44
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id FROM Employee WHERE name = 'John Doe'
);
-- 45
SELECT d.name
FROM Department d
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;
Nested and Correlated Queries (46–55)-- 46
SELECT * FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);
-- 47
SELECT * FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);
-- 48
SELECT MAX(salary) 
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
-- 49
SELECT department_id
FROM Employee
GROUP BY department_id
ORDER BY COUNT(*) DESC
LIMIT 1;
-- 50
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);
-- 51
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2;
-- 52
SELECT *
FROM Employee
WHERE age > ALL (
    SELECT age FROM Employee
    WHERE department_id = (
        SELECT department_id FROM Department WHERE name = 'HR'
    )
);-- 53
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;
-- 54
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(*) >= 2
);
-- 55
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date FROM Employee WHERE name = 'Jane Smith'
);
Combined Moderate Difficulty Queries (56–65)
  -- 56
SELECT SUM(salary)
FROM Employee
WHERE YEAR(hire_date) = 2020;-- 57
SELECT department_id, AVG(salary)
FROM Employee
GROUP BY department_id
ORDER BY AVG(salary) DESC;
-- 58
SELECT department_id
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;
-- 59
SELECT *
FROM Employee
WHERE hire_date >= CURDATE() - INTERVAL 2 YEAR
ORDER BY hire_date;
-- 60
SELECT COUNT(*), AVG(salary)
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2
  ;-- 61
SELECT name, salary
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);
-- 62
SELECT name
FROM Employee
WHERE hire_date = (
    SELECT MIN(hire_date) FROM Employee
);
-- 63
SELECT d.name, COUNT(p.project_id)
FROM Department d
LEFT JOIN Project p ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY COUNT(p.project_id);
-- 64
SELECT e.*
FROM Employee e
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE department_id = e.department_id
);  
-- 65
SELECT name, salary
FROM Employee e
WHERE age > (
    SELECT AVG(age)
    FROM Employee
    WHERE department_id = e.department_id
)
