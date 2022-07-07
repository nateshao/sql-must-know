-- 第 9 课 汇总数据


AVG() 返回某列的平均值
COUNT() 返回某列的行数
MAX() 返回某列的最大值
MIN() 返回某列的最小值
SUM() 返回某列值之和

-- 下面的例子使用 AVG()返回 Products 表中所有产品的平均价格：

SELECT AVG(prod_price) AS avg_price FROM Products; 

SELECT COUNT(prod_price) AS avg_price FROM Products; 
SELECT MAX(prod_price) AS avg_price FROM Products; 
SELECT MIN(prod_price) AS avg_price FROM Products; 
SELECT SUM(prod_price) AS avg_price FROM Products; 

SELECT AVG(prod_price) AS avg_price FROM Products WHERE vend_id = 'DLL01'; 

SELECT COUNT(*) AS num_cust FROM Customers; 

SELECT COUNT(cust_email) AS num_cust FROM Customers; 

















