create schema SMS
use SMS
 create table student(
 student_id int 
 auto_increment primary key,
 first_name varchar(100),
 last_name varchar(100),
 date_of_birth date not null,
 gender enum('male','female'),
 email varchar(100) unique not null,
 phone varchar(100),
 address text
 )
 
 select *from student
 
//create courses table

create table course(
course_id int not null,
course_name varchar(100),
description text,
credits int
)

select *from course

//craete enrollment table
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT not null,
    course_id INT not null,
    enrollment_date DATE,
    FOREIGN KEY(student_id) REFERENCES Student(student_id)
)
select *from enrollments

//create grades table

create table grades(
grade_id int primary key,
enrollment_id int not null,
grade char(2),
foreign key(enrollment_id)
references enrollments(enrollment_id)
)

select *from grades

//create instructor table

create table instructor(
instructor_id int primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(50),
phone varchar(15),
department varchar(20)
)

select *from instructor
INSERT INTO Student 
VALUES (1,'John', 'Doe', '2000-01-15', 'Male', 'john.doe@example.com', '1234567890', '123 Main St'),
(2,'Jane', 'Smith', '1999-02-20', 'Female', 'jane.smith@example.com', '0987654321', '456 Maple Ave'),
(3,'Mani','kandan','2004-09-22','Male','iammani@gmail.com','8682853275','185 west wave'),
(4,'rahul','krish','2003-02-11','Male','rahulat2003@gmail.com','7586425362','52 east beng'),
(5,'ravi','kumar','2001-03-12','Male','ravik123@gmail.com','124567852','14 nangi street'),
(6,'Nisha','shree','2001-09-22','Female','nishashree@gmail.com','8286457895','53 north vel'),
(7,'Nisi','kumar','2004-10-05','Female','nisik23@gmail.com','8596741232','85 gandhi street'),
(8,'sathya','shree','2002-09-14','Female','sathyaat2002@gmail.com','7418529632','012 keel street'),
(9,'Rashi','sarava','2004-02-12','Female','rashisarava1@gamil.com','5967416412','89 medic near street'),
(10,'varun','ravi','2003-05-15','Male','varunat2003@gmail.com','7539518621','145 sing colony'),
(11,'Venkat', 'San', '2000-02-20', 'male', 'venkadesanv12gmail.com', '8122117936', '422 ,petrol bump pukkiravari'),
(12,'Mahi', 'Govindan', '1999-09-20', 'male', 'mahendiran35gmail.com', '8122296361', '400, east medu pukkiravari'),
(13,'parasu', 'raman', '2002-04-28', 'male', 'parasuran75gmail.com', '9342319832', '402, west medu pukkiravari,kallai'),
(14,'dhanush', 'kesav', '2001-07-21', 'male', 'dhanusms5gmail.com', '7296326598', '322, kallai main road pukkiravari'),
(15,'Thanga', 'durai', '2001-12-02', 'male', 'thangadurai55gmail.com', '9632548721', '37 main road kallai'),
(16,'Dhana', 'segar', '2001-03-18', 'male', 'dhanasekar79gmail.com', '5421963254', '38 main road pudhur'),
(17,'Priya', 'dharshini', '2004-05-19', 'female', 'priyadharshini79gmail.com', '8754625021', '22 first street vanavaretti'),
(18,'Pavithra', 'devi', '2005-05-24', 'female', 'devi8579gmail.com', '2542136932', '27 second street vanavaretti'),
(19,'Setha', 'devi', '2003-06-20', 'female', 'sethsdevi979gmail.com', '8', '22 first street vanavaretti'),
(20,'Sumithra', 'devi', '2002-09-21', 'female', 'sumithra9879gmail.com', '854215469', '29 third street vanavaretti,kallai'),
(21,'Alice', 'Johnson', '2001-05-10', 'Female', 'alice.johnson@example.com', '1112223333', '789 Pine St'),
(22,'Bob', 'Brown', '1998-11-15', 'Male', 'bob.brown@example.com', '2223334444', '321 Oak St'),
(23,'Charlie', 'Davis', '2002-03-12', 'Male', 'charlie.davis@example.com', '3334445555', '654 Cedar St'),
(24,'Diana', 'Evans', '2000-08-25', 'Female', 'diana.evans@example.com', '4445556666', '987 Spruce St'),
(25,'Evan', 'Foster', '1999-12-30', 'Male', 'evan.foster@example.com', '5556667777', '432 Birch St'),
(26,'Fiona', 'Green', '2003-02-20', 'Female', 'fiona.green@example.com', '6667778888', '123 Maple St'),
(27,'George', 'Harris', '2001-09-18', 'Male', 'george.harris@example.com', '7778889999', '456 Elm St'),
(28,'Hannah', 'Iverson', '1997-07-14', 'Female', 'hannah.iverson@example.com', '8889990000', '789 Ash St'),
(29,'Isaac', 'Jackson', '2002-11-25', 'Male', 'isaac.jackson@example.com', '9990001111', '321 Willow St'),
(30,'Jasmine', 'King', '2000-06-30', 'Female', 'jasmine.king@example.com', '0001112222', '654 Pine St'),
(31,'Kevin', 'Lewis', '1998-03-21', 'Male', 'kevin.lewis@example.com', '1112223333', '987 Oak St'),
(32,'Lily', 'Morris', '2003-01-10', 'Female', 'lily.morris@example.com', '2223334444', '432 Cedar St'),
(33,'Mark', 'Nelson', '1999-10-02', 'Male', 'mark.nelson@example.com', '3334445555', '123 Spruce St'),
(34,'Nina', 'Owens', '2001-04-22', 'Female', 'nina.owens@example.com', '4445556666', '456 Birch St'),
(35,'Oliver', 'Parker', '2000-07-15', 'Male', 'oliver.parker@example.com', '5556667777', '789 Maple St'),
(36,'Paula', 'Quinn', '1998-05-19', 'Female', 'paula.quinn@example.com', '6667778888', '321 Elm St'),
(37,'Quincy', 'Reed', '2002-12-28', 'Male', 'quincy.reed@example.com', '7778889999', '654 Ash St'),
(38,'Rachel', 'Stewart', '1999-08-11', 'Female', 'rachel.stewart@example.com', '8889990000', '987 Willow St'),
(39,'Samuel', 'Taylor', '2000-03-07', 'Male', 'samuel.taylor@example.com', '9990001111','432 Pine St'),
(40,'Tina', 'Underwood', '2001-09-22', 'Female', 'tina.underwood@example.com', '0001112222','123 Oak St');
select* from student

