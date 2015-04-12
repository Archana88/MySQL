alter table employee add foreign key(dno) references department(dno) on delete cascade on update cascade;
desc employee;
show create table employee;
select database();
show tables;
desc department;
show create table department;
alter table department drop dno;
alter table employee change dno dno tinyint unsigned;
set @@autocommit = 0;
select @@autocommit;
start transaction;
insert into department values ('test','bangalore',10);
select * from department;
insert into department values ('test');

select @@autocommit;
select * from department;
start transaction;
insert into department values ('test');
insert into department values ('developing','bangalore',20),('research','chennai',25);
commit;
insert into employee values (1,'raj',1000,'java','2013-03-01',12,null);
desc employee;
select * from employee;
insert into employee values (null,'raji',3000,'c','2013-04-01',10,null);
insert into employee values (null,'ravi',5000,'c++','2013-08-01',20,null),(null,'rani',8000,'c','2013-12-01',25,null);
start transaction;
update department set dname='hr' where dname like 'java';
select version();
update employee set dno=30 where dname like 'j';
commit;
rollback;
start transaction;
update employee set ename='priya';

