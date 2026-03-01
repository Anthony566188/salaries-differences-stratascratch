-- Calcula a diferença entre os salários mais altos nos departamentos de marketing e engenharia.
SELECT ABS(MAX(CASE
                   WHEN dept.department = 'marketing' THEN emp.salary
               END) - MAX(CASE
                              WHEN dept.department = 'engineering' THEN emp.salary
                          END)) AS salary_difference
FROM db_employee emp
JOIN db_dept dept ON emp.department_id = dept.id
WHERE dept.department IN ('marketing',
                          'engineering');
                          




-- Calcula as médias dos salários dos departamentos de vendas e engenharia
select AVG(case when dept.department = 'sales' then emp.salary
        end) as  mean_sales, AVG(case
                when dept.department = 'engineering' then emp.salary
                end) as mean_engineering
from db_employee emp join db_dept dept
on emp.department_id = dept.id
where dept.department IN ('sales',
                          'engineering');
