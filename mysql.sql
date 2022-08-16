show databases;
create database ineuron23;
use ineuron23;



create table bank_details23 (
age int ,
job varchar(30) , 
marital varchar(30) , 
education varchar(30),
`default` varchar(30),
balance int,
housing varchar(30) , 
loan varchar(30) ,
contact varchar(30) , 
`day` int , 
`month` varchar(30) , 
duration int , 
campaign int , 
pdays int , 
previous int , 
poutcome varchar(30),
y varchar(30));
select * from bank_details23;

insert into bank_details23 values 
(44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
(33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
(35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no");





select * from bank_details23;
select max(balance) from bank_details23;
 select marital,count(*) from bank_details group by marital;
 select * from bank_details where  balance = (select min(balance) from bank_details );
 
 set sql_safe_updates=0;
 update bank_details set balance=0 where job='unknown';
 select count(*)from bank_details23 group by marital;
 select marital, count(*)from bank_details23 group by marital;
 select marital, count(*),sum(balance) from bank_details23 group by marital;
 DELIMITER &&  
create procedure select_pre_filter() 
BEGIN
	select * from bank_details23 where job = 'retired' and balance > 100;
END &&  

call select_pre_filter();
show tables
 
 






