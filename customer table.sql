select*from customers;
select orderid,orderdate, customerid, country from customers;
-- 2. select distinct
select distinct(category) from customers;
select distinct(region) from customers;
select distinct(orderid) from customers;
-- orderid as id
select orderid as id from customers;
select*from customers where category='technology';
select*from customers where quantity>10;
select*from customers where sales<5000;
select*from customers where state='texas'and category='technology' ;
select*from customers where quantity>5 and region='technology' and subcategory='phones';
select*from customers where quantity<5 and region='technology' and subcategory='phones';
select distinct(state) from customers;
select * from customers where state='texas' or state='washington'or state='california';
select*from customers where not category='technology';
select*from customers where not region ='central';
select*from customers where not state='texas' and not state='washington';
-- order by
select * from customers where category='technology' order by orderdate asc;
select*from customers where category='technology' order by orderdate desc;
select*from customers where category is null ;
select*from customers where category is not null;
select *from customers where category ='technology' order by sales desc limit 5;
select *from customers where  region ='central' order by profit desc limit 1;
select profit from customers where  region ='central' order by profit desc limit 1;
select profit from customers where region ='central' order by profit desc limit 1 offset 1;
select*from customers where subcategory in ('paper','phone','art');
select *from customers where orderdate between '2014-01-01'and '2014-12-31';
select*from customers where quantity>5 and region='technology' and subcategory='phones';
select*from customers where region like 'w%';  
select*from customers where orderdate like '2014%';  
select*from customers where state like '%nia';  
select*from customers where category like '%no%'; 
select*from customers where category like '%off%';  
select*from customers where state like 'f%a';
select*from customers where postalcode like '3_';

select count(distinct(region))from customers ;
select avg (sales)from customers where region='west';
select sum(sales)from customers where state ='texas'and orderdate like '2014%';
select min(sales) from customers where state ='california';
select max(sales) from customers where state ='california';
select count(orderid),category from customers group by category;
select sum(sales),region from customers group by region order by sum(sales) desc;
select count(orderid),subcategory from customers group by subcategory;

select count(orderid),subcategory from customers group by subcategory having count(orderid)>3  order by count(orderid) desc;

select sum(sales) from customers ;
select*from customers where sales =  (select min(sales)from customers);
select*from customers where sales = (select min(sales)from customers);
-- Employees table
create table employees  (EmployeeID int primary key, name varchar(50) not null ,departmentID int);
-- departmets tables 
create table departments  (departmentID int primary key ,departmentname varchar (50)not null);
-- insert data into employees table 
insert into employees (employeeID , name, departmentID)
values
(1,'alica',101),
(2,'bob',102),
(3,'charlie',null),
(4,'david',104);
-- insert data departments table
insert into departments (departmentID, departmentname)
values 
(101,'HR'),
(102,'IT'),
(103,'MARKETING');
SELECT employees.employeeID, Employees.name , departments.departmentname from employees 
inner join departments on employees.departmentID = Departments.departmentID;
-- left join (left outer join)
select employees.employeeID, employees.name , departments.departmentname 
from employees
left join departments on employees.departmentID = departments.departmentID; 
select employees.employeeID, employees.name , departments.departmentname 
from employees
right join departments on employees.departmentID = departments.departmentID; 

select employees.employeeID, employees.name , departments.departmentname 
from employees
left join departments on employees.departmentID = departments.departmentID 

UNION 

select employees.employeeID, employees.name , departments.departmentname 
from employees
right join departments on employees.departmentID = departments.departmentID; 



