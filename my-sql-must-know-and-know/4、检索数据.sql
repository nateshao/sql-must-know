# 检索单个列
SELECT prod_id
FROM products;

# 检索多个列
SELECT prod_id,prod_name,prod_price
FROM products;

# 检索所有的列
SELECT *
FROM products;

# 检索不同的行，即相同的只需要一条数据
SELECT DISTINCT vend_id
FROM products;

# 限制结果，LIMIT限制返回的结果
SELECT prod_name
FROM products
LIMIT 5;

# 限制输出的行数，下标从第几行开始.     
SELECT prod_name
FROM products
LIMIT 5,5;    # 下标是从0开始的,也就是实际是第六行开始输出

# 如果行数不够，那就有多少输出多少
SELECT prod_name
FROM products
LIMIT 10,5;

# 使用完全限定的表名
SELECT products.prod_name
FROM products;

# 表名也可以是完全限定的
SELECT	products.prod_name
FROM must_study.products;









