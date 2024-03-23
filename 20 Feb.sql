select adddate("2022-11-5", interval 1 week);
select adddate("2022-11-5", interval 1 month);
select adddate("2022-11-5", interval 1 year);
select subdate("2022-11-5", interval 1 week);
select adddate("2022-11-5", interval 1 month);
select makedate(2020, 3);
select datediff("2022-11-5","2022-11-9");
select date_format("2022-11-5","%Y");
select date_format("2022-11-5","%d-%b-%Y");
select str_to_date("july-11-2005","%M-%d-%Y");

select curtime();
select localtime();
select time("2022-10-02  13:15:20");
select hour("2022-10-02  13:15:20");
select minute("2022-10-02  13:15:20");
select second("2022-10-02  13:15:20");
select timediff("20:02:06" , "13:15:20");
select adddate("2022-10-02  13:15:20.005" ,"5:5.003");
select time_format("20:02:06" , "%H %i %s");


use  student;
alter table profile
add email varchar(30);

alter table profile
modify email varchar(30)
after name;

alter table profile
modify email int(3);

ALTER TABLE profile
add unique(email) ;

ALTER TABLE profile
change email Email_Id varchar(40);

ALTER TABLE profile
drop Email_Id ;

alter table profile
rename students;

alter table  cources
auto_increment =5;
drop table cources;
