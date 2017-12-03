--aliasing, for comparisons single q, for aliases double quotes
SELECT ENAME AS "EMPLOYEE NAME", SALE AS SALARY, COMM AS COMMISION
FROM EMP;

--concatenation use || pipes

SELECT ENAME || ' makes $' || SAL || ' per month' AS "Employee Income"
FROM EMP;

/*Employee Income
KING makes $5000 per month
BLAKE makes $2850 per month*/

--ordering 
SELECT DEPTNO, SAL, ENAME
FROM EMP
ORDER BY DEPTNO, SAL;

/*DEPTNO	SAL	ENAME
10	1300	MILLER
10	2450	CLARK*/
