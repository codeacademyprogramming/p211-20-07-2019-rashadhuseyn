----create database Sosial_sebeke
--create table Users
--(
--ID int primary key identity,
--Name nvarchar(50),
--Surname nvarchar(50),
--Email nvarchar(100) UNIQUE
--)

--create table Posts
--(
--ID int primary key identity,
--Title nvarchar(100),
--Content nvarchar(max),
--Created_at datetime,
--Written_by int references Users(ID),
--Post_Likes int
--)

--create table Comments
--(
--ID int primary key identity,
--Content nvarchar(max),
--Created_at datetime,
--Written_to int references Posts(ID),
--Written_by int references Users(ID),
--Comment_Likes int
--)
--create view PostSearch as
--select
--Posts.Title,
--Posts.Content,
--Posts.Created_at,
--Post_Likes,
--CONCAT(Users.Name,'',Users.Surname) 'Full_Name',
--Users.Email
--from Posts
--join Users on Users.ID = Posts.Written_by

--create PROCEDURE Select_BY_User @user nvarchar(50)
--AS
--SELECT 
--Title,
--Content,
--CONCAT(Users.Name,'',Users.Surname) 'Full_Name'
--FROM Posts,Users
--where Users.Name = @user


--CREATE PROCEDURE Posts_BY_ID @Postid int
--AS
--SELECT 
--Title,
--Comments.Content,
--CONCAT(Users.Name,'',Users.Surname) 'Full_Name'
--FROM Comments,Posts, Users
--where Posts.ID = @Postid



--CREATE PROCEDURE Posts_BY_Date @start date= null , @end date = null
--AS
--SELECT 
--Title,
--Posts.Created_at,
--Comments.Content,
--CONCAT(Users.Name,'',Users.Surname) 'Full_Name'
--FROM Comments,Posts, Users
--where Posts.Created_at between @start and @end

