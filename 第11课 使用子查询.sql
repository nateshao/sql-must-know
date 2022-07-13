-- 第 11 课 使用子查询
SELECT order_num
FROM OrderItems
WHERE prod_id = 'RGAN01';


-- (1) 检索包含物品 RGAN01 的所有订单的编号。
SELECT order_num FROM OrderItems WHERE prod_id = 'RGAN01';

-- (2) 检索具有前一步骤列出的订单编号的所有顾客的 ID。
SELECT id FROM 


-- (3) 检索前一步骤返回的所有顾客 ID 的顾客信息。



-- 下一步查询与订单 20007 和 20008 相关的顾客 ID
SELECT cust_id
FROM Orders
WHERE order_num IN (20007,20008);

SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num FROM OrderItems WHERE prod_id = 'RGAN01');


SELECT cust_name, cust_contact FROM Customers
WHERE cust_id IN (SELECT cust_id
 FROM Orders
 WHERE order_num IN (SELECT order_num
 FROM OrderItems
 WHERE prod_id = 'RGAN01'));

-- 顾客 1000000001 的订单进行计数
SELECT COUNT(*) AS orders
FROM Orders
WHERE cust_id = '1000000001';

SELECT cust_name,cust_state,
 (SELECT COUNT(*) FROM Orders WHERE cust_id = cust_id) AS orders FROM Customers
ORDER BY cust_name;

SELECT vend_name, prod_name, prod_price
FROM Vendors, Products
WHERE Vendors.vend_id = Products.vend_id;


SELECT vend_name, prod_name, prod_price FROM Vendors, Products;

SELECT vend_name, prod_name, prod_price FROM Vendors INNER JOIN Products
 ON Vendors.vend_id = Products.vend_id;



SELECT prod_name, vend_name, prod_price, quantity
FROM OrderItems, Products, Vendors
WHERE Products.vend_id = Vendors.vend_id
 AND OrderItems.prod_id = Products.prod_id
 AND order_num = 20007;



SELECT cust_name, cust_contact FROM Customers, Orders, OrderItems
WHERE Customers.cust_id = Orders.cust_id AND OrderItems.order_num = Orders.order_num AND prod_id = 'RGAN01';


-- 第十四
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state IN ('IL','IN','MI');


SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_name = 'Fun4All';

-- 上面两条语句相加
SELECT cust_name, cust_contact, cust_email FROM Customers WHERE cust_state IN ('IL','IN','MI')
UNION
SELECT cust_name, cust_contact, cust_email FROM Customers WHERE cust_name = 'Fun4All';

-- == 
SELECT cust_name, cust_contact, cust_email FROM Customers WHERE cust_state IN ('IL','IN','MI') OR cust_name = 'Fun4All';


SELECT cust_name, cust_contact, cust_email FROM Customers WHERE cust_state IN ('IL','IN','MI')
UNION ALL
SELECT cust_name, cust_contact, cust_email FROM Customers WHERE cust_name = 'Fun4All';

















