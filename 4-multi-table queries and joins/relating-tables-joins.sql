-- THESE JOIN  WITHOUT THE JOIN KEWWORD

SELECT EMP.ENAME, EMP.JOB, EMP.SAL
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
AND DEPT.LOC = 'DALLAS';

/*
ENAME	JOB	SAL
FORD	ANALYST	3000
SCOTT	ANALYST	3000*/

SELECT E.ENAME AS FIRS_NAME, JOB, SAL, E.DEPTNO
FROM (SELECT * FROM EMP WHERE JOB IN ('MANAGER', 'CLERK')) E, (SELECT * FROM DEPT) D
WHERE E.DEPTNO = D.DEPTNO
AND LOC = 'DALLAS';

/*
FIRS_NAME	JOB	SAL	DEPTNO
JONES	MANAGER	2975	20
SMITH	CLERK	800	20
ADAMS	CLERK	1100	20*/
