create database demo;
use demo;
CREATE TABLE products (
    id INT PRIMARY KEY,
    product_code INT,
    product_name VARCHAR(45),
    product_price BIGINT,
    produc_amount INT,
    product_description VARCHAR(45),
    produc_status VARCHAR(45)
);
create unique index index_name on products(product_code);
create index index_name_2 on products(product_name,product_price);
explain select * from products 
where id=1;

CREATE VIEW product_view AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products;

alter view products_view as
select product_code,
product_name,
product_price,
product_status
from products; 
  
  drop view products_view
  
  
  delimiter //
  
  create procedure select_all_products()
  
  begin
  select * from products;
  end //
  delimiter ;
  call select_all_products();
  
  
  
  delimiter //
  
  create procedure add_product(in pra1 int,in pra2 varchar(45),in pra3 varchar(45), in pra4 float, in pra5 bigint,in pra6 varchar(45), in pra7 bit)
begin
	insert into product
    values (para1,para2,para3,para4,para5,para6,para7);
end //
delimiter ; 
  
  
DELIMITER //
CREATE PROCEDURE update_product(
IN para1 int,
 IN para2 varchar(45),
 IN para3 varchar (45),
 IN para4 float, 
 IN para5 bigint,
 in para6 varchar(45),
 in para7 bit)
BEGIN
	update products
    set product_code=para2,
    product_name=para3,
    product_price=para4,
    product_amount=para5,
    product_description=para6,
    productStatus=para7
    where id=para1;
END //
DELIMITER ;

delimiter //

create procedure delete_product(in id int)
begin
	delete from products
    where products.porduct_code=id;
end//
delimiter ;


