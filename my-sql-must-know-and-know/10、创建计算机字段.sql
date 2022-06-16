# 计算机字段：计算字段是运行时在SELECT语句内创建的，并不实际存在于数据库表中

# 拼接字段
SELECT Concat(vend_name,'(',vend_country,')')
FROM vendors
ORDER BY vend_name;

SELECT Concat(RTrim(vend_name),'(',RTrim(vend_country),')')
FROM vendors
ORDER BY vend_name;

SELECT Concat(RTrim(vend_name),'(',RTrim(vend_country),')') AS vend_title
FROM vendors
ORDER BY vend_name;

# 执行算数计算
SELECT prod_id,quantity,item_price
FROM orderitems
WHERE order_num = 20005;

SELECT prod_id,quantity,item_price,quantity * item_price AS expanded_price
FROM orderitems
WHERE order_num = 20005;



