create database codegym_management;
create table hoc_vien(
ma_hoc_vien int primary key,
ten_hoc_vien varchar(45),
ngay_sinh date,
gioi_tinh bit,
email varchar(45),
foreign key (email) references tai_khoan_jame(ten_dang_nhap)
);
create table tai_khoan_jame(
ten_dang_nhap varchar(45) primary key,
mat_khau varchar(45)
);
create table giang_vien(
ma_giang_vien int primary key,
ten_giang_vien varchar(45),
ngay_sinh date,
luong int
);