# 理解全文本搜索

# 使用全文本搜索
/*
CREATE TABLE chapter_practice
(
	note_id		int				NOT NULL AUTO_INCREMENT,
	prod_id		char(10)	NOT NULL,
	note_date datetime	NOT NULL,
	note_text text			NULL
	PRIMARY KEY(note_id),
	FULLTEXT(note_text)
) ENGING=MyISAM;
*/

## 进行全文本搜索
SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('rabbit');

SELECT note_text
FROM productnotes
WHERE note_text LIKE '%rabbit%';

SELECT note_text,
			 Match(note_text) Against('rabbit') AS ranks
FROM productnotes;

## 使用查询扩展
SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('anvils' WITH QUERY EXPANSION);

## 布尔文本搜索
SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('heavy' IN BOOLEAN MODE);

SELECT note_text
FROM productnotes
WHERE Match(note_text) Against('heavy -rope*' IN BOOLEAN MODE);

SELECT note_text	# 整个搜索匹配包含词rabbit和bait
FROM productnotes
WHERE Match(note_text) Against('+rabbit +bait' IN BOOLEAN MODE);

SELECT note_text	# 包含rabbit 和 bait中至少一个词的行
FROM productnotes
WHERE Match(note_text) Against('rabbit bait' IN BOOLEAN MODE);

SELECT note_text	# 搜索短语rabbit bait而不是匹配两个词
FROM productnotes
WHERE Match(note_text) Against('"rabbit bait"' IN BOOLEAN MODE);

SELECT note_text	# 匹配rabbit和carrot，增加前者的等级，降低后者的等级
FROM productnotes
WHERE Match(note_text) Against('>rabbit <carrot' IN BOOLEAN MODE);

SELECT note_text	# 搜索匹配次safe和combination，降低后者的等级
FROM productnotes
WHERE Match(note_text) Against('+safe +(<combination)' IN BOOLEAN MODE);

## 全文本搜索的使用说明
