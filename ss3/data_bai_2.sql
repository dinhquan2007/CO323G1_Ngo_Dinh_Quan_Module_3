use quan_ly_ban_hang;
insert into customer
value
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);
insert into `order`
value 
(1,1,'2006-03-26',null),
(2,1,'2006-03-23',null),
(3,1,'2006-03-16',null);
insert into product 
value 
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);
insert into order_detail
value
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

