 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select e.employee_name, es.salary_id, s.monthly_salary 
from employees e
inner join employees_salary es on es.employees_id = e.id 
inner join salary s on s.id = es.salary_id;


-- 2. Вывести всех работников у которых ЗП меньше 2000.

select e.employee_name, s.monthly_salary 
from employees e
inner join employees_salary es on es.employees_id = e.id 
inner join salary s on s.id = es.salary_id
where monthly_salary < 2000
;


-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.*
from salary s
left join employees_salary es on es.salary_id = s.id 
where es.id is null;


--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.*
from salary s
left join employees_salary es on es.salary_id = s.id 
where es.id is null
and s.monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.

select employee_name, salary_id
from employees e 
left join employees_salary es on e.id = es.employees_id
where salary_id is null;


 --6. Вывести всех работников с названиями их должности.
 
 select e.employee_name, r.role_name
 from employees e
 inner join roles_employee re on re.employee_id = e.id
 inner join roles r on r.id = re.role_id;
 
 
 7. Вывести имена и должность только Java разработчиков.
 
 select e.employee_name, r.role_name
 from employees e 
 inner join roles_employee re on re.employee_id = e.id
inner join roles r on r.id = re.role_id
where r.role_name = 'Junior Java developer' 
	or r.role_name = 'Middle Java developer' 	
	or r.role_name = 'Senior Java developer';
 
 
-- 8. Вывести имена и должность только Python разработчиков.

 select e.employee_name, r.role_name
 from employees e
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id
 		where r.role_name = 'Junior Python developer' 
		or r.role_name = 'Middle Python developer' 		
		or r.role_name = 'Senior Python developer';
	
	
 --9. Вывести имена и должность всех QA инженеров.
 
 select e.employee_name, r.role_name
 from employees e
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name  like '%QA engineer'
;
 
 --10. Вывести имена и должность ручных QA инженеров.
 
 select e.employee_name, r.role_name
 from employees e 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name  like '%Manual QA engineer'
 
 
 11. Вывести имена и должность автоматизаторов QA
 
 select e.employee_name, r.role_name
 from employees e 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Automation%'
 
 
 12. Вывести имена и зарплаты Junior специалистов
 
 select e.employee_name, s.monthly_salary, r.role_name 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.id = e.id 
 inner join roles r on r.id = re.role_id
 where r.role_name like '%Junior%'
 
 
 13. Вывести имена и зарплаты Middle специалистов
 
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Middle%'
 
 
 14. Вывести имена и зарплаты Senior специалистов
 
 select e.employee_name, s.monthly_salary
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Senior%'
 
 
 15. Вывести зарплаты Java разработчиков
 
 select e.*, s.monthly_salary, r.role_name 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Java developer'
 
 
 
 
 
 
 
 16. Вывести зарплаты Python разработчиков
 17. Вывести имена и зарплаты Junior Python разработчиков
 18. Вывести имена и зарплаты Middle JS разработчиков
 19. Вывести имена и зарплаты Senior Java разработчиков
 20. Вывести зарплаты Junior QA инженеров
 21. Вывести среднюю зарплату всех Junior специалистов
 22. Вывести сумму зарплат JS разработчиков
 23. Вывести минимальную ЗП QA инженеров
 24. Вывести максимальную ЗП QA инженеров
 25. Вывести количество QA инженеров
 26. Вывести количество Middle специалистов.
 27. Вывести количество разработчиков
 28. Вывести фонд (сумму) зарплаты разработчиков.
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
