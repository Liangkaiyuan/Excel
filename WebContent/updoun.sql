use master 
go
if exists(select * from sysdatabases where name='noel')
drop database noel
go
create database noel
go
use noel
go
if exists (select * from sysobjects where name='book')
drop table book
go
create table book
(
	bookId int identity(1,1),
	bookName varchar(30),
	bookAuthor varchar(20),
	bookPrice float,
	bookISBN varchar(20),
	bookLoad varchar(50),
	bookImg varchar(20)
)
insert into book values('jsp','leno',300.33,'1234567','清华出版社','d:/jpg')
insert into book values('java编程思想','brucl',300.33,'1234567','清华出版社','d:/jpg')
insert into book values('jsp2','leno',300.33,'1234567','阳光出版社','d:/jpg')
insert into book values('jsp3','leno',300.33,'1234567','清华出版社','d:/jpg')
insert into book values('jsp4','leno',300.33,'1234567','阳光出版社','d:/jpg')
insert into book values('jsp4','leno',300.33,'1234567','阳光出版社','d:/jpg')
select * from book