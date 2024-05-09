# Write your MySQL query statement below
SELECT DISTINCT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT DISTINCT sp.sales_id
    FROM SalesPerson sp
    JOIN Orders o ON sp.sales_id = o.sales_id
    JOIN Company c ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);