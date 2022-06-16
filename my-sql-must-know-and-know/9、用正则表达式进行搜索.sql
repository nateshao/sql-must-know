# 本章将学习如何在MySQL WHERE子句内使用正则表达式来更好的控制数据过滤
# 基本字符的匹配
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '.000'		# . 正则表达式中表示匹配任意一个字符
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name LIKE '1000'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP'1000'
ORDER BY prod_name; 

## MySQL语句中的正则表达式不区分大小写
## 为了区分大小写，可以使用关键字：BINARY 
SELECT prod_name
FROM products
WHERE CAST(prod_name AS BINARY) REGEXP BINARY 'JetPack .000';		# MySQL CAST()函数通常用于返回指定类型的值

# 进行OR匹配
SELECT prod_name
FROM products
WHERE prod_name REGEXP '1000|2000'	# | 为搜索两个字符串(都可)，使用｜
ORDER BY prod_name;

# 匹配几个字符之一
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[123] Ton'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '1|2|3 Ton'
ORDER BY prod_name;			# 很明显不是想要的输出，所以对于匹配多个字符串，使用[]

SELECT prod_name
FROM products
WHERE prod_name REGEXP '[^123] Ton'
ORDER BY prod_name;		# 字符串被否定 ^ 号表示非这些字符串

# 匹配范围。集合可用来表示要匹配一个字符还是多个字符
SELECT prod_name
FROM products
WHERE prod_name REGEXP '[1-5] Ton'
ORDER BY prod_name;

# 匹配特殊字符 如：.、[]、| -
SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '.'
ORDER BY vend_name;  # 很明显这不是期望的输出，为了匹配特殊字符，必须用\\为前导

SELECT vend_name
FROM vendors
WHERE vend_name REGEXP '\\.'
ORDER BY vend_name;

## \\也可以用开引用元字符（具有特殊含义的字符）如：
## \\f 换页. \\n 换行. \\r 回车. \\t 制表. \\v 纵向制表

# 匹配字符类

# 匹配多个实例
SELECT prod_name
FROM products
WHERE prod_name REGEXP '\\([0-9] sticks?\\)'
ORDER BY prod_name;

SELECT prod_name
FROM products
WHERE prod_name REGEXP '[[:digit:]]{4}'
ORDER BY prod_name;

SELECT prod_name
FROM products 
WHERE prod_name REGEXP '^[0-9\\.]'
ORDER BY prod_name;

## 使REGEXP起类似LIKE的作用，LIKE匹配所有串，而REGEXP匹配子串，
## 通过 ^ 开始每个表达式，用 $ 结束每个表达式，可以使REGEXP 和 LIKE 作用一样

SELECT 'hello mysql' REGEXP '[0-9]';	# 结果返回0
