create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
	cID varchar(50) primary key,
    cName varchar(50),
    cAge INT
);
create table Orders(
	oID varchar(50) primary key,
    cID varchar(50),
    oDate time,
    oTaltalPrice float,
    FOREIGN KEY (cID) REFERENCES Customer (cID)
);
create table OrderDetail(
	oID varchar(50) ,
    pID varchar(50) ,
    odQTY INT,
    PRIMARY KEY (oID,pID),
    FOREIGN KEY (oID) REFERENCES Orders (oID),
    FOREIGN KEY (pID) REFERENCES Product (pID)
);
create table Product (
	pID varchar(50) primary key,
    pName varchar(50),
    cPrice float
);
