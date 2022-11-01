create database pizza_center;
use pizza_center;

create table Pizza(
	Pizza_id varchar(10),
    Cust_id varchar(10),
    Partner_id varchar(10),
    Pizza_name varchar(50),
    Pizza_type varchar(50),
    Order_Date date,
    Amount bigint(20),
    primary key(Pizza_id)
);

insert into Pizza values(001,22,12,'veg peproni','veg cheese','2022-10-11',150);
insert into Pizza values(002,12,20,'chicken peproni','chicken cheese','2022-11-12',200);
insert into Pizza values(003,20,12,'veg peproni','veh cheese','2021-12-10',150);

select Pizza_name, count(Pizza_name) as 'No.Sold' from Pizza group by Pizza_name ;
