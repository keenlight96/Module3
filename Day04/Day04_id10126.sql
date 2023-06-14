use day02_quanlysinhvien;

select * from Subject
where Credit = (select max(Credit) from Subject);

select * from Subject
join Mark on Mark.SubID = Subject.SubID
where Mark = (select max(Mark) from Mark);

select S.StudentID, S.StudentName, S.Address, S.Phone, avg(Mark) from Student s
join Mark on Mark.StudentID = S.StudentID
group by StudentID
order by avg(Mark) desc;