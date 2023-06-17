create database quan_ly_nhap_xuat_vat_tu;
use quan_ly_nhap_xuat_vat_tu;
CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(45)
);
CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(45),
    dia_chi VARCHAR(45),
    so_dien_thoai VARCHAR(45)
);
CREATE TABLE don_dat_hang (
    so_don_hang INT PRIMARY KEY,
    ngay_dat_hang DATE
);
CREATE TABLE cung_cap (
    so_don_hang INT,
    ma_nha_cung_cap INT,
    PRIMARY KEY (so_don_hang , ma_nha_cung_cap),
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang),
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);
CREATE TABLE chi_tiet_don_dat_hang (
    ma_vat_tu INT,
    so_don_hang INT,
    PRIMARY KEY (ma_vat_tu , so_don_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang)
);
CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATE
);
CREATE TABLE chi_tiet_phieu_xuat (
    ma_phieu_xuat INT PRIMARY KEY,
    dg_xuat VARCHAR(45),
    so_luong_xuat INT,
    so_phieu_xuat INT,
    ma_vat_tu INT,
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE
);
 
CREATE TABLE chi_tiet_phieu_nhap (
    dg_nhap INT PRIMARY KEY,
    so_luong_nhap INT,
    ma_vat_tu INT,
    so_phieu_nhap INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);









