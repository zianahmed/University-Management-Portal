create database Flex;
use Flex;

Create Table DUser(
id NUMERIC(4),
password Varchar(10),
Type VarChar(10), --Faculty,Academic,Student
Primary Key(id)
);

Create Table Info(
id NUMERIC(4),
DName Varchar(40),
Email Varchar(50),
IAddress Varchar(50),
Phone Varchar(20),
Primary Key(id),
Foreign Key(id) references DUSer(id) ON Delete CASCADE ON UPDATE CASCADE
);

Create Table Teacher(
id NUMERIC(4),
Dept Varchar(20), --FSM,CS,EE,SH
Position Varchar(20), --Lecturer,Lab Instructor
Primary Key(id),
Foreign Key(id) references DUSer(id) ON Delete CASCADE ON UPDATE CASCADE
);

Create Table Student(
id NUMERIC(4),
Dept Varchar(20), --FSM,CS,EE
Degree Varchar(20),
Batch VarChar(4),
GPA Decimal(3,2),
Primary Key(id),
Foreign Key(id) references DUSer(id) ON Delete CASCADE ON UPDATE CASCADE
);

CREATE TABLE Course (
    id Varchar(10),
    CName VARCHAR(30),
    Dept Varchar(20),
	CrdHrs NUMERIC(2),
    PreReq Varchar(10),
	Primary Key(id)
);

Create Table Section (
	SName Varchar(10),
	Semester VarChar(20)
	Primary Key(SName)
);



Create Table Attendance (
	ACourse VarChar(10),
	ASection Varchar(10),
	AStudent Numeric(4),
	Remarks Varchar(3), --A,P,L
	ADate Date,
	Hrs Decimal(2,1),
	foreign key(AStudent) references Student(id),
	foreign key (ASection) references Section(SName),
	foreign key (ACourse) references Course(id)
);




Create Table Registered (
	RStudent numeric(4),
	RCourse VarChar(10),
	RSection VarChar(10),
	Foreign Key(RCourse) references Course(id),
	Foreign Key(RStudent) references Student(id),
	Foreign Key(RSection) references Section(SName)
);

Create Table Teaches (
	TTeacher Numeric(4),
	TSection VarChar(10),
	TCourse Varchar(10),
	Foreign Key (TSection) references Section(SName),
	Foreign Key(TCourse) references Course(id),
	Foreign Key (TTeacher) references Teacher(id) 
); 


Create Table Feedback(
	FStudent Numeric(4),
	FTeacher Numeric(4),
	FCourse Varchar(10),F
	Score integer,
	Comments Varchar(250),
	Foreign Key(FCourse) references Course(id),
	Foreign Key(FStudent) references Student(id),
	Foreign Key(FTeacher) references Teacher(id)
);

Create Table Weightage(
	WCourse VarChar(10),
	WSection Varchar(10),
	WType VarChar(20),
	Weight integer,
	Foreign Key(WSection) References Section(SName),
	Foreign Key(Wcourse) References Course(id),
);

Create Table Evaluation(
	EStudent numeric(4),
	ESection Varchar(10),
	ECourse VarChar(10),
	Obtained int,
	Total int,
	EType VarChar(20),
	Foreign Key(ESection) References Section(SName),
	Foreign Key(Ecourse) References Course(id),
	Foreign Key(EStudent) References Student(id),
);

Create table Transcript(
	Cid VarChar(10),
	TStudent Numeric(4),
	TSection VarChar(10), 
	Grade Varchar(2),
	Points Decimal(3,2),
	Foreign key (Cid) references Course(id),
	Foreign key (TSection) references Section(SName),
	Foreign key (TStudent) references Student(id)
);

Create Table GrandTotal(
	GStudent numeric(4),
	GSection Varchar(10),
	GCourse VarChar(10),
	Obtained int,
	Foreign Key(GSection) References Section(SName),
	Foreign Key(Gcourse) References Course(id),
	Foreign Key(GStudent) References Student(id),
);

Create Table Grades (
letter Varchar(3),
Points Decimal(3,2),
UMarks int,
LMArks int,
);

Create Table Offered(
OCourse VarChar(10),
OSemester VarChar(20),
Foreign Key(OCourse) References Course(id) 
);


