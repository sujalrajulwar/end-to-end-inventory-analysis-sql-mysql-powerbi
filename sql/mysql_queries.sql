
create database prod;
use prod;

CREATE TABLE new_table AS
SELECT 
    a.`Order Date (DD/MM/YYYY)` AS `Order_Date_DD_MM_YYYY`,
    a.`Product ID` AS `product_id`,
    a.availability,
    a.demand,
    b.`Product Name` AS `product_name`,
    b.`Unit Price ($)` AS `unit_price`
FROM
    prod.`prod+env+inventory+dataset` AS a
LEFT JOIN prod.`products+(1)` AS b
ON a.`Product ID` = b.`Product ID`;

----------------------------------------------

SELECT * FROM prod.`prod+env+inventory+dataset`;

UPDATE prod.`prod+env+inventory+dataset`
SET `Product ID` = 7
WHERE `Product ID` = 21;

UPDATE prod.`Prod+Env+Inventory+Dataset`
SET `PRODUCT ID`=11 WHERE `PRODUCT ID`=22;

-- SET SQL_SAFE_UPDATES = 0;
------------------------------------------------------

SELECT * FROM prod.`products+(1)`;




