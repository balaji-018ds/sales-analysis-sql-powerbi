 1. View the complete dataset
SELECT *
FROM sales_data;


 2. Calculate total sales revenue
SELECT SUM(Amount) AS Total_Sales
FROM sales_data;


 3. Calculate total units sold
SELECT SUM(Units) AS Total_Units_Sold
FROM sales_data;


 4. Calculate total sales by product
SELECT Products, SUM(Amount) AS Product_Sales
FROM sales_data
GROUP BY Products;


 5. Calculate total sales by salesperson
SELECT `Sales Persons`, SUM(Amount) AS Total_Sales
FROM sales_data
GROUP BY `Sales Persons`;


 6. Calculate total sales by location
SELECT Place, SUM(Amount) AS Region_Sales
FROM sales_data
GROUP BY Place;


 7. Find the best-selling product based on units sold
SELECT Products, SUM(Units) AS Product_Sales
FROM sales_data
GROUP BY Products
ORDER BY Product_Sales DESC
LIMIT 1;


 8. Find the salesperson with the highest revenue
SELECT `Sales Persons`, SUM(Amount) AS Sales_Person_Sales
FROM sales_data
GROUP BY `Sales Persons`
ORDER BY Sales_Person_Sales DESC
LIMIT 1;


 9. Find the location with the highest sales revenue
SELECT Place, SUM(Amount) AS Place_Sales
FROM sales_data
GROUP BY Place
ORDER BY Place_Sales DESC
LIMIT 1;


 10. Analyze monthly sales trends
SELECT
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    SUM(Amount) AS Monthly_Sales
FROM sales_data
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Sales_Year, Sales_Month;


 11. Calculate average transaction value
SELECT AVG(Amount) AS Average_Transaction
FROM sales_data;


 12. Calculate average transaction value by product
SELECT Products, AVG(Amount) AS Product_Average_Sales
FROM sales_data
GROUP BY Products
ORDER BY Product_Average_Sales DESC;


 13. Analyze product sales by location
SELECT Products, Place, SUM(Amount) AS Sales
FROM sales_data
GROUP BY Products, Place
ORDER BY Products, Place;


 14. Find transactions above the overall average
SELECT Products, Place, Amount
FROM sales_data
WHERE Amount > (
    SELECT AVG(Amount)
    FROM sales_data
);


 15. Rank salespeople based on total sales revenue
SELECT
    `Sales Persons`,
    SUM(Amount) AS Total_Sales,
    RANK() OVER (
        ORDER BY SUM(Amount) DESC
    ) AS Sales_Rank
FROM sales_data
GROUP BY `Sales Persons`;