Insert Into Grades Values ('A+',4.33,90,150);
Insert Into Grades Values ('A',4,86,90);
Insert Into Grades Values ('A-',3.67,82,86);
Insert Into Grades Values ('B+',3.33,78,82);
Insert Into Grades Values ('B',3,74,78);
Insert Into Grades Values ('B-',2.67,70,74);
Insert Into Grades Values ('C+',2.33,66,70);
Insert Into Grades Values ('C',2,62,66);
Insert Into Grades Values ('D+',1.67,58,62);
Insert Into Grades Values ('D',1.33,54,58);
Insert Into Grades Values ('D-',1,50,54);
Insert Into Grades Values ('F',0,0,50);

BULK INSERT DUser 
FROM 'E:\Website1\SQL\DUser.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Info 
FROM 'E:\Website1\SQL\Info.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Teacher 
FROM 'E:\Website1\SQL\Teacher.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Student 
FROM 'E:\Website1\SQL\Student.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Course 
FROM 'E:\Website1\SQL\Courses.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Section 
FROM 'E:\Website1\SQL\Section.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);


BULK INSERT Transcript 
FROM 'E:\Website1\SQL\Transcript.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);


BULK INSERT Registered 
FROM 'E:\Website1\SQL\Registered.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Evaluation 
FROM 'E:\Website1\SQL\Evaluation.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT Offered 
FROM 'E:\Website1\SQL\Offered.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);



BULK INSERT Teaches 
FROM 'E:\Website1\SQL\Teaches.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);

BULK INSERT FeedBack 
FROM 'E:\Website1\SQL\FeedBack.csv'
WITH ( FORMAT='CSV',
	   FIRSTROW=2,
	   FIELDTERMINATOR=',',
	   ROWTERMINATOR='\n',
	   KEEPNULLS
	);


Create Function AdminSignUP ()
returns Varchar(4)
as
Begin
Declare @count NUmeric(4)=(Select Top(1) id from DUser Order by id Desc)+1; 
return  @count;
End


Create procedure trans @sid numeric(4) 
as 
begin 

Select Transcript.Cid as 'Course Code',Course.CName as 'Course',Section.Semester as 'Semester' ,Course.CrdHrs as 'Credit Hours',Transcript.Grade as 'Grade',Transcript.Points as 'Points'
from Transcript Inner Join Course
on Transcript.Cid=Course.id
inner join section
on Section.SName=Transcript.TSection
order by Section.Semester;
end
drop procedure trans;


Create procedure attend @sid numeric(4),@cid Varchar(10),@sect Varchar(10)
as 
begin 

Select CONVERT(date,Attendance.ADate,103) AS 'Date',Attendance.Hrs as 'Duration',Attendance.Remarks as 'Presence' from 
Attendance inner join Course on Attendance.ACourse=Course.id
Inner Join Section on Attendance.ASection=Section.SName
where Course.id=@cid AND @sid=Attendance.AStudent AND Section.SName=@sect
Order by Attendance.ADate

end


Create procedure sreg @sid numeric(4) 
as 
begin 

Select Registered.RCourse as 'Course',Registered.RSection as 'Section' from Registered
where Registered.RStudent=@sid

end


Create procedure marks @id numeric(4),@course VarChar(10),@type VarChar(20),@sect VarChar(10) 
as 
begin 

Select ROW_NUMBER() OVER (ORDER BY Evaluation.Obtained) AS 'Sr.No',Evaluation.Obtained ,Evaluation.Total 
from Evaluation Inner Join Course on Evaluation.ECourse=Course.id 
Inner Join Section on Evaluation.ESection=Section.SName
where Evaluation.EStudent=@id AND Evaluation.ECourse=@course
AND @type=Evaluation.EType AND Evaluation.ESection=@sect
end

Create procedure setfb @sid numeric(4),@tid numeric(4),@cid VarChar(10),@fbscore integer,@fbcomments varchar(250) 
as 
begin 

Insert into Feedback Values (@sid,@tid,@cid,@fbscore,@fbcomments);

end

Create Procedure teachsub @tid numeric(4)
as begin 
Select Teaches.TCourse as 'Course',Teaches.TSection as 'Section' from Teaches where Teaches.TTeacher=@tid;
end


Create procedure RegStudent @cid Varchar(10),@sid Varchar(10)
as 
begin
Select Registered.RStudent as 'Roll No',Info.DName as 'Name'  from Student Inner Join Registered
on Student.id=Registered.RStudent
Inner Join Info
On Student.id=Info.id
where RCourse=@cid AND RSection=@sid
order by Registered.RStudent
end

