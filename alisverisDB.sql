-- create database alisverisDb
 use alisverisDb;
create table tedarikcitbl (
    tedarikciid int identity(1,1) not null primary key,
    tedarikciad varchar(25) not null,
    tedarikcitel varchar(10) not null,
    tedarikcimail varchar(30) not null
);
create table musteritbl (
    musteriid int identity(1,1) not null primary key,
    musteriad varchar(20) not null,
    musteritel varchar(10) not null
);
create table uruntbl (
    urunid int identity(1,1) not null primary key,
    urunad varchar(50) not null,
    urunfiyat decimal(10,2) not null,
    urunmiktar int not null,
    tedarikciid int not null foreign key references tedarikcitbl(tedarikciid)
);
create table satinalmatbl (
    satisid int identity(1,1) not null primary key,
    odemedurum varchar(30) not null,
    satinalmatarihi datetime not null,
    urunid int not null foreign key references uruntbl(urunid),
    adet int not null,
    satisfiyat decimal(10,2) not null,
    musteriid int not null foreign key references musteritbl(musteriid)
);
--Cem Alkan--