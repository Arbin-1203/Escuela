create database escuela

create table school
(
SchoolId int primary key,
SchoolName varchar(1000),
Description varchar(50),
address varchar(50),
Phone varchar(50),
PostCode varchar(50),
PostAddress varchar(50)
)

create table class
(
ClassId int primary key,
SchoolId int,
ClassName varchar(50),
Description varchar(1000)
foreign key (SchoolId) references school(SchoolId)
)

create table course
(
CourseId int primary key,
CourseName varchar(50),
SchoolId int,
Descripton varchar(1000)
foreign key (SchoolId) references school(SchoolId)
)

create table teacher
(
TeacherID int primary key,
SchoolId int,
TeacherName varchar(50),
Description varchar(1000)
foreign key (SchoolId) references school(SchoolId)
)

create table STUDENT_COURSE
(
	StudentID int, 
	CourseID int,
	Foreign key (CourseId) references course(CourseId),
)

create table STUDENT
(
	StudentID int, 
	ClassID int, 
	Student_Name varchar (100),
	Student_Number varchar (20), 
	Total_Grade float,
	Addres varchar(100),
	Phone varchar (20),
	Email varchar (100),
	foreign key (StudentID) references class(ClassId),
)

create table Teacher_Course

(
	TeacherID int,
	CourseID int, 
)

Create table GRADE
(
	GradeID int, 
	StudentID int,
	CourseID int,
	Grade float,
	Comment varchar(1000),
	foreign key (GradeID) references course(CourseId),
)