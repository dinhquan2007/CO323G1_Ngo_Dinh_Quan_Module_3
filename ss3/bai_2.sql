SELECT 
    o_id, o_date, o_total_price
FROM
    `order`;
SELECT 
    *
FROM
    customer
        JOIN
    `order` ON customer.c_id = `order`.c_id
        JOIN
    order_detail ON `order`.o_id = order_detail.o_id
        JOIN
    product ON order_detail.p_id = product.p_id;
    
    SELECT 
    c_name
FROM
    customer
        LEFT JOIN
    `order` ON customer.c_id = `order`.c_id
WHERE
    o_id IS NULL;
    
    SELECT o.o_id, o.o_date, result.mySum AS TOTAL
FROM `order` o
INNER JOIN
(SELECT d.o_id AS o_id, SUM(p.c_price * d.od_qty) AS mySum
FROM order_detail d
INNER JOIN product p ON d.p_id = p.p_id
GROUP BY d.o_id) result
ON o.o_id = result.o_id;