Create Procedure CalcGrand @sid numeric(4),@cid VarChar(10),@sect Varchar(10)
as
Begin  
Declare @Qtotal float= isnull((Select SUM(Evaluation.Total) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Quiz')),1);
Declare @QObt float= isnull((Select SUM(Evaluation.Obtained) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Quiz')),0);
Declare @QWeight float= isnull((Select Weight from Weightage where WCourse=@cid AND WSection=@sect AND UPPER(WType)=UPPER('Quiz')),1);

Declare @Atotal float= isnull((Select SUM(Evaluation.Total) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Assignment')),1);
Declare @AObt float= isnull((Select SUM(Evaluation.Obtained) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Assignment')),0);
Declare @AWeight float= isnull((Select Weight from Weightage where WCourse=@cid AND WSection=@sect AND UPPER(WType)=UPPER('Assignment')),1);

Declare @Mtotal float= isnull((Select SUM(Evaluation.Total) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Mid')),1);
Declare @MObt float= isnull((Select SUM(Evaluation.Obtained) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Mid')),0);
Declare @MWeight float= isnull((Select Weight from Weightage where WCourse=@cid AND WSection=@sect AND UPPER(WType)=UPPER('Mid')),1);

Declare @Ptotal float= isnull((Select SUM(Evaluation.Total) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Project')),1);
Declare @PObt float= isnull((Select SUM(Evaluation.Obtained) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Project')),0);
Declare @PWeight float= isnull((Select SUM(Weight) from Weightage where WCourse=@cid AND WSection=@sect AND UPPER(WType)=UPPER('Project')),1);

Declare @Ftotal float= isnull((Select SUM(Evaluation.Total) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('FInal')),1);
Declare @FObt float= isnull((Select SUM(Evaluation.Obtained) from Evaluation where EStudent=@sid AND ECourse=@cid AND ESection=@sect AND UPPER(EType)=UPPER('Final')),0);
Declare @FWeight float= isnull((Select SUM(Weight) from Weightage where WCourse=@cid AND WSection=@sect AND UPPER(WType)=UPPER('FInal')),1);

DECLARE @gt FLOAT = ROUND(((@QObt / NULLIF(@QTotal, 0)) * @QWeight)
                        + ((@AObt / NULLIF(@ATotal, 0)) * @AWeight)
                        + ((@MObt / NULLIF(@MTotal, 0)) * @MWeight)
                        + ((@PObt / NULLIF(@PTotal, 0)) * @PWeight)
                        + ((@FObt / NULLIF(@FTotal, 0)) * @FWeight), 0);
SET @gt = ISNULL(@gt, 0);
insert into GrandTotal Values (@sid,@sect,@cid,@gt);
end

CREATE PROCEDURE Calcgt(
    @section_name VARCHAR(10),
    @course_id VARCHAR(10)
)
AS
BEGIN
    
	delete from GrandTotal where GSection=@section_name AND GCourse=@course_id;
	DECLARE @student_id NUMERIC(4);
    DECLARE @registered_students CURSOR;

    SET @registered_students = CURSOR FOR
    SELECT RStudent
    FROM Registered
    WHERE RSection = @section_name AND RCourse = @course_id;

    OPEN @registered_students;
    FETCH NEXT FROM @registered_students INTO @student_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        EXEC CalcGrand @student_id, @course_id, @section_name;
        FETCH NEXT FROM @registered_students INTO @student_id;
    END;

    CLOSE @registered_students;
    DEALLOCATE @registered_students;
END;

Select * from Grades;

CREATE PROCEDURE GradeCount
    @sect Varchar(10),
    @cid Varchar(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT GS.letter as 'Grade', isnull(COUNT(*),0) AS 'SCount'
    FROM GrandTotal GT
    JOIN Grades GS ON GT.Obtained >= GS.UMarks AND GT.Obtained < GS.LMarks 
    WHERE GT.GSection = @sect
        AND GT.GCourse = @cid
    GROUP BY GS.letter;

END

CREATE PROCEDURE GradeStudent
    @sect VarChar(10),
    @cid VarChar(10)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT ST.id AS 'Roll No', ST.DName AS 'Name', GT.Obtained AS 'Obtained', GS.letter as 'Grade'
    FROM GrandTotal GT
    JOIN info ST ON GT.GStudent = ST.id
    JOIN Grades GS ON GT.Obtained >= GS.UMarks AND GT.Obtained < GS.LMarks
    WHERE GT.GSection = @sect
        AND GT.GCourse = @cid
	ORDER BY ST.id;

END

CREATE PROCEDURE PerAttend @sect Varchar(10),@cid VarChar(10)
AS
BEGIN
    SELECT
        A.AStudent as 'Roll No',Info.DName as 'Name',
        ROUND((SUM(CASE WHEN A.Remarks = 'P' THEN A.Hrs WHEN A.Remarks = 'L' THEN (A.Hrs/2) ELSE 0 END) / SUM(A.Hrs)) * 100, 0) AS 'Percentage'
    FROM
        Attendance A Join Info on A.AStudent=Info.id
    WHERE
        A.ACourse = @cid
        AND A.ASection = @Sect
    GROUP BY
        A.AStudent,Info.DName;
END;

create procedure getFb @tid Numeric(4),@cid VarChar(10)
AS
BEGIN

Select F.FStudent as 'Roll No',I.DName as 'Name',F.Score as 'Points',F.COmments as 'Comments' from 
FeedBack F Join Info I on F.FStudent=I.id  
where F.FCourse= @cid AND F.FTeacher=@tid;


END

CREATE PROCEDURE UpdateGrade 
    @cid VARCHAR(10),
    @sect VARCHAR(10)
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM Transcript WHERE Cid = @cid AND TSection = @sect;

    INSERT INTO Transcript (Cid, TStudent, TSection, Grade, Points)
    SELECT @cid, G.GStudent, G.GSection, GR.letter, GR.Points
    FROM GrandTotal G
    JOIN Grades GR ON G.Obtained >= GR.UMarks AND G.Obtained < GR.LMarks
    WHERE G.GCourse = @cid AND G.GSection = @sect
        AND G.GStudent NOT IN (SELECT TStudent FROM Transcript WHERE Cid = @cid AND TSection = @sect);
END;

Select C.id + ' - ' + C.CName as 'Course' from Teaches T Inner Join Section S On T.TSection=S.SName Inner Join Course C On T.TCourse=C.id where S.Semester=@sem;  
Create Procedure SectionReport @sect VarChar(10),@sem VarChar(20)
as 
Begin
	Select Distinct R.RStudent as 'Roll No',I.DName as 'Name'  
	from Info I Inner Join Registered R
	On I.id=R.RStudent
	Inner Join Section S On S.SName=R.RSection
	where S.SName=@sect AND S.Semester=@sem
	Order By R.RStudent;
END

Create PROCEDURE CourseReport @cid VarChar(10),@sem VarChar(20)
As
BEGIN
	Select Distinct I.DName as 'Name',S.SName as 'Section'   
	from Info I Inner Join Teaches T
	On I.id=T.TTeacher
	Inner Join Section S On S.SName=T.TSection
	where TCourse=@cid AND S.Semester=@sem
	order by S.SName;
END


CREATE PROCEDURE OfferedReport @sem VarChar(20)
AS
BEGIN
	Select C.id as 'Course Code',C.CName as 'Course',C.CrdHrs AS 'Crd Hrs'   
	from Offered O INNer Join Course C ON O.OCourse=C.id
	where O.OSemester=@sem;
END

Create PROCEDURE SelectCourse
    @sid NUMERIC(4),
    @sem VARCHAR(20)
AS
BEGIN
    DECLARE @i INT = (SELECT COUNT(*) AS count FROM Registered WHERE RStudent = @sid AND RSection IS NULL);

    IF @i > 1
    BEGIN
        SELECT NULL AS 'Code', NULL AS 'Course', NULL AS 'Crd Hrs';
    END
    ELSE
    BEGIN
        SELECT C.id AS 'Code', C.CName AS 'Course', C.CrdHrs AS 'Crd Hrs'
        FROM Offered O
        INNER JOIN Course C ON O.OCourse = C.id
        WHERE
            (
                (C.PreReq IN (
                    SELECT T.Cid
                    FROM Transcript T
                    WHERE T.TStudent = @sid AND T.Points >= 1
                ) OR C.PreReq IS NULL)
                AND O.OSemester = @sem
            )
            AND O.OCourse NOT IN (
                SELECT OCourse
                FROM Registered
                WHERE RStudent = @sid AND RSection IS NULL
            );
    END
END

Create Procedure CourseOffer @sem Varchar(20)
AS
BEGIN
	
	Select Course.id as 'Code',Course.CName as 'Course',Course.CrdHrs as 'Crd Hrs' from Course 
	where Course.id Not IN (Select OCourse from Offered where OSemester=@sem);


END

