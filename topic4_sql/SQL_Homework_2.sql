
drop table if exists roles_employee;
drop table if exists roles;
drop table if exists employees_salary;
drop table if exists employees;
drop table if exists salary;

drop sequence if exists roles_employee_id_seq;
drop sequence if exists roles_id_seq;
drop sequence if exists employees_salary_id_seq;
drop sequence if exists employees_id_seq;
drop sequence if exists salary_id_seq;


create table employees( 
	id serial primary key,
	employee_name varchar (50) not null
);

insert into employees(employee_name)
values 
	('Robert Jones'),
	('David Gonzales'),
	('Antonio Love'),
	('Judy Evans'),
	('Julie Caldwell'),
	('Danny Murphy'),
	('Victoria Johnson'),
	('James Johnson'),
	('Andrew Jones'),
	('Patricia Berry'),
	('Robert Fisher'),
	('Joseph Caldwell'),
	('Jesse Smith'),
	('Maria Mann'),
	('Frank Rodriguez'),
	('Patricia Walsh'),
	('Charles Walker'),
	('Mark Clark'),
	('Jonathan Castro'),
	('Paul Rogers'),
	('Herman Christensen'),
	('Andy Walker'),
	('Daniel Wilson'),
	('Andrea Hicks'),
	('Jesse Davis'),
	('Edward Barker'),
	('Andrea Green'),
	('Keith Bell'),
	('Donna Thornton'),
	('Jack Payne'),
	('Shannon Howard'),
	('Amanda Johnson'),
	('Michael McKinney'),
	('Kimberly Baker'),
	('Mark McKinney'),
	('Tammy Martinez'),
	('Jacqueline Diaz'),
	('Brandon Smith'),
	('Bradley Lewis'),
	('Erin Kennedy'),
	('Viola Evans'),
	('Leo Mann'),
	('Annie Hardy'),
	('Emma Graham'),
	('Andy Allen'),
	('Ronald Ferguson'),
	('Michelle Pearson'),
	('Dawn Hart'),
	('Leo Wilson'),
	('William Stokes'),
	('Eric Simon'),
	('Jennifer Romero'),
	('Louise Chapman'),
	('David Sullivan'),
	('Fred Williams'),
	('Kenneth Taylor'),
	('Shannon Davis'),
	('Alfred Long'),
	('Virginia Parks'),
	('Steven Norman'),
	('Maria Smith'),
	('Brian Brown'),
	('Sandra Hill'),
	('Jean Johnson'),
	('Patricia Wilson'),
	('Kathy Martin'),
	('Rebecca Austin'),
	('Richard Johnson'),
	('Jesus Anderson'),
	('Stephanie Black');

create table salary( 
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values 
	(1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);

create table employees_salary(
	id serial primary key,
	employees_id int not null unique,
	salary_id int not null
);

insert into employees_salary(employees_id, salary_id)
values 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 1),
	(18, 2),
	(19, 3),
	(20, 4),
	(21, 5),
	(22, 6),
	(23, 7),
	(24, 8),
	(25, 9),
	(26, 10),
	(27, 11),
	(28, 12),
	(29, 13),
	(30, 14),
	(75, 15),
	(76, 16),
	(77, 1),
	(78, 2),
	(79, 3),
	(80, 4),
	(81, 5),
	(82, 6),
	(83, 7),
	(84, 8),
	(85, 9);

create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles
	alter role_name type varchar(30);

insert into roles (role_name)
values 
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');

create table roles_employee( 
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);