-- 分组GROUP BY 子句和 HAVING 子句
SELECT COUNT(*) AS num_prods FROM products WHERE vend_id = 'DLL01'; 


SELECT vend_id,COUNT(*) AS num_prods FROM products GROUP BY  vend_id;

-- ，WHERE过滤行，而 HAVING 过滤分组
SELECT cust_id,COUNT(*) AS orders FROM orders GROUP BY cust_id HAVING COUNT(*) > 2; 

-- 具有两个以上产品且其价格大于等于 4 的供应商
SELECT vend_id,COUNT(*) AS num_prods FROM Products WHERE prod_price > 4 GROUP BY vend_id HAVING COUNT(*) >2;
-- 检索包含三个或更多物品的订单号和订购物品的数目
SELECT order_num, COUNT(*) AS items
FROM OrderItems 
GROUP BY order_num HAVING COUNT(*) >3
ORDER BY order_num,items;
-- 使用子查询


