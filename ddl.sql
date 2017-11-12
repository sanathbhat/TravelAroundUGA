/*drop database tau;*/
create database tau;

drop table bustravel;
drop table bus;
drop table buspath;
drop table walkpath;
drop table event;
drop table landmark;
drop table user;


create table user (
	userId varchar(20) primary key,
    password varchar(20),
    name varchar(50),
    emailId varchar(30),
    userType varchar(1) check (userType in ('A', 'R'))
);

create table landmark (
	landmarkId VARCHAR(3) primary key,
    name varchar(30),
    latitude decimal(7, 4),
    longitude decimal(7, 4)
);

create table event (
	eventId int primary key auto_increment,
    name varchar(50),
    description varchar(200),
    startDateTime datetime,
    userId varchar(20) references user(userId),
    landmarkId varchar(3) references landmark(landmarkId)
);

create table walkpath (
	pathId int primary key auto_increment,
    name varchar(7) unique,
    startsAt varchar(3) references landmark(landmarkId),
    endsAt varchar(3) references landmark(landmarkId),
    distance decimal(6, 4),
    travelTime smallint,
    compassDirection varchar(2) check (compassDirection in ('N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW')),
    description varchar(200)
);

create table buspath (
	pathId int primary key auto_increment,
    name VARCHAR(7) unique,
    startsAt varchar(3) references landmark(landmarkId),
    endsAt varchar(3) references landmark(landmarkId),
    distance decimal(4, 2),
    travelTime smallint
);

create table bus (
	busId varchar(2) primary key,
    name varchar(30),
    startTime time,
    endTime time,
    dmShift float,
    dmCompress float,
    dmAvg float
);

create table bustravel (
	busTravelId int primary key auto_increment,
    pathId int references busPath(pathId),
    busId varchar(2) references bus(busId)
);


/*Bare minimum inserts to begin with*/
insert into user values('admin', 'admin', 'TAU_Admin', 'admin@uga.edu', 'A');

insert into bus values('FH', 'Family Housing', '07:00', '23:00', 1.555, 2.9, 5);
insert into bus values('EW', 'East West', '07:00', '23:00', 1.54, 2.97, 7.5);
insert into bus values('NS', 'North South', '07:00', '23:00', 1.534, 3.0145, 12.5);
insert into bus values('EC', 'East Campus Express', '07:00', '23:00', 1.534, 3.0145, 12.5);

/* Extra inserts for testing
insert into landmark values('PHY', 'Physics Bldg', '33.94', '-83.378');
insert into landmark values('SOU', 'Soule Hall', '33.946', '-83.376');
insert into landmark values('GAC', 'Georgia Centre', '33.9446', '-83.3771');
insert into landmark values('PLS', 'Plant Sciences', '33.946', '-83.376');
insert into landmark values('ADH', 'Aderhold Hall', '33.946', '-83.376');
insert into landmark values('TAT', 'Tate Center', '33.946', '-83.376');
*/