INSERT INTO Course
VALUES 
(1,'Algorithms and Data Structures', 'Study fundamental algorithms and data structures used in computer science.', 4),
(2,'Operating Systems', 'Learn about the design and implementation of operating systems.', 3),
(3,'Computer Networks', 'Introduction to computer networking concepts and protocols.', 3),
(4,'Software Engineering', 'Principles and practices of software engineering, including software development life cycles.', 4),
(5,'Artificial Intelligence', 'Explore concepts and techniques in artificial intelligence, including machine learning and neural networks.', 4),
(6,'Cybersecurity', 'Fundamentals of cybersecurity and protection of information systems.', 3),
(7,'Human-Computer Interaction', 'Study the design and evaluation of user interfaces and interaction techniques.', 3),
(8,'Mobile App Development', 'Learn to develop applications for mobile platforms like iOS and Android.', 4),
(9,'Cloud Computing', 'Overview of cloud computing services and architectures.', 3),
(10,'Game Development', 'Introduction to game design and development using various tools and programming languages.', 4)

NSERT INTO Instructor (instructor_id, first_name, last_name, email, phone, department)
VALUES
    (1, 'Rohn', 'Smith', 'john.smith@example.com', '1234567890', 'Mathematics'),
    (2, 'Hane', 'Doe', 'jane.doe@example.com', '0987654321', 'Physics'),
    (3, 'Hashael', 'Johnson', 'michael.johnson@example.com', '1122334455', 'Chemistry'),
    (4, 'Enamel', 'Davis', 'emily.davis@example.com', '6677889900', 'Biology'),
    (5, 'Robert', 'Brown', 'robert.brown@example.com', '5566778899', 'Computer Science'),
    (6, 'Linda', 'Wilson', 'linda.wilson@example.com', '2233445566', 'Engineering'),
    (7, 'David', 'Moore', 'david.moore@example.com', '3344556677', 'Economics'),
    (8, 'Susan', 'Taylor', 'susan.taylor@example.com', '4455667788', 'History'),
    (9, 'James', 'Anderson', 'james.anderson@example.com', '5566778899', 'Philosophy'),
    (10, 'Laura', 'Thomas', 'laura.thomas@example.com', '6677889900', 'Psychology')
    
    INSERT INTO enrollments
