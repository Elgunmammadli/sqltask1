/*--create database
create database [Task]
*/
/*
--use database
use Task
*/
/*
--create table
create table [dbo].[Students](
Id int identity(1,1) primary key,
Firstname nvarchar(100) not null,
Surname nvarchar(100) not null,
Birthdate date not null,
PlaceOfRegistration nvarchar(100) not null,
Gender bit not null,
GroupName varchar(20) not null,
Specialty varchar(50) not null,
Faculty varchar(50) not null)
*/
/*
--added values
insert into [dbo].[Students]
values('Nurlan','Mahmudov','2002-12-18',N'Ağdaş',1,'683.1','Frontend developer','Information technology'),
(N'Elgün',N'Məmmədli','2002-09-07','Qax',1,'681.1','Frontend developer','Information technology'),
('Abdurahman','Muradov','2004-02-23','Zaqatala',1,'683.1','Backend developer','Information technology'),
('Bayram','Dursunov','1998-04-04','Qusar',1,'681.1','Dizayner','Information technology'),
('Sevinc','ibrahimova','1999-08-30',N'Şamaxı',0,'683.1','Frontend developer','Information technology'),
('Sevil',N'Əliyeva','2003-10-07','Bakı',0,'681.1','Dizayner','Information technology')
*/


/* --query 1
-- 683.1 qrupunda oxuyan tələbələri göstərmək
select * from [dbo].[Students]
where [GroupName]='683.1'
*/

/*--query 2
-- 681.1 qrupunda oxuyan tələbələrin ancaq adı və soyadı sütünlarındakı məlumatları göstərmək
select [FirstName],[Surname] from [dbo].[Students]
where [GroupName]='681.1'
*/

/*--query 3
--Soyada görə [A-Z]`e siralama
select * from [dbo].[Students]
order by [Surname]
*/

/*--query 4
--Adında e və y hərfləri olmayan tələbələri göstərmək
select * from [dbo].[Students]
where [Firstname] not like '%[ey]%'
*/

BACKUP DATABASE [Task]
TO DISK = 'D:\task1.bak';