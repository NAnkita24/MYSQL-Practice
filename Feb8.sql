create database bank;
use bank;
create table customer(srNo int(3),cname varchar(20),amount int(10) );
insert into customer values(1,"ankita",123456),(2,"omkar",87656);

insert into customer1 values(3, 25,"bhopal");

create table customer1(id int not null auto_increment,age int check(age>=18),city varchar(10) default 'agra');
insert into customer1(age) values(21);

SELECT * FROM bank.customer1 where name="ankita";

SELECT* FROM bank.customer1 where  not age=19 and city ="agra";