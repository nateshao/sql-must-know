# LIKE 通配符
## 百分号（%）通配符		% 表示字符出现的任意次数
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE 'jet%';	# 匹配的时候是区分大小写的

SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '%anvil%';

SELECT prod_name
FROM products
WHERE prod_name LIKE 'S%E';  # 即使是 WHERE prod_name LIKE '%' 不行，因为%不回配置空值

## 下划线（_）通配符。_ 只能匹配一个字符
SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '_ ton anvil';

SELECT prod_id,prod_name
FROM products
WHERE prod_name LIKE '% ton anvil';

## 使用通配符的技巧
因为通配符搜索的处理一般要比前面讨论的其它搜索花时间更长，所以：
1、不要过度使用通配符
2、如果确实需要使用，尽量不要将它们用在搜索模式的开始处
	 因为把搜索放在开始处，搜索起来是最慢的
3、仔细注意通配符的位置。如果放错地方，可能不回返回需要的数据
