create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int not null  auto_increment primary key,
cName varchar(30) not null,
cAge int default 30 check ( cAge between 0 and 120)
);
create table Orders(
oID int auto_increment not null	primary key,
oDate datetime not null,
cID int not null,
oTotalPrice float not null,
foreign key (cID) references Customer (cID)
);
create table Product(
pID int not null auto_increment primary key,
pName varchar(50) not null,
pPrice float not null default 1 check (pPrice >=0)
);
create table OrderDetail(
oID int not null,
pID int not null,
odQTY varchar(50),
primary key (oID, pID),
foreign key(oID) references Orders (oID),
foreign key(pID) references Product (pID)
);
