CREATE DATABASE 1106012980_vef2_lokaverkefni
USE 1106012980_vef2_lokaverkefni

CREATE TABLE 1106012980_vef2_lokaverkefni.users(
user varchar(32) not null,
pass varchar(32) not null,
nafn varchar(32) not null,
primary key (user)
);

insert into 1106012980_vef2_lokaverkefni.users