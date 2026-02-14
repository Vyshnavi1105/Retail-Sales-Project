use kiranaretaildb

select * from Kirana_Retail_Sales_Data;


select TOP 10*
from Kirana_Retail_Sales_Data;

--calculated overall revenue using aggregate functions
select SUM(Total_Amount)AS Total_Sales
from Kirana_Retail_Sales_Data;	

--category-wise sales
select Category,
sum(Total_Amount)as Category_Sales
from Kirana_Retail_Sales_Data
group by Category
Order by Category_Sales desc;


--top selling products
select Product_Name,
sum(Quantity)as Total_Quantity_Sold
from Kirana_Retail_Sales_Data
group by Product_Name
Order by Total_Quantity_Sold desc;

--peak sales data
SELECT TOP 1 Order_Date,
SUM(Total_Amount) Revenue
FROM Kirana_Retail_Sales_Data
GROUP BY Order_Date
ORDER BY Revenue DESC;

--daily sales
SELECT Order_Date,
SUM(Total_Amount) Revenue
FROM Kirana_Retail_Sales_Data
GROUP BY Order_Date;

--Avg order value
SELECT AVG(Total_Amount) Avg_Order_Value
FROM Kirana_Retail_Sales_Data;

--category contribution
SELECT Category,
SUM(Total_Amount) Revenue
FROM Kirana_Retail_Sales_Data
GROUP BY Category;

--top customers
SELECT Customer_ID, SUM(Total_Amount) Spending
FROM Kirana_Retail_Sales_Data
GROUP BY Customer_ID
ORDER BY Spending DESC;

--most used payment method
SELECT Payment_Mode, COUNT(*) Transactions
FROM Kirana_Retail_Sales_Data
GROUP BY Payment_Mode
ORDER BY Transactions DESC;

--monthly sales trend
SELECT MONTH(Order_Date) AS Month,
SUM(Total_Amount) Revenue
FROM Kirana_Retail_Sales_Data
GROUP BY MONTH(Order_Date)
ORDER BY Month;

--Highest revenue product
SELECT Product_Name, SUM(Total_Amount) Revenue
FROM Kirana_Retail_Sales_Data
GROUP BY Product_Name
ORDER BY Revenue DESC;







