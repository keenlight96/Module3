use day02_quanlysinhvien;

select Address, count(*) as SlgSV from student
group by Address;

select Student.StudentID, Student.StudentName, avg(Mark.Mark) as AverageMark from Student
join Mark on Mark.StudentID = Student.StudentID
group by Student.StudentID;

select Student.StudentID, Student.StudentName, avg(Mark.Mark) as AverageMark from Student
join Mark on Mark.StudentID = Student.StudentID
group by Student.StudentID
having AverageMark > 9;

select Student.StudentID, Student.StudentName, avg(Mark.Mark) as AverageMark from Student
join Mark on Mark.StudentID = Student.StudentID
group by Student.StudentID
having AverageMark >= all (select avg(mark) from Mark group by StudentID);

select Student.StudentID, Student.StudentName, avg(Mark.Mark) as AverageMark from Student
join Mark on Mark.StudentID = Student.StudentID
group by Student.StudentID
having AverageMark = (select max(Max1) from (select studentId, avg(Mark) as Max1 from Mark group by StudentId) as temp);
