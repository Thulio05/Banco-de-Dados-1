SELECT * FROM olym.OLYM_ATHLETES 
    WHERE id BETWEEN 20166 and 20200;

SELECT SPORT FROM olym.OLYM_SPORTS 
    WHERE sport LIKE 'B%';

SELECT * FROM olym.OLYM_NATIONS 
    order by nation desc;

SELECT * FROM olym.OLYM_GAMES
	WHERE year < 2000;

SELECT * FROM olym.OLYM_DISCIPLINES
	WHERE sport_id = 1 
    	or sport_id = 12 
    	or sport_id = 17;

SELECT year FROM olym.OLYM_GAMES
    WHERE city = 'Athens';

SELECT athlete FROM olym.OLYM_MEDALS_VIEW
	WHERE gender = 'Women' 
    	and medal = 'Gold' 
    	AND City IN ('Beijing', 'Sydney')
	GROUP BY athlete
	HAVING COUNT(DISTINCT City) = 2;

SELECT city,
	edition,
	sport,
	discipline,
	athlete,
	medal
	FROM olym.OLYM_MEDALS_VIEW
	order by edition;

SELECT athlete,
	noc,
	edition,
    sport,
	medal
	FROM olym.OLYM_MEDALS_VIEW;

-- ========== PARTE 2 ==========

/*SELECT ad.AD_DEPARTMENTS.DEPARTMENT_NAME, ad.AD_DEPARTMENTS.HOD
FROM ad.AD_DEPARTMENTS
JOIN ad.AD_FACULTY_DETAILS
ON ad.AD_DEPARTMENTS.HOD = ad.AD_FACULTY_DETAILS.FACULTY_ID
WHERE EXTRACT(YEAR FROM TO_DATE(ad.AD_FACULTY_DETAILS.HIRE_DATE, 'DD-MON-RR')) < 2015;*/

SELECT * FROM ad.AD_EXAM_TYPE;

SELECT first_name, 
    last_name, 
    email 
    FROM ad.AD_FACULTY_DETAILS;

SELECT job_title 
    FROM ad.AD_JOBS
	WHERE SUBSTR(job_title, -1) = 'y';

SELECT job_title,
    min_salary,
    max_salary
    FROM ad.AD_JOBS;

SELECT first_name,
    parent_id,
    student_reg_year,
    email_addr
    FROM ad.AD_STUDENT_DETAILS;

SELECT * FROM ad.AD_PARENT_INFORMATION;
