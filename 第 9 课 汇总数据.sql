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

-- 只对具有电子邮件地址的客户计数
SELECT COUNT(cust_email) AS num_cust FROM Customers; 

-- 检索所订购物品的总数（所有 quantity 值之和）
SELECT SUM(quantity) AS items_ordered FROM OrderItems WHERE order_num = 20005; 
-- 合计每项物品的 item_price*quantity，得出总的订单金额：

-- SELECT 语句可根据需要包含多个聚集函数

SELECT COUNT(*) AS num_items,
 MIN(prod_price) AS price_min,
 MAX(prod_price) AS price_max,
 AVG(prod_price) AS price_avg
FROM Products;

-- 返回供应商 DLL01 提供的产品数目
SELECT COUNT(*) AS num_prods
FROM Products
WHERE vend_id = 'DLL01';

SELECT vend_id,COUNT(*) AS num_prds FROM products GROUP BY vend_id;

-- SUM()也可以用来合计计算值。在下面的例子中，合计每项物品的item_price*quantity，得出总的订单金额

SELECT SUM(item_price*quantity) AS total_price 
FROM OrderItems 
WHERE order_num = 20005; 



























