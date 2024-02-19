create database student;
use student;

create table city
(cid int(2),
cityname varchar(20),
primary key(cid)
);

insert into city values
(1,"pune"),
(2,"nagpur"),
(3,"latur"), 
(4,"hadapsur")
;

create table profile(std_id int(2),name varchar(20),city int not null,primary key (std_id),foreign key(city) references city(cid));
insert into profile values
(1,"ankita jagtap",1),
(2,"omkar jagtap",1),
(3,"Niral hedau",2),
(4,"Adiraj Hodlurkar",3);

select * from profile  join city on profile.city=city.cid;
select * from profile inner join city on profile.city=city.cid;

select * from profile left join city on profile.city=city.cid order by name;
 select * from profile right join city on profile.city=city.cid;
 select * from profile cross join city order by name ;
  select * from profile , city order by name ;

create table cources
(crid int(2),
coursename varchar(20),
primary key(crid)
);

insert into cources values
(1,"BE"),
(2,"TE"),
(3,"FE"), 
(4,"SE")
;

select * from profile inner join city on profile.city=city.cid  inner join cources on profile.city=cources.crid  ;

