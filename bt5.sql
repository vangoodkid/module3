create database demo;
use demo;

create table Products(
	Id int,
    productCode nvarchar(30),
    productName nvarchar(30),
    productPrice decimal(30),
    productAmount int,
	productDescription nvarchar(30),
    productStatus bit
);

insert into Products(Id,productCode,productName,prodcutPrice,productAmount,productDescription,productStatus) 
VALUES (P001,001,'ca phe sua',20000,100,'ngon,dam vi',1),
		(P002,002,'ca phe muoi',25000,100,'man,moi la',2),
		(P003,003,'ca phe den',17000,100,'pho bien,dam vi',3),
		(P004,004,'ca phe dac biet',30000,100,'best seller,dam vi',4);
        
	
CREATE UNIQUE INDEX IX_ProductCode
ON Products(productCode);

CREATE INDEX IX_ProductName_ProductPrice
ON Products(productName, productPrice);

SET STATISTICS IO ON;
SET STATISTICS TIME ON;

CREATE VIEW View_ProductBasicInfo AS
SELECT productCode, productName, productPrice, productStatus
FROM Products;

ALTER VIEW View_ProductBasicInfo AS
SELECT productCode, productName, productPrice, productStatus, productAmount
FROM Products;

DROP VIEW View_ProductBasicInfo;

CREATE PROCEDURE GetAllProducts
AS
BEGIN
    SELECT * FROM Products;
END;


        