VALUES
(1, 1, 5, '2024-08-01'),
(2, 2, 2, '2024-08-01'),
(3, 3, 1, '2024-08-01'),
(4, 4, 3, '2024-08-01'),
(5, 5, 7, '2024-08-01'),
(6, 6, 1, '2024-08-01'),
(7, 7, 2, '2024-08-01'),
(8, 8, 3, '2024-08-01'),
(9, 9, 8, '2024-08-02'),
(10, 10, 5, '2024-08-02'),
(11, 11, 2, '2024-08-02'),
(12, 12, 3, '2024-08-02'),
(13, 13, 4, '2024-08-02'),
(14, 14, 5, '2024-08-02'),
(15, 15, 10, '2024-08-02'),
(16, 16, 2, '2024-08-02'),
(17, 17, 3, '2024-08-03'),
(18, 18, 4, '2024-08-03'),
(19, 19, 6, '2024-08-03'),
(20, 20, 7, '2024-08-03'),
(21, 21, 2, '2024-08-03'),
(22, 22, 1, '2024-08-03'),
(23, 23, 4, '2024-08-03'),
(24, 24, 7, '2024-08-04'),
(25, 25, 5, '2024-08-04'),
(26, 26, 1, '2024-08-04'),
(27, 27, 2, '2024-08-04'),
(28, 28, 5, '2024-08-04'),
(29, 29, 8, '2024-08-04'),
(30, 30, 5, '2024-08-04'),
(31, 31, 2, '2024-08-05'),
(32, 32, 6, '2024-08-05'),
(33, 33, 4, '2024-08-05'),
(34, 34, 5, '2024-08-05'),
(35, 35, 10, '2024-08-05'),
(36, 36, 9, '2024-08-05'),
(37, 37, 3, '2024-08-05'),
(38, 38, 7, '2024-08-05'),
(39, 39, 6, '2024-08-05'),
(40, 40, 10, '2024-08-05');

select*from enrollments

INSERT INTO grades 
VALUES
(101, 1, 'O'),
(102, 2, 'B'),
(103, 3, 'C'),
(104, 4, 'A'),
(105, 5, 'B'),
(106, 6, 'A'),
(107, 7, 'C'),
(108, 8, 'O'),
(109, 9, 'C'),
(110, 10, 'A'),
(111, 11, 'B'),
(112, 12, 'O'),
(113, 13, 'B'),
(114, 14, 'C'),
(115, 15, 'O'),
(116, 16, 'B'),
(117, 17, 'A'),
(118, 18, 'C'),
(119, 19, 'O'),
(120, 20, 'C'),
(121, 21, 'A'),
(122, 22, 'B'),
(123, 23, 'O'),
(124, 24, 'B'),
(125, 25, 'C'),
(126, 26, 'O'),
(127, 27, 'B'),
(128, 28, 'A'),
(129, 29, 'C'),
(130, 30, 'B'),
(131, 31, 'O'),
(132, 32, 'A'),
(133, 33, 'O'),
(134, 34, 'C'),
(135, 35, 'C'),
(136, 36, 'B'),
(137, 37, 'O'),
(138, 38, 'A'),
(139, 39, 'B'),
(140,40,'C');

select *from grades

INSERT INTO Instructor
VALUES
    (1, 'Rohn', 'Smith', 'ohn.smith@example.com', '1234567890', 'Mathematics'),
    (2, 'Hane', 'Doe', 'jane.doe@example.com', '0987654321', 'Physics'),
    (3, 'Hashael', 'Johnson', 'michael.johnson@example.com', '1122334455', 'Chemistry'),
    (4, 'Enamel', 'Davis', 'emily.davis@example.com', '6677889900', 'Biology'),
    (5, 'Robert', 'Brown', 'robert.brown@example.com', '5566778899', 'Computer Science'),
    (6, 'Linda', 'Wilson', 'linda.wilson@example.com', '2233445566', 'Engineering'),
    (7, 'David', 'Moore', 'david.moore@example.com', '3344556677', 'Economics'),
    (8, 'Susan', 'Taylor', 'susan.taylor@example.com', '4455667788', 'History'),
    (9, 'James', 'Anderson', 'james.anderson@example.com', '5566778899', 'Philosophy'),
    (10, 'Laura', 'Thomas', 'laura.thomas@example.com', '6677889900','Psychology');
    
    select*from instructor
   //add new column

alter table student add hobbie varchar(100)
select *from student

--change the column name

alter table student change hobbie std_hobbie varchar(100)
select*from student

--use drop

alter table student drop std_hobbie
select *from student

--use distinct 

select distinct first_name from student

--use where

select *from student where student_id>21

--use order by

select *from student order by student_id asc
select *from student order by student_id desc

