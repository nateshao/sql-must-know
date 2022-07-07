-- 假如需要列出价格为10美元及以上，且由DLL01或BRS01制造的所有产品。
SELECT prod_id,prod_name  FROM products WHERE vend_id='DLL01'OR vend_id='BRS01' AND prod_price >= 10;

SELECT prod_id,prod_name  FROM products WHERE (vend_id='DLL01'OR vend_id='BRS01') AND prod_price >= 10;

-- IN 操作符用来指定条件范围，范围中的每个条件都可以进行匹配。IN 取一组由逗号分隔、括在圆括号中的合法值。下面的例子说明了这个操作符。


SELECT prod_id,prod_name  FROM products WHERE vend_id IN('DLL01','BRS01') ORDER BY  prod_name;

SELECT prod_name, prod_price FROM Products WHERE vend_id = 'DLL01' OR vend_id = 'BRS01' ORDER BY prod_name;

-- 列出除 DLL01 之外的所有供应商制造的产品

SELECT prod_name FROM products WHERE NOT vend_id = 'DLL01' ORDER BY prod_name;

-- 也可以使用<>操作符来完成
SELECT prod_name FROM products WHERE  vend_id <> 'DLL01' ORDER BY prod_name;


SELECT vend_name + ' (' + vend_country + ')' FROM Vendors ORDER BY vend_name;

SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM Vendors
ORDER BY vend_name;

LEFT()（或使用子字符串函数） 返回字符串左边的字符
LENGTH()（也使用DATALENGTH()或LEN()） 返回字符串的长度
LOWER()（Access使用LCASE()） 将字符串转换为小写
LTRIM() 去掉字符串左边的空格
RIGHT()（或使用子字符串函数） 返回字符串右边的字符
RTRIM() 去掉字符串右边的空格
SOUNDEX() 返回字符串的SOUNDEX值
UPPER()（Access使用UCASE()） 将字符串转换为大写














-- 6.1.1 百分号（%）通配符
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE 'Fish%';



SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE '%bean bag%'; 

SELECT prod_name FROM Products WHERE prod_name LIKE 'F%y';


WHERE email LIKE 'b%@forta.com'
 
SELECT prod_id, prod_name FROM Products WHERE prod_name LIKE '__ inch teddy bear';





