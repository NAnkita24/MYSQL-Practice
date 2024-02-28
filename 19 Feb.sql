create view studentCourse
as
select std_id ,name,cityname
from students inner join city
on students.city =city.cid;
use student;

alter view studentCourse
as
select std_id ,name
from students inner join city
on students.city =city.cid;

rename table studentCourse to studentData;

create index std on students(percentage);
show index from students;
drop index std on students;