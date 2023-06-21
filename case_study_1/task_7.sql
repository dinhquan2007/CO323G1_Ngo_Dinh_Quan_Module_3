-- 16
set sql_safe_updates=0;
delete n from nhan_vien n
left join hop_dong
on n.ma_nhan_vien=hop_dong.ma_nhan_vien
where hop_dong.ma_hop_dong is null;
set sql_safe_updates=1;

-- 17
CREATE VIEW chi_phi_khach_hang AS
    SELECT 
        khach_hang.ma_khach_hang,
        hop_dong.ma_hop_dong,
        sum(dich_vu.chi_phi_thue + dich_vu_di_kem.gia * hop_dong_chi_tiet.so_luong) AS tong_tien
    FROM
        khach_hang
            JOIN
        loai_khach_hang ON khach_hang.ma_loai_khach = loai_khach_hang.ma_loai_khach
             JOIN
        hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
             JOIN
        dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
             JOIN
        hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
			 JOIN
        dich_vu_di_kem ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
        group by hop_dong.ma_hop_dong
        ;

UPDATE khach_hang
        JOIN
    loai_khach_hang ON khach_hang.ma_loai_khach = loai_khach_hang.ma_loai_khach
        JOIN
    chi_phi_khach_hang ON khach_hang.ma_khach_hang = chi_phi_khach_hang.ma_khach_hang 
SET 
    khach_hang.ma_loai_khach = 1
WHERE
    khach_hang.ma_loai_khach = 2
        AND chi_phi_khach_hang.tong_tien > 10000000;

-- 18
set foreign_key_checks=0;
delete k from khach_hang k
join hop_dong h
on k.ma_khach_hang=h.ma_khach_hang
where h.ngay_lam_hop_dong <'2021-01-01';
set foreign_key_checks=1;
-- 19


