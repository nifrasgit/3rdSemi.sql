create database university;
use university;

create table student 
(
	Student_No varchar(10) ,	
	Student_Name varchar(30), 		
	Address varchar(30), 	 	
	Year_Study int,
	Sex varchar(10), 		
	Date_of_birth date,	
	Course_No varchar(10), 
	primary key(Student_No)
);

insert into student values 
("ST100","K.Ranjan","Kandy",1,"Male","1988-01-17","C1"),
("ST101","N.Kumanan","Jaffna",2,"Male","1989-12-15","C2"),
("ST102","S.Ranjini","Vavuniya",1,"Female","1989-01-17","C1"),
("ST103","K.Dias","Colombo",3,"Male","1987-07-22","C1"),
("ST104","A.Kavitha","Matara",3,"Female","1985-03-20","C2"),
("ST105","L.Lavanya","Galle",2,"Female","1989-04-22","C2"),
("ST106","G.Moorthy","Jaffna",2,"Male","1986-01-12","C1"),
("ST107","F.Nathan","Matara",2,"Male","1990-01-29","C3"),
("ST108","A.H.M.Akmal","Puttalam",1,"Male","1990-12-12","C3");

create table result 
(
	Student_No varchar(10),
	Subject_No varchar(10),
	Year_Exam int,
	Marks int,
	primary key(Student_No,Subject_No,Year_Exam)
);

insert into result values
("ST101","SU03",1,69),
("ST102","SU01",1,61),
("ST101","SU04",1,70),
("ST101","SU05",1,87),
("ST103","SU01",2,51),
("ST103","SU03",1,59),
("ST103","SU01",3,56),
("ST108","SU01",1,78),
("ST105","SU05",2,98);

create table subject 
(
	Subject_No varchar(10),
	Subject_Name varchar(50),
	Dept_Name varchar(30),
	primary key(Subject_No)
);


insert into subject values
("SU01","Limit Process","Mathematics"),
("SU02","Linear Programming","Mathematics"),
("SU03","Atomic and Molecular Structure","Chemistry"),
("SU04","Cell Biology","Botany"),
("SU05","Genetics","Zoology"),
("SU06","Computer Architecture","Computer Science"),
("SU07","Relativity and structure of matter","Physics");

create table course
(
	Course_No varchar(10),	
	Title varchar(30),	
	Duration int,
	primary key(Course_No)
);

insert into course values
("C1","Physical Science",3),
("C2","Bio Science",3),
("C3","Computer Science",4);

create table consists
(
	Course_No varchar(10),	
	Subject_No varchar(10),
	primary key(Course_No,Subject_No)
);

insert into consists values
("C1","SU01"),
("C1","SU02"),
("C1","SU03"),
("C2","SU03"),
("C2","SU04"),
("C2","SU05"),
("C3","SU01");

create table Department
(
	Dept_Name varchar(30),
	Head varchar(30),
	primary key(Dept_Name)
);

insert into Department values
("Mathematics","Dr.R.Ponding"),
("Chemistry","Dr.N.Jhonsan"),
("Botany","Prof.L.Nelson"),
("Zoology","Dr.B.Lee"),
("Computer Science","Dr.M.Clusner"),
("Physics","Dr.K.Cork");


