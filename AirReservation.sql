 create database io;

use io;

show tables;

show databases;


create table user (
id varchar(20) not null  primary key,
pw varchar(20) not null ,
name  varchar(20) not null ,
bir varchar(20) not null ,
email varchar(30) not null ,
number varchar(20) not null );

insert into user values('aaa', 'bbb', 'aba', '123', 'naver','000');
insert into user values('bbb', 'ccc', 'cdc', '456', 'google','111');

select * from user;

drop table user;
desc user;

create table abmin(
id varchar(20) not null primary key,
pw varchar(20) not null );

delete from user where id = 'aaa';

drop table abmin;
desc abmin;

create table airport (
code varchar(10)primary key,
nation varchar(20),
city varchar(20));
insert into airport values ('SYD','Australia','Sydney');
insert into airport values ('CBR','Canberra','Canberra');
insert into airport values ('MEL','Respected','Person');
insert into airport values ('AKL','NewZealand','Auckland');
insert into airport values ('CHC','Christchurch','Christchurch');
insert into airport values ('NAN','Fiji','Nadi');
insert into airport values ('GUM','UnitedStates','Guam');
insert into airport values ('SPN','Saipan','pan');
insert into airport values ('ICN','SouthKorea','Incheon');
insert into airport values ('GMP','SouthKorea','Gimpo');
insert into airport values ('HND','japan','Tokyo');
insert into airport values ('KIX','japan','Osaka');
insert into airport values ('PEK','China','Beijing');
insert into airport values ('PKX','China','Daxing');
insert into airport values ('LHR','england','london');
insert into airport values ('LCY','england','Manchester');
insert into airport values ('CDG','france','paris');
insert into airport values ('BOD','france','Bordeaux');
insert into airport values ('BRU','Belgium','brussels');
insert into airport values ('AMS','Netherlands','Amsterdam');
insert into airport values ('DUB','Ireland','Dublin');
insert into airport values ('BER','germany','Berlin');
insert into airport values ('DUS','germany','dusseldorf');
insert into airport values ('GVA','Swiss','Geneva');
insert into airport values ('ZRH','Swiss','Zurich');
insert into airport values ('WAW','Poland','Warsaw');
insert into airport values ('BUD','Hungary','Budapest');
insert into airport values ('PRG','cheko','Prague');
insert into airport values ('MAD','Spain','Rome');
insert into airport values ('BCN','Spain','milan');
insert into airport values ('MEX','Mexico','MexicoCity');
insert into airport values ('TLC','Mexico','Toluca');
insert into airport values ('MIA','USA','Miami');
insert into airport values ('ORD','USA','Chicago');
insert into airport values ('YYZ','Canada','Toronto');
insert into airport values ('GRU','Brazil','Saopaulo');

select * from airport;

drop table airport;
desc airport;

create table trip(
num int auto_increment primary key,
tripuser varchar(20),
startcode varchar(20),
endcode varchar(20),
go varchar(20),
back varchar(20),
peple varchar(20),
seatclax varchar(20),
foreign key (tripuser) references user (id) on delete cascade,
foreign key (startcode ) references airport (code),
foreign key (endcode ) references airport (code));

insert into trip(tripuser, startcode, endcode, go, back, peple, seatclax) values ('aaa', 'SYD', 'SYD', '11', '22', '2', 'eco');
insert into trip(tripuser, startcode, endcode, go, back, peple, seatclax) values ('bbb', 'TLC', 'SYD', '33', '44', '5', 'fir');

select * from trip;
select * from user;

delete from user where id='aaa';

select*from admin;

drop table trip;
desc trip;
