# 视图
SELECT cust_name,cust_contact
FROM customers,orders,orderitems
WHERE customers.cust_id = orders.cust_id
	AND orderitems.order_num = orders.order_num
	AND prod_id = 'TNT2';
	
## 为什么使用视图

## 视图的规则和限制

# 使用视图
CREATE VIEW productcustomers AS
SELECT cust_name, cust_contact, prod_id
FROM customers, orders,orderitems
WHERE customers.cust_id = orders.cust_id
	AND orderitems.order_num = orders.order_num;

SELECT * FROM productcustomers;

## 用视图重新格式化检索出的数据
SELECT Concat(RTrim(vend_name),'(',RTrim(vend_country),')') AS vend_title
FROM vendors
ORDER BY vend_name;

CREATE VIEW vendorlocation AS
SELECT Concat(RTrim(vend_name),'(',RTrim(vend_country),')') AS vend_title
FROM vendors
ORDER BY vend_name;

SELECT * 
FROM vendorlocation;

## 用视图过滤不想要的数据
CREATE VIEW customeremaillist AS 
SELECT cust_id,cust_name,cust_email
FROM customers
WHERE cust_email IS NOT NULL;

SELECT * FROM customeremaillist;

SELECT prod_id,quantity,item_price

## 使用视图和计算机字段
SELECT prod_id,quantity,item_price,quantity*item_price AS expanded_price 
FROM orderitems
WHERE order_num = 20005;

CREATE VIEW orderitemsexpended AS 
SELECT prod_id,quantity,item_price,quantity*item_price AS expanded_price 
FROM orderitems
WHERE order_num = 20005;

SELECT * FROM orderitemsexpended;

## 更新视图






