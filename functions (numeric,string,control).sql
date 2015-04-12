select truncate(salary+(ifnull(commission,20.50)),-4) from employee; /* to test numeric functions*/
select * from employee;
select length(length(ename)-replace(ename,'a','sword')/4) from employee; /*to find no. of times a occurs in ename*/
select * from employee where length(length(ename)-replace(ename,'a','sword')/4)>=1; /* to find names with a occuring >=1 times*/
select * from department;
select @dno:=dno from department where dname='test'; /* to store dno from dname in a variable @dno for next command*/
select concat(ename,'_tester') from employee where dno=@dno; /* to concatenate ename with '-tester'*/
select * from employee where locate('ni',ename)>=1; /*to locate 'ni'*/
select concat(concat(ucase(job),' ->->-> '),dno) from employee; /* to display job->->->dno*/ 
select 6/100*(salary+(ifnull(commission,20))) as '6% of Total salary',ceiling(6/100*(salary+(ifnull(commission,20)))) as 'Approximate',salary+(ifnull(commission,20)) as 'Total Salary' from employee;
update employee set job='java engineer' where job like 'java';
select @@autocommit;
select if(salary>5000,concat(concat(eno,'&'),dno),salary) from employee;
select ename,eno from employee where dno = (case 'development' when 'development' then 20 when 'test' then 10 end);
