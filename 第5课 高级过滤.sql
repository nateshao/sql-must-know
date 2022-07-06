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

























