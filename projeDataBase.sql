-- create database projeDB
use projeDB;

create table calisanTbl(
    calisanId int identity (1,1) not null primary key,
    calisanAd varchar(20) not null,
    calisanPzsyn varchar(20) not null,
    calisanTlfn varchar(10) not null,
    calisanMail varchar(30) not null
);
create table sirketTbl(
    sirketId int identity (1,1) not null primary key,
    sirketAd varchar(20) not null,
    sirketTlfn varchar(10) not null,
    sirketMail varchar(30) not null
);
create table projeTbl(
    projeID int identity(1,1) not null primary key,
    projeAdi varchar(15) not null,
    projeBslngcTrh datetime not null,
    projeBtisTrh datetime not null,
    projeButce int not null,
    calisanId int not null foreign key references calisanTbl(calisanId),
    sirketId int not null foreign key references sirketTbl(sirketId)
);
--Cem Alkan--