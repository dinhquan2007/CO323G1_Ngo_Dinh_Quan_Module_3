use furama_management ;
-- 2 hiển thị thông tin nhân viên có tên bắt đầu H,T,K, và ít hơn 15 kí tự.
SELECT 
    *
FROM
    nhan_vien
WHERE
    ho_va_ten LIKE 'H%' OR 'T%' OR 'K%' ;
-- cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT 
    *
FROM
    khach_hang k
WHERE
    k.dia_chi LIKE '%Đà Nẵng%'
        OR k.dia_chi LIKE '%Quảng Trị%'
        AND 18 < (YEAR(CURDATE()) - YEAR(k.ngay_sinh))
        AND (YEAR(CURDATE()) - YEAR(k.ngay_sinh)) < 50;

--  4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
-- Chỉ đếm những khách hàng nào có Tên loại khách  hàng là “Diamond”.
--  lay mã khách hàng đếm biến count và xét loại diamond


SELECT 
    khach_hang.ma_khach_hang, khach_hang.ho_ten, COUNT(*) AS so_lan_dat_phong
FROM
    khach_hang
        JOIN
    hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
        JOIN
    loai_khach_hang ON khach_hang.ma_loai_khach = loai_khach_hang.ma_loai_khach
WHERE
    loai_khach_hang.ten_loai_khach = 'Diamond'
GROUP BY hop_dong.ma_khach_hang
ORDER BY so_lan_dat_phong;

