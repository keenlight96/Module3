use day02_quanlysinhvien;

select * from Student where status = true;
select * from Subject where credit < 10;
select StudentID, StudentName, ClassName
from Student join Class on Student.ClassID = Class.ClassID
where Class.ClassName = "A1";

select S.StudentID, S.StudentName, Sub.SubName, M.Mark
from Student S join Mark M on S.StudentID = M.StudentID
join Subject Sub on M.SubID = Sub.SubID
where Sub.SubName = "CF";