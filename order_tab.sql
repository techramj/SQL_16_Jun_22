create table customers
(cust_id number(3) primary key,   
cust_name varchar2(20) not null
);

create table items
(item_id number(4) primary key,
name varchar2(20) unique not null,
unit_price number(6,2),
available_quantity number(6)
);

create table orders
(order_id number(4) primary key,
customer_id number(4) references customers(cust_id),
order_date date);


create table order_details
(order_id number(4),
item_id number(4),
quantity number
);


--customers table
insert into customers(cust_id,cust_name) values (1,'Jack');
insert into customers(cust_id,cust_name) values (2,'John');
insert into customers(cust_id,cust_name) values (3,'Jessica');
insert into customers(cust_id,cust_name) values (4,'Sam');
insert into customers(cust_id,cust_name) values (5,'King');


--populate items table
insert into items values (1,'Pen',10,500);
insert into items values (2,'Pencil',5,500);
insert into items values (3,'Eraser',5,50);
insert into items values (4,'Sharpner',8,100);
insert into items values (5,'Paper',1,10000);

--populate orders
insert into orders values (1001,1,'1-Jun-22');
insert into orders values (1002,2,'3-Jul-22');
insert into orders values (1003,3,'3-Jul-22');
insert into orders values (1004,1,'4-Jul-22');


--populate order_details
insert into order_details(order_id, item_id,quantity) values (1001,1,50);
insert into order_details(order_id, item_id,quantity) values (1001,2,40);
insert into order_details(order_id, item_id,quantity) values (1001,3,40);
insert into order_details(order_id, item_id,quantity) values (1001,4,50);
insert into order_details(order_id, item_id,quantity) values (1002,1,100);
insert into order_details(order_id, item_id,quantity) values (1002,5,1000);
insert into order_details(order_id, item_id,quantity) values (1003,2,20);
insert into order_details(order_id, item_id,quantity) values (1003,3,20);
insert into order_details(order_id, item_id,quantity) values (1003,4,40);
insert into order_details(order_id, item_id,quantity) values (1004,5,2000);


select * from items;
select * from customers;
select * from orders;
select * from order_details;