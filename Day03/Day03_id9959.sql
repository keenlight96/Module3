use day02_quanlysinhvien;

select * from Student
where StudentName like "H%";

select * from Class
where month(StartDate) = 12;

select * from Subject
where Credit between 3 and 5;

update Student
set ClassID = 2
where StudentID = 1;

select S.StudentName, Sub.SubName, M.Mark
from Mark M join Subject Sub on M.SubID = Sub.SubID
join Student S on S.StudentID = M.StudentID
order by Mark desc, StudentName asc;
