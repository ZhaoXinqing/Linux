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
