create database test_env;
use test_env;


select * from [dbo].[Products];
select * from [dbo].[Test+Environment+Inventory+Dataset];

select distinct product_id from [dbo].[Products];
select distinct order_date_dd_mm_yyyy from [dbo].[Test+Environment+Inventory+Dataset];

-----------------------------------------------

select 
a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.Demand,
b.[Product_Name],b.[Unit_Price]
from [dbo].[Test+Environment+Inventory+Dataset] as a 
left join [dbo].[Products] as b on a.product_id=b.product_id; 

---------------------------------------------------------

select * into new_table from
(select 
a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.Demand,
b.[Product_Name],b.[Unit_Price]
from [dbo].[Test+Environment+Inventory+Dataset] as a 
left join [dbo].[Products] as b on a.product_id=b.product_id
) x;

-----------------------------------------------------------------

select * from new_table

-----------------------------------------------

create database PROD;
use PROD;

select * from [dbo].[Prod+Env+Inventory+Dataset];
SELECT * FROM [dbo].[Products+(1)];

SELECT DISTINCT Order_Date_DD_MM_YYYY
FROM [dbo].[Prod+Env+Inventory+Dataset]
WHERE Order_Date_DD_MM_YYYY IS NULL OR Order_Date_DD_MM_YYYY = '';

SELECT DISTINCT PRODUCT_ID
FROM [dbo].[Prod+Env+Inventory+Dataset]
--WHERE Order_Date_DD_MM_YYYY IS NULL OR Order_Date_DD_MM_YYYY = '';

--- 21 -->7
--- 22 -->11
UPDATE [dbo].[Prod+Env+Inventory+Dataset]
SET PRODUCT_ID=7 WHERE PRODUCT_ID=21;

UPDATE [dbo].[Prod+Env+Inventory+Dataset]
SET PRODUCT_ID=11 WHERE PRODUCT_ID=22;

select * into new_table from
(select 
a.[Order_Date_DD_MM_YYYY],a.[Product_ID],a.[Availability],a.Demand,
b.[Product_Name],b.[Unit_Price]
from [dbo].[Prod+Env+Inventory+Dataset] as a 
left join [dbo].[Products+(1)] as b on a.product_id=b.product_id
) x;



