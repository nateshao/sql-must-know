# 组合查询

# 创建组合查询
## 使用UNION
SELECT vend_id,prod_id,prod_price
FROM products
WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id , prod_price
FROM products
WHERE vend_id IN (1001,1002);

## UNION规则

## 包含或取消重复的行
SELECT vend_id,prod_id,prod_price
FROM products
WHERE prod_price <= 5
UNION ALL
SELECT vend_id, prod_id , prod_price
FROM products
WHERE vend_id IN (1001,1002);

## 对组合查询结果排序
SELECT vend_id,prod_id,prod_price
FROM products
WHERE prod_price <= 5
UNION
SELECT vend_id, prod_id , prod_price
FROM products
WHERE vend_id IN (1001,1002)
ORDER BY vend_id , prod_price;