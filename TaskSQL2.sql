create database taskSQL;
use taskSQL;

create table students(
StudentsID int(20),
StudentName varchar(30)
);

insert into students (StudentsID , StudentName)
value(1001,"Mary"),(1002,"Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Haroid");
select * from students;


create table course(
CourseId int(20),
CourseName varchar(30),
StudentID int(20)
);

insert into course(CourseId ,CourseName, StudentID)
value(5001,"PHP",1004),(5002,"Java" ,1001),(5003,"ASP.NET",1001),(5004,"Ruby",1002);
select * from course;


create table teacher(
TeacherID int(10),
TeacherName varchar(30),
CourseID int(10)
);


insert into teacher (TeacherID ,TeacherName,CourseID)
value(3001,"Jill",5003),(3002,"Greul",5002),(3003,"Jenkins",5001),(3004,"Polo",5004);
select * from teacher;


select * from students as s join course as c on s.StudentsID=c.StudentID where CourseName='ASP.NET';
select * from students as s inner join course as c on s.StudentsID=c.StudentID inner join teacher as t on c.CourseID=t.CourseID where t.TeacherName='jill';
select * from students as s left  join  course  as c on s.StudentsID =c.StudentID;
select * from students as s right join  course  as c on s.StudentsID =c.StudentID;
select * from students as s cross join course  as c on s.StudentsID =c.StudentID;
select * from students where StudentsID like 'a%';
select * from students where StudentName like '%a%';
