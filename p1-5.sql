-- Task1
select *, (select customer_id from orders where id = order_details.order_id) as customer_id

from order_details;

-- Task2
select *
from order_details
where order_id in (select id from orders where orders.shipper_id = 3);

-- Task 3
select order_id, AVG(quantity) as avg_qty
from (select * from order_details where quantity > 10) as temp_table
group by order_id;

--Task 4 
with  temp_table as (select * from order_details where quantity > 10)

select order_id, AVG(quantity) as avg_qty
from temp_table
group by order_id;

-- Task 5
drop function if exists Divide
DELIMITER //
create function Divide (first_number FLOAT, second_number FLOAT)
returns FLOAT
deterministic
no sql
begin
	declare result float;
    set result = first_number / second_number;
    return result;
end //
DELIMITER ;	

select *, Divide(quantity, 2.0) as divided_qty
from order_details;