--use group by

select count(student_id),gender from student group by gender
select sum(student_id),gender from student group by gender
select max(student_id),gender from student group by gender
select min(student_id),gender from student group by gender
select avg(student_id),gender from student group by gender

--use having clause

select count(student_id),gender from student group by gender having count(student_id)>20
select count(student_id),gender from student group by gender having count(student_id)>5 order by count(student_id) asc

--use and

select *from student where student_id=2 and gender='female'

--use or

select *from student where student_id=21 or first_name='jane'

--use not 

select *from student where not(student_id=1 or first_name='alice')
select *from student where not(student_id=1 and first_name='john')

--use between and not between

select*from student where student_id between 10 and 20
select*from student where student_id  not between 10 and 20

--find null values

select *from student where student_id is null

--use update

update student set first_name='johny' where first_name='john'
select*from student

--use delete

delete from student where first_name='rahul' 
select *from student

--use limit

select *from student limit 5

--use like

select*from student where first_name like'a%'
select*from student where first_name like'%a'
select*from student where first_name like'%a%'

--use wildcards

select*from student where first_name like'r_h_l'
select *from student where first_name like'__hul'
select*from student where first_name like'ra_'

--use escape

select*from student where first_name like'%@%%' 'escape @' --we can use(@,#,$,&) this to get module value

--use in and not in

select *from student where student_id in(1,5,6)
select*from student where student_id not in(1,5,6)

--use aliases

select first_name as name from student

--use innerjoin

select a.enrollment_id,a.student_id,a.course_id,a.enrollment_date,b.grade_id,b.enrollment_id,b.grade
from enrollments as a inner join grades as b on a.enrollment_id=b.enrollment_id

--use leftjoin

select a.enrollment_id,a.student_id,a.course_id,a.enrollment_date,b.grade_id,b.enrollment_id,b.grade
from enrollments as a left join grades as b on a.enrollment_id=b.enrollment_id

--use rightjoin

select a.enrollment_id,a.student_id,a.course_id,a.enrollment_date,b.grade_id,b.enrollment_id,b.grade
from enrollments as a right join grades as b on a.enrollment_id=b.enrollment_id

--use crossjoin

select *from enrollments cross join grades 

--use selfjoin

select*from enrollments,grades

--use union(similiar values only)

select enrollment_id from enrollments union
select enrollment_id from grades 

--use union all

select enrollment_id from enrollments union all
select enrollment_id from grades 

--use exists(subquery)

select enrollment_id from enrollments where exists
(select enrollment_id from grades where 
enrollments.enrollment_id=grades.enrollment_id and grade>121)

--use any,all

select enrollment_id from enrollments where enrollment_id=any
(select enrollment_id from grades where grade='o')

select enrollment_id from enrollments where enrollment_id<>all
(select enrollment_id from grades where grade in('a','b','c'))

--use case

SELECT enrollment_id, 
       grade,
       CASE
           WHEN grade = 'O' THEN 'top grade'
           WHEN grade = 'A' THEN 'top-medium grade'
           WHEN grade = 'B' THEN 'medium grade'
           ELSE 'low grade'
       END AS grade_stage
FROM grades;

--create stored procedure

DELIMITER //

CREATE PROCEDURE enrollment_grade ()
BEGIN

    SELECT * FROM enrollments;

    SELECT * FROM grades;
END //

DELIMITER ;

call enrollment_grade()

--create view 

create view std_details as
select *from student where student_id between 10 and 35

--create index

CREATE INDEX ind_student ON 
student (student_id, first_name, email, phone);

--use function-inbuilt(srf )
--use srf
--use length

select length(first_name) from student

--use cases

select upper(first_name)from student

select lower(first_name)from student

-use substring

select substring(first_name,2,2)from student

--use concat

select concat(first_name,last_name) from student

--use inticap

select concat(upper( substring(first_name,1,1)),lower(substring(first_name,2)))from student

--use reverse

select reverse(first_name)from student 

--use replace

select replace(first_name,'johny','john')from student where student_id=1

--use round

select round(15.2)from student

--use trim

select trim(first_name)from student

--craete trigger

--craete trigger

DELIMITER //

CREATE TRIGGER after_insert_enrollments
AFTER INSERT
ON enrollments
FOR EACH ROW
BEGIN
    INSERT INTO enrollment_log(enrollment_id, student_id, course_id, enrollment_date)
    VALUES (NEW.enrollment_id, NEW.student_id, NEW.course_id, NEW.enrollment_date);
END //

DELIMITER ;
