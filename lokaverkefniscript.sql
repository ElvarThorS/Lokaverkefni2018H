CREATE DATABASE 1106012980_vef2_lokaverkefni;
USE 1106012980_vef2_lokaverkefni;

CREATE TABLE 1106012980_vef2_lokaverkefni.users(
user varchar(32) not null,
pass varchar(32) not null,
nafn varchar(32) not null,
primary key (user)
);

insert into 1106012980_vef2_lokaverkefni.users 
VALUES("Elvar Þór Sævarsson","12345","Elvar");

CREATE TABLE 1106012980_vef2_lokaverkefni.blogg(
bloggID INT,
user varchar(32) not null,
title varchar(32) not null,
content varchar(255) not null,
hofundur varchar(32) not null,
primary key(bloggID),
CONSTRAINT FK_user FOREIGN KEY (user)
REFERENCES 1106012980_vef2_lokaverkefni.users(user)
);

insert into 1106012980_vef2_lokaverkefni.blogg
VALUES(1,"Elvar","Bananar geislavirkir?","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consequat eu neque at semper. Donec tincidunt vehicula eleifend. Sed bibendum imperdiet sodales. Phasellus laoreet congue nibh, et eleifend quam condimentum nec.","Elvar Þór Sævarsson");

insert into 1106012980_vef2_lokaverkefni.blogg
VALUES(2,"Sigursteinn","Afhverju eru bananar góðir?","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam consequat eu neque at semper. Donec tincidunt vehicua eleifend. Sed bibendum imperdiet sodales. Phasellus laoreet congue nibh, et eleifend quam condimentum nec.","Elvar Þór Sævarsson");

DROP TABLE 1106012980_vef2_lokaverkefni.blogg