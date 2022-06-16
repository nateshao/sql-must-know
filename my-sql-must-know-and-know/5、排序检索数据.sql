# 排序数据
SELECT prod_name
FROM products
ORDER BY prod_name;

# 按多个列排序. 先按照prod_price排序，再按照prod_name进行排序
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY prod_price, prod_name;

# 指定排序的方向
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY prod_price desc, prod_name;

# 对多个列进行排序
SELECT prod_id,prod_price,prod_name
FROM products
ORDER BY prod_price DESC, prod_name;

# 对于数据库是否区分大小写取决于数据库的设置，这些问题并不是理论问题

# 使用ORDER BY 和 LIMIT 的组合，能够找到一个列中最高或最低的值
SELECT prod_price
FROM products
ORDER BY prod_price DESC
LIMIT 1;


