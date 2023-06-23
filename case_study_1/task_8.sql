-- 21
CREATE VIEW v_nhan_vien AS
    SELECT 
        n.ma_nhan_vien, n.ho_va_ten, n.ngay_sinh, n.dia_chi
    FROM
        nhan_vien n
            JOIN
        hop_dong h ON n.ma_nhan_vien = h.ma_nhan_vien
    WHERE
        h.ngay_lam_hop_dong = '2019-12-12'
            AND n.dia_chi LIKE '%Hải Châu%';


-- 22
set sql_safe_updates=0;
update v_nhan_vien 
set dia_chi='Liên Chiểu';
set sql_safe_updates=0;

-- 23

delimiter //
create procedure sp_xoa_khach_hang (in ma_nhan_vien int)
begin 
delete nv from nhan_vien nv
where nv.ma_nhan_vien=ma_nhan_vien ;
end //
 delimiter ;

call sp_xoa_khach_hang(12);

-- 24 
delimiter //
create procedure sp_them_moi_hop_dong (
ma_hop_dong int,
ngay_lam_hop_dong datetime ,
ngay_ket_thuc datetime ,
tien_dat_coc double ,
ma_nhan_vien int ,
ma_khach_hang int ,
ma_dich_vu int)
begin 
if ma_hop_dong not in 

end //
delimiter ;