create table course(
	course_id int primary key,
	course_name varchar,
	course_duration int,
	course_fee decimal
)

insert into course(course_id,course_name,course_duration,course_fee)
values
(101, 'Data Science Basics', 30, 15000.00),
(102, 'Advanced SQL',  45, 20000.00),
(103, 'Web Development Bootcamp', 60, 25000.00),
(104, 'Cloud computing', 90, 30000.00),
(105, 'Salesforce development', 90, 42000.00);

 select * from course

 create table student(
	student_id int primary key,
	student_name varchar,
	age int,
	gender varchar,
	email varchar,
	course_id int,
	FOREIGN key (course_id)REFERENCES course(course_id)
)

 insert into student(student_id, student_name, age, gender, email, course_id)
 VALUES 
(1, 'Akash Patel', 20, 'Male','akash.patel@example.com',101),
(2, 'Neha Sharma', 22, 'Female','neha.sharma@example.com',102),
(3, 'Ravi Iyer', 21, 'Male','ravi.iyer@example.com',103),
(4, 'Kiran jain', 22, 'Female','kiran.jain@example.com',104),
(5, 'Shyam Tiwari', 23, 'Male','shyam.tiwari@example.com',105);

select * from student

create table department(
	department_id int primary key,
	department_name varchar,
	location varchar
)
insert into department(department_id,department_name,location)
values
(001, 'Human Resources','Mumbai'),
(002, 'Research and Development', 'Bangalore'),
(003, 'Finance', 'Delhi'),
(004, 'IT', 'Mumbai'),
(005, 'Finance', 'Delhi');

 select * from department

create table teacher(
	teacher_id int primary key,
	teacher_name varchar,
	subject varchar,
	experience_year int,
	email varchar,
	department_id int,
	FOREIGN key (department_id)REFERENCES department(department_id)
)
insert into teacher(teacher_id, teacher_name, subject, experience_year, email,department_id)
values
(301, 'Rajesh Iyer', 'Mathematics', 10, 'rajesh.iyer@example.com', 001),
(302, 'Anita Gupta', 'Physics', 8, 'anita.gupta@example.com',002),
(303, 'Mehul Arora', 'Chemistry', 12, 'mehul.arora@example.com', 003),
(304, 'Diya Jain', 'Biology', 7, 'diya.jain@example.com', 004),
(305, 'Shyam Gupta', 'IT', 12, 'shyam.gupta@example.com', 005);

select * from teacher

create table enrollment(
	enrollment_id int primary key,
	enrollment_date date,
	status varchar,
	student_id int not null,
	teacher_id int,
	FOREIGN key (student_id)REFERENCES student(student_id),
	FOREIGN key (teacher_id)REFERENCES teacher(teacher_id)
)

insert into enrollment(enrollment_id,enrollment_date,status,student_id,teacher_id)
values
(1, '2025-04-01', 'Active',1,301),
(2, '2025-03-15', 'Completed',2,302),
(3, '2025-04-20', 'Active',3,303),
(4, '2025-04-02', 'Completed',4,304),
(5, '2025-03-03', 'Active',5,305);

select * from enrollment