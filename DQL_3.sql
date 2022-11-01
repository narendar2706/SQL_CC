create database DQL_3;
use DQL_3;

CREATE TABLE  Department(
	Dept_id INT(11) PRIMARY KEY,
	Dept_name VARCHAR(25)
);

CREATE TABLE  Staff(
	Staff_id int(11) PRIMARY KEY,
	Staff_name VARCHAR(25),
	Supervisor_id INT(11),
	Salary BIGINT(20),
	Join_date DATE,
	Dept_id INT(11),
	FOREIGN KEY (Dept_id) REFERENCES Department(Dept_id)
);

insert into Department values(001,'MIS');
insert into Department values(002,'CSE');
insert into Department values(003,'BEE');
insert into Department values(10,'IT');

insert into staff values(1101,'jhon',1234,500000,'2020-02-12',001);
insert into staff values(1102,'mike',2345,450000,'2021-12-10',002);
insert into staff values(1103,'rahul',1245,600000,'2022-12-15',10);
insert into staff values(1104,'jason',3462,550000,'2021-05-10',10);
insert into staff values(1105,'kiran',1298,600000,'2021-04-20',10);

select Staff_id,Staff_name,Salary,Dept_id
from staff
where Salary > (select avg(Salary) from staff) and Dept_id=10
order by Staff_id ASC;
