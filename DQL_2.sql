
create database pet_center;
use pet_center;

create table customer_details(
customer_id varchar(10),
customer_name varchar(30) not null,
phone_no varchar(10) not null,
city varchar(20) null,
primary key(customer_id));

create table pet_details(
pet_id varchar(5),
pet_name varchar(30) not null,
pet_type varchar(10) not null,
breed varchar(20) null,
gender varchar(10) null,
age_in_days int(4) null,
price double(7,2),
primary key(pet_id));

create table purchase_details(
purchase_id int,
customer_id varchar(10),
pet_id varchar(5),
purchase_date date,
total_amount_paid double(8,2),
primary key(purchase_id),
foreign key(customer_id)references customer_details(customer_id),
foreign key(pet_id) references pet_details(pet_id));

insert into customer_details values(1234,'jhon','9511599631','hyd');
insert into customer_details values(1235,'mike','3214569631','chennai');
insert into customer_details values(1236,'sam','7533575691','mumbai');

insert into pet_details values(11,'roxy','dog','golden retriver','male',30,25000.00);
insert into pet_details values(12,'jack','dog','german sheperd','male',45,30000.00);

insert into purchase_details values(001,1234,11,'2022-05-20',25000.00);
insert into purchase_details values(002,1235,11,'2021-12-10',25000.00);
insert into purchase_details values(003,1234,12,'2021-10-19',30000.00);
insert into purchase_details values(004,1236,12,'2020-12-10',30000.00);
insert into purchase_details values(005,1234,11,'2021-12-02',25000.00);
insert into purchase_details values(006,1235,12,'2022-02-23',30000.00);


 
select q1.customer_id,customer_details.customer_name,q1.no_of_pets 
from (select * from (select customer_id, count(customer_id) as 'no_of_pets' from purchase_details group by customer_id) q2 where no_of_pets > 1) q1
join customer_details 
where q1.customer_id = customer_details.customer_id order by q1.customer_id asc;
