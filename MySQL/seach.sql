-- 查看表结构
DESC emps;
-- 查询所有列
select * from emp;
-- 查询指定列
select empmo,ename,mgr from emp;
select distinct mgr from emp;
-- 查询指定的行
select * from emp where job='clerk';
-- 使用算数表达式
select ename,sal*13+nvl(comm,0) from emp;
-- 使用like操作符（%，_)
-- %表示一个或多个字符，_表示一个字符
select * from emp where ename like 's_t%';
-- 在 where 中使用 in
select * from emp where job in ('clerk','analyst');
-- 查询字段为空/非空的语句
select * from emp where mgr is/is not NULL;
-- 使用逻辑操作符号
select * from emp where (sal>500 or job='manage') and ename like 'j%';
-- 按查询结果对字段值排序
select * from emp order by deptno,sal DESC;
-- 格式化日期时间
select data_fromat(start_time,"%Y-%m-%d") as "时间";

-- 数据分组
select max(sal),min(age),avg(sal),sum(sal) from emp;
select * from emp where sal=(select max(sal) from emp);
select count(*) from emp;
-- 
-- https://www.cnblogs.com/sunada2005/p/3411873.html

-- 创建一张仅包含主键和唯一索引的表
CREATE TABLE test
(PrimaryKey VARCHAR2(20),
UniqueKey  VARCHAR2(20)
);


### 1、CREATE INDEX
CREATE INDEX可对表增加普通索引或UNIQUE索引。
例如：
`CREATE INDEX index_name ON table_name (column_list)`
`CREATE UNIQUE INDEX index_name ON table_name (column_list)`
table_name、index_name和column_list具有与ALTER TABLE语句中相同的含义，索引名不可选。另外，不能用CREATE INDEX语句创建PRIMARY KEY索引。

### 2、ALTER TABLE
ALTER TABLE用来创建普通索引、UNIQUE索引或PRIMARY KEY索引。
例如：
`ALTER TABLE table_name ADD INDEX index_name (column_list)`
`ALTER TABLE table_name ADD UNIQUE (column_list)`
`ALTER TABLE table_name ADD PRIMARY KEY (column_list)`
其中table_name是要增加索引的表名，column_list指出对哪些列进行索引，多列时各列之间用逗号分隔。索引名index_name可选，缺省时，MySQL将根据第一个索引列赋一个名称。另外，ALTER TABLE允许在单个语句中更改多个表，因此可以在同时创建多个索引。

# 2、删除索引
 可利用ALTER TABLE或DROP INDEX语句来删除索引。类似于CREATE INDEX语句，DROP INDEX可以在ALTER TABLE内部作为一条语句处理，语法如下。
 `DROP INDEX index_name ON talbe_name`
 `ALTER TABLE table_name DROP INDEX index_name`
 `ALTER TABLE table_name DROP PRIMARY KEY`
其中，前两条语句是等价的，删除掉table_name中的索引index_name。

第3条语句只在删除PRIMARY KEY索引时使用，因为一个表只可能有一个PRIMARY KEY索引，因此不需要指定索引名。如果没有创建PRIMARY KEY索引，但表具有一个或多个UNIQUE索引，则MySQL将删除第一个UNIQUE索引。
 如果从表中删除了某列，则索引会受到影响。对于多列组合的索引，如果删除其中的某列，则该列也会从索引中删除。如果删除组成索引的所有列，则整个索引将被删除。

