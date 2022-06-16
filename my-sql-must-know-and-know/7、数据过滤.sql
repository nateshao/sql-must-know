# 本章将讲授如何组合WHERE子句以简历功能更强的更高级的搜索条件
# 并且将学习如何使用NOT 和 IN 操作符

# AND操作符
SELECT prod_id,prod_name,prod_price
FROM products
WHERE vend_id = 1003 AND prod_price <= 10;

# OR 操作符
SELECT prod_name,prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003 ;

# 计算次序
SELECT prod_name,prod_price
FROM products
WHERE (vend_id = 1002 OR vend_id = 1003) AND prod_price >= 10;

# IN操作符
SELECT prod_name,prod_price
FROM products
WHERE vend_id IN (1002,1003)
ORDER BY prod_name;

SELECT prod_name,prod_price
FROM products
WHERE vend_id = 1002 OR vend_id = 1003
ORDER BY prod_name;

# NOT 操作符
SELECT prod_name,prod_price
FROM products
WHERE vend_id NOT IN (1002,1003)
ORDER BY prod_name;
