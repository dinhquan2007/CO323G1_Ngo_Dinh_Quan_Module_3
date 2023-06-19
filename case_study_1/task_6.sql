 -- 11
 use furama_management;
SELECT 
    dich_vu_di_kem.ma_dich_vu_di_kem,
    dich_vu_di_kem.ten_dich_vu_di_kem
FROM
    dich_vu_di_kem
        JOIN
    hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
        JOIN
    hop_dong ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
        JOIN
    khach_hang ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
        JOIN
    loai_khach_hang ON khach_hang.ma_loai_khach = loai_khach_hang.ma_loai_khach
WHERE
    loai_khach_hang.ten_loai_khach = 'Diamond'
        AND dia_chi IN (SELECT 
            dia_chi
        FROM
            khach_hang
        WHERE
            dia_chi LIKE '%Vinh%' OR '%Quảng Ngãi%');

-- 12
SELECT 
    hd.ma_hop_dong,
    nv.ho_va_ten as nhan_vien,
    kh.ho_ten as khach_hang,
    kh.so_dien_thoai,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM
    hop_dong hd
        JOIN
    nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    hd.ma_hop_dong IN (SELECT 
            ma_hop_dong
        FROM
            hop_dong hd
        WHERE
            hd.ngay_lam_hop_dong <= '2020-12-31'
                AND hd.ngay_lam_hop_dong >= '2020-10-01')
        AND hd.ma_hop_dong NOT IN (SELECT 
            ma_hop_dong
        FROM
            hop_dong hd
        WHERE
            hd.ngay_lam_hop_dong >= '2021-01-01'
                AND hd.ngay_lam_hop_dong <= '2021-06-30')
GROUP BY hd.ma_hop_dong;

-- 13
SELECT 
    dich_vu_di_kem.ma_dich_vu_di_kem,
    dich_vu_di_kem.ten_dich_vu_di_kem,
    SUM(hop_dong_chi_tiet.so_luong) AS so_luong_thue
FROM
    dich_vu_di_kem
        JOIN
    hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem
HAVING so_luong_thue = (SELECT 
        MAX(bang.so_luong_thue)
    FROM
        (SELECT 
            SUM(hop_dong_chi_tiet.so_luong) AS so_luong_thue
        FROM
            dich_vu_di_kem
        JOIN hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
        GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem) AS bang);
        
        -- 14
select 
ma_hop_dong,
ten_loai_dich_vu,

        
