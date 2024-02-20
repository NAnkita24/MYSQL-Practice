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

create table profile(std_id int(2),name varchar(20),city int not null, courses int(2),percentage int(3),primary key (std_id),foreign key(city) references city(cid));
insert into profile values
(1,"ankita jagtap",1,1,80),
(2,"omkar jagtap",1,2,130),
(3,"Niral hedau",2,1,20),
(4,"Adiraj Hodlurkar",3,3,85),
(5,"ankita jagtap",1,4,95),
(6,"nikita jagtap",4,3,60);



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

select city.cityname, count(profile.city) from profile inner join city on profile.city=city.cid group by city;
select city.cityname, count(profile.city) from profile inner join city on profile.city=city.cid group by city having count(profile.city)>1;

SELECT name 
FROM profile 
WHERE courses = (SELECT crid FROM cources WHERE coursename = 'BE');

SELECT name 
FROM profile 
WHERE courses in (SELECT crid FROM cources WHERE coursename in ('BE','TE'));

SELECT name 
FROM profile 
WHERE exists (SELECT crid FROM cources WHERE coursename = 'BE');

SELECT name 
FROM profile 
WHERE not exists(SELECT crid FROM cources WHERE coursename = 'BE');

SELECT name 
FROM profile 
WHERE exists(SELECT crid FROM cources WHERE coursename = 'BCA');

SELECT name 
FROM profile 
WHERE  not exists(SELECT crid FROM cources WHERE coursename = 'BCA');

select * from city union select * from cources ;
select * from city where cityname ="pune" union select * from cources  where coursename ="BE" ;

select std_id,name,percentage, if (percentage>=35,"pass","fail") as result from profile;

select std_id,name,percentage,
 case 
 when percentage>=80 and percentage<=100 then "merit"
 when percentage>=60 and percentage<80 then "1st Div"
 when percentage>35 and percentage<60 then "2nd div"
 when percentage<=35 then "fail"
 else "not correct %"
 end as grade
 from profile;
 
 update profile set
 percentage=(case
 when 2 then 90
  when 5 then 70
  end
)
where std_id in(2,5);

select sign(0);
select sign(-1.24);
select round(2.6);
select floor(2.36);
select ceil(2.36);
select round(sqrt(5));
select rand();

select std_id, upper(name)from profile;
select std_id, lower(name)from profile;
select std_id, concat(name,percentage)from profile;
select concat_ws("-","ankita","jagtap","omkar");
select trim("          Ankita        ");
select position("o" in "Hello world");
select locate("r" ,"Hello world",5);

select reverse("ankita");
select replace("ankita jagtap","jagtap","surname");
select rpad("ankita jagtap",20);
select lpad("ankita jagtap",20,"*");
select substring("ankita jagtap",4);
select right("www.google.com",2);
select find_in_set("ram","arjun ,ram,mohan");

select current_date();
select sysdate();
select current_time();
select curtime();
select year("2023-06-20 , 09:24:44");
select yearweek("2023-06-20 , 09:24:44");
select dayname("2023-06-20 , 09:24:44");
select monthname("2023-06-20 , 09:24:44");
select extract(year from "2023-06-20 , 09:24:44");
select extract(second from "2023-06-20 , 09:24:44");















 
