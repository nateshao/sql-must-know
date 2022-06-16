# 聚集函数
## AVG() 函数
SELECT AVG(prod_price) AS avg_price
FROM products;

SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 1003;

## COUNT() 函数
SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS max_price
FROM customers;		# NULL 值，如果指定列的值为NULL，则忽视不计，如果为*，则需要进行计数

## MAX() 函数
SELECT MAX(prod_price) AS max_price
FROM products;

## MIN()函数
SELECT MIN(prod_price) AS min_price
FROM products;

## SUM() 函数
SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS total_price
FROM orderitems
WHERE order_num = 20005;

# 聚集不同值
SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id=1003;

# 组合聚集函数
SELECT COUNT(*) AS num_items,
			 MIN(prod_price) AS price_min,
			 MAX(prod_price) AS price_max,
			 AVG(prod_price) AS price_avg
FROM products;
