-- 6
SELECT 
    dich_vu.ma_dich_vu,
    dich_vu.ten_dich_vu,
    dich_vu.dien_tich,
    dich_vu.chi_phi_thue,
    loai_dich_vu.ten_loai_dich_vu
FROM
    dich_vu
        JOIN
    hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
        JOIN
    loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
WHERE
    hop_dong.ma_dich_vu NOT IN (SELECT 
            ma_dich_vu
        FROM
            hop_dong
        WHERE
            ngay_lam_hop_dong > '2021-01-01'
                AND ngay_lam_hop_dong < '2021-03-31')
GROUP BY dich_vu.ma_dich_vu;
-- 7
SELECT 
    dich_vu.ma_dich_vu,
    dich_vu.ten_dich_vu,
    dich_vu.dien_tich,
    dich_vu.so_nguoi_toi_da,
    dich_vu.chi_phi_thue,
    loai_dich_vu.ten_loai_dich_vu
FROM
    dich_vu
        JOIN
    loai_dich_vu ON dich_vu.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu
        JOIN
    hop_dong ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
WHERE
    hop_dong.ngay_lam_hop_dong >= '2020-01-01'
        AND hop_dong.ngay_lam_hop_dong < '2021-01-01'
        AND hop_dong.ma_dich_vu NOT IN (SELECT 
            ma_dich_vu
        FROM
            hop_dong
        WHERE
            ngay_lam_hop_dong >= '2021-01-01')
GROUP BY ma_dich_vu;
-- 8
SELECT 
    ho_ten
FROM
    khach_hang
GROUP BY khach_hang.ho_ten;

-- 9
SELECT 
    MONTH(ngay_lam_hop_dong) AS month,
    COUNT(DISTINCT ma_khach_hang) AS so_luong_khach_hang
FROM
    hop_dong
WHERE
    ngay_lam_hop_dong >= '2021-01-01'
        AND ngay_lam_hop_dong < '2022-01-01'
GROUP BY month
ORDER BY month;

-- 10
SELECT 
    hop_dong.ma_hop_dong,
    hop_dong.ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc,
    hop_dong.tien_dat_coc,
    SUM(hop_dong_chi_tiet.so_luong) AS so_luong_dich_vu_di_kem
FROM
    hop_dong
        LEFT JOIN
    hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
GROUP BY hop_dong.ma_hop_dong;
    




    
