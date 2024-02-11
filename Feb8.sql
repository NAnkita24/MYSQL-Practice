create database bank;
use bank;
create table customer(srNo int(3) ,cname varchar(20),amount int(10),city varchar(20) );
insert into customer values(1,"ankita jagtap",123456 ,"pune"),(2,"omkar jagtap",87656,"pune"),(3,"niral hedau",234567,"nagpur"),(4,"aadi hodlurkar",76543,"latur");
select * from bank.customer where cname regexp 'jagtap$';
select * from bank.customer where cname regexp '^ank|hed';
select * from bank.customer where cname regexp '^[ao]';

select * from bank.customer order by cname desc;
select distinct city from bank.customer;
select *from bank.customer where city="pune" limit 2;
select *from bank.customer limit 2;
select *from bank.customer limit 2,2;
select  count(cname) from bank.customer;
select  count(distinct city) from bank.customer;
select  max(amount) from bank.customer;
select  min(amount) from bank.customer;
select  sum(amount) from bank.customer;

update bank.customer set city="saswad" where srNo=2;
update bank.customer set city="saswad" where srNo in (2,1);

delete from bank.customer where cname="omkar jagtap";







insert into customer1 values(3, 25,"bhopal");

create table customer1(id int not null auto_increment,age int check(age>=18),city varchar(10) default 'agra');
insert into customer1(age) values(21);

SELECT * FROM bank.customer1 where name="ankita";

SELECT* FROM bank.customer1 where  not age=19 and city ="agra";