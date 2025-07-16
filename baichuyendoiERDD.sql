create database if not exists QLBanHang;
use QLBanHang;

create table PhieuXuat(
	SoPX varchar(10) primary key,
    NgayXuat date
);
create table PhieuNhap(
	SoPN varchar(10) primary Key,
    NgayNhap date
);
create table VatTu(
	MaVT varchar(10) primary Key,
    TenVTU nvarchar(50)
);
create table DONDH(
	SoDH varchar(50) primary Key,
    NgayDH date
);
create table Nhacc(
	MaNhacc varchar(50) primary key,
    TenNCC nvarchar(50),
    DiaChi nvarchar(50),
    SDT varchar(50)
);
create table ct_phieuxuat(
	SoPX varchar(10),
    MaVT varchar(10),
    DGXuat numeric(18,2),
    SLXuat int,
    primary key (SoPX,MaVT),
    foreign key (SoPX) references PhieuXuat(SoPX),
	foreign key (MaVT) references VatTu(MaVT)
);
create table ct_phieunhap(
	SoPN varchar(10),
    MaVT varchar(10),
    DGNhap numeric(18,2),
    SLNhap int,
    primary key (SoPN,MaVT),
    foreign key (SoPN) references PhieuNhap(SoPN),
	foreign key (MaVT) references VatTu(MaVT)
    );
create table ct_donhang(
	SoDH varchar(10),
    MaVT varchar(10),
    primary key (SoDH,MaVT),
    foreign key (SoDH) references DONDH(SoDH),
	foreign key (MaVT) references VatTu(MaVT)
    );