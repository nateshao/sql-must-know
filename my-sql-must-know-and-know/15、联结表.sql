# 联结
## 关系表
## 为什么要使用联结

# 创建联结
SELECT vend_name,prod_name,prod_price
FROM vendors,products
WHERE vendors.vend_id = products.vend_id
ORDER BY vend_name,prod_name;

SELECT vend_name,prod_name,prod_price
FROM vendors,products
ORDER BY vend_name,prod_name;	# 笛卡尔积，从结果可以看出没有WHERE语句的联结是不正确的过滤条件

## 内部联结
SELECT vend_name,prod_name,prod_price
FROM vendors INNER JOIN products
ON vendors.vend_id = products.vend_id;

## 联结多个表
SELECT prod_name,vend_name,prod_price,quantity
FROM orderitems,products,vendors
WHERE products.vend_id = vendors.vend_id
	AND orderitems.prod_id = products.prod_id
	AND order_num = 20005;

SELECT cust_name,cust_contact
FROM customers
WHERE cust_id IN (
			SELECT cust_id
			FROM orders
			WHERE order_num IN (
						SELECT order_num
						FROM orderitems
						WHERE prod_id = 'TNT2'));
						
SELECT cust_name,cust_contact
FROM customers,orders,orderitems
WHERE customers.cust_id = orders.cust_id
	AND orderitems.order_num = orders.order_num
	AND prod_id = 'TNT2';