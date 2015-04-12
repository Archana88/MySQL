select date_format('2013-02-01','%W %D %M %Y %r');
select FROM_DAYS(735424);
select dayname(last_day(now()));
select database();
select * from employee;
select * FROM department;
select eno,ename,last_day(`joining date`) as 'first salary date' from employee;
select ename,eno,date_format(`joining date`,'%W %D %M %Y %r') from employee where year(`joining date`)=2013;
select ename from employee where dayname(`joining date`) in ('Saturday','Sunday');

use hospital;
select database();
select * from `patient details`;
load data local in file 'C:/Documents and Settings/user/Desktop/sql hospital.csv' into table `patient details` columns terminated by ',' lines terminated by '/n';
insert into `patient details` (pid,pname,dob,`last visit date`) values (1,'ram','1988-08-03','2011-03-04'),(2,'tom','1970-02-06','2010-01-08'),(3,'eve','1960-03-08','2012-09-05'),(8,'bob','1975-07-24','2009-02-03'); 
select pname,pid,`last visit date` from `patient details` where `last visit date` between '2012-03-03' and now();
select pname,pid,dob from `patient details` where month(dob)=month(now()) and day(dob)=day(now());
select pname,pid,timestampdiff(year,dob,now()) as age from `patient details` order by age;
select `last visit date`,date_add(`last visit date`, interval 6 month) as 'next visit' from `patient details`;
select pname,pid from `patient details` where timestampdiff(day,`last visit date`,now())>60;

