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
 
 select e.*, s.monthly_salary, r. role_name
 from employees e 
 inner join employees_salary es on es.salary_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Python developer'
 
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select e.employee_name, s.monthly_salary
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like 'Junior Python developer'
 
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select e.employee_name, s.monthly_salary, r.role_name 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like 'Middle JavaScript developer'
 
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select e.employee_name, s.monthly_salary, r.role_name
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = s.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like 'Senior Java developer'
 
 
 20. Вывести зарплаты Junior QA инженеров
 
 select e.employee_name, s.monthly_salary, r.role_name 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Junior%QA%'
 
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 select avg(s.monthly_salary)
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id =es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%Junior%'

 
 22. Вывести сумму зарплат JS разработчиков
 
 select  sum(s.monthly_salary)
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id =es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%JavaScript developer%'
 
 
 23. Вывести минимальную ЗП QA инженеров
 
 select min(s.monthly_salary)
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%QA engineer'
 
 
 24. Вывести максимальную ЗП QA инженеров

 select max(s.monthly_salary)
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id =re.role_id 
 where r.role_name like '%QA engineer'
 
 
 25. Вывести количество QA инженеров
 
 select count(e.employee_name)
 from employees e 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like '%QA engineer'
 
 
 26. Вывести количество Middle специалистов.
 
 select count(e.employee_name)
 from employees e 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where r.role_name like 'Middle%'
 
 
 27. Вывести количество разработчиков
 
 select count(e.employee_name)
 from employees e 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id
 where r.role_name like '%developer'
 
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select --sum(s.monthly_salary)
 s.monthly_salary
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id =re.role_id 
 where r.role_name like '%developer'
 
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select r.role_name, s.monthly_salary, e.employee_name
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id =re.role_id 
 order by 
 	s.monthly_salary
 	
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию
 у специалистов у которых ЗП от 1700 до 2300
 
 select e.employee_name, r.role_name, s.monthly_salary 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.role_id = e.id 
 inner join roles r on r.id = re.role_id 
 where s.monthly_salary between 1700 and 2300
order by
		s.monthly_salary 
 
 
 
 31. Вывести имена, должности и ЗП всех специалистов
 по возрастанию у специалистов у которых ЗП меньше 2300
 
 select e.employee_name, r.role_name, s.monthly_salary 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.salary_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where s.monthly_salary < 2300
 order by
 				s.monthly_salary 

 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию
 у специалистов у которых ЗП равна 1100, 1500, 2000

 select e.employee_name, s.monthly_salary, r.role_name 
 from employees e 
 inner join employees_salary es on es.employees_id = e.id 
 inner join salary s on s.id = es.employees_id 
 inner join roles_employee re on re.employee_id = e.id 
 inner join roles r on r.id = re.role_id 
 where s.monthly_salary in (1100, 1500, 2000)
 	 order by
				s.monthly_salary 
				
