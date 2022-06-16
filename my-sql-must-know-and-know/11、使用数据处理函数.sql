# 文本处理函数
SELECT vend_name,Upper(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

SELECT cust_name,cust_contact
FROM customers
WHERE cust_contact='Y, Lie';	# 因为数据库本身数据输入错误，Lie 应该是Lee，这个时候需要使用到soundex()

SELECT cust_name,cust_contact
FROM customers
WHERE Soundex(cust_contact) = Soundex('Y, Lie');

# 日期和时间处理函数
SELECT cust_id, order_num
FROM orders
WHERE order_date='2005-09-01';

SELECT cust_id,order_num
FROM orders
WHERE DATE(order_date) = '2005-09-01';

SELECT cust_id,order_num
FROM orders
WHERE DATE(order_date) BETWEEN '2005-09-01' AND '2005-09-30';

SELECT cust_id,order_num
FROM orders
WHERE Year(order_date)=2005 AND Month(order_date)=9;

# 数值型处理函数
