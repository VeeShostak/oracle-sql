SELECT *
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO

-- INNER JOIN, JOINS ON COMMON VALUES, (An outer join returns: include what an inner join would return but also includes other rows for which no corresponding match is found in the other table.)
SELECT *
FROM EMP INNER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO
/*
EMPNO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DEPTNO	DEPTNO	DNAME	LOC
7782	CLARK	MANAGER	7839	06/09/1981	2450	-	10	10	ACCOUNTING	NEW YORK
7934	MILLER	CLERK	7782	01/23/1982	1300	-	10	10	ACCOUNTING	NEW YORK*/


/*
Left Outer Join (or Left Join)
Right Outer Join (or Right Join)
Full Outer Join (or Full Join)
*/



--A right outer join will give all rows in right table, plus any common rows in left table.
-- RIGHT JOIN, GIVES COMMON VALUES OF BOTH TABLES + RIGHT TABLE, SAME WITH LEFT
SELECT *
FROM EMP RIGHT JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;

-- SAME RESULT:
SELECT *
FROM EMP RIGHT OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;

/*
EMPNO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DEPTNO	DEPTNO	DNAME	LOC
7782	CLARK	MANAGER	7839	06/09/1981	2450	-	10	10	ACCOUNTING	NEW YORK
7934	MILLER	CLERK	7782	01/23/1982	1300	-	10	10	ACCOUNTING	NEW YORK*/



--FULL OUTER JOIN, ALL RECORDS FROM BOTH TABLES JOINED WHERE IT COULD,
-- RECORDS THAT DONT CONTAIN (ON EMP.DEPTNO = DEPT.DEPTNO) GIVES NULL WHERE IT DOENST
--- (NULL ON LEFT, RECORD ON RIGHT)

-- A full outer join will give you the union of left and right tables, 
-- i.e. all the rows in left table and all the rows in right table. 
-- If something in left table doesn't have a corresponding datum in right table, then the B portion is null, and vice versa.
SELECT *
FROM EMP FULL OUTER JOIN DEPT 
ON EMP.DEPTNO = DEPT.DEPTNO;

/*
7900	JAMES	CLERK	7698	12/03/1981	950	-	30	30	SALES	CHICAGO
7934	MILLER	CLERK	7782	01/23/1982	1300	-	10	10	ACCOUNTING	NEW YORK
-	-	-	-	-	-	-	-	40	OPERATIONS	BOSTON
*/

-- =============================

SELECT *
FROM (SELECT * FROM EMP WHERE JOB = 'SALESMAN') E
FULL OUTER JOIN (SELECT * FROM DEPT) D
ON E.DEPTNO = D.DEPTNO;
/*
EMPNO	ENAME	JOB	MGR	HIREDATE	SAL	COMM	DEPTNO	DEPTNO	DNAME	LOC
-	-	-	-	-	-	-	-	10	ACCOUNTING	NEW YORK
-	-	-	-	-	-	-	-	20	RESEARCH	DALLAS
7844	TURNER	SALESMAN	7698	09/08/1981	1500	0	30	30	SALES	CHICAGO*/



SELECT * FROM (SELECT * FROM public.users WHERE uid = 'JHrKahi11lZDPsRqtMMoVcHEAnp1') users 
LEFT JOIN (SELECT * FROM public.user_chat_posts WHERE user_id='JHrKahi11lZDPsRqtMMoVcHEAnp1') chatPosts 
ON users.uid = chatPosts.user_id


-- =============================
-- =============================
-- =============================

/*
Assuming you're joining on columns with no duplicates, which is a very common case:

An inner join of A and B gives the result of A intersect B, i.e. the inner part of a Venn diagram intersection.
An outer join of A and B gives the results of A union B, i.e. the outer parts of a Venn diagram union.
Examples

Suppose you have two tables, with a single column each, and data as follows:

A    B
-    -
1    3
2    4
3    5
4    6
Note that (1,2) are unique to A, (3,4) are common, and (5,6) are unique to B.

Inner join

An inner join using either of the equivalent queries gives the intersection of the two tables, i.e. the two rows they have in common.

select * from a INNER JOIN b on a.a = b.b;
select a.*, b.*  from a,b where a.a = b.b;

a | b
--+--
3 | 3
4 | 4
Left outer join

A left outer join will give all rows in A, plus any common rows in B.

select * from a LEFT OUTER JOIN b on a.a = b.b;
select a.*, b.*  from a,b where a.a = b.b(+);

a |  b
--+-----
1 | null
2 | null
3 |    3
4 |    4
Right outer join

A right outer join will give all rows in B, plus any common rows in A.

select * from a RIGHT OUTER JOIN b on a.a = b.b;
select a.*, b.*  from a,b where a.a(+) = b.b;

a    |  b
-----+----
3    |  3
4    |  4
null |  5
null |  6
Full outer join

A full outer join will give you the union of A and B, i.e. all the rows in A and all the rows in B. If something in A doesn't have a corresponding datum in B, then the B portion is null, and vice versa.

select * from a FULL OUTER JOIN b on a.a = b.b;

 a   |  b
-----+-----
   1 | null
   2 | null
   3 |    3
   4 |    4
null |    6
null |    5

*/









