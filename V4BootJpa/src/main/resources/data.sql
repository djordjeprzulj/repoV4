insert into t_product (name, price) values ('Hleb', 50);
insert into t_product (name, price) values ('Mleko', 150);
insert into t_product (name, price) values ('Sok', 50);
insert into t_product (name, price) values ('Pivo', 100);
insert into t_product (name, price) values ('Žvaka', 10);
insert into t_product (name, price) values ('Kifla', 20);
insert into t_product (name, price) values ('Ajvar', 50);
insert into t_product (name, price) values ('Pekmez', 100);
insert into t_product (name, price) values ('Sir', 10);
insert into t_product (name, price) values ('Tost', 20);
insert into t_product (name, price) values ('Olovka', 50);
insert into t_product (name, price) values ('Gumica', 150);
insert into t_product (name, price) values ('Mine 0,5 mm', 50);
insert into t_product (name, price) values ('Sveska', 100);
insert into t_product (name, price) values ('Kajdanka', 10);
insert into t_product (name, price) values ('Hemijska olovka', 20);
insert into t_product (name, price) values ('Naliv pero', 50);
insert into t_product (name, price) values ('Globus', 100);
insert into t_product (name, price) values ('Atlas', 10);
insert into t_product (name, price) values ('Blok za crtanje', 20);

insert into t_customer (first_name, last_name, address) values ('Novak', 'Đoković', 'Montekarlo, Monako');
insert into t_customer (first_name, last_name, address) values ('Rafael', 'Nadal', 'Manakor, Španija');
insert into t_customer (first_name, last_name, address) values ('Rodžer', 'Federer', 'Bazel, Švajcarska');

insert into t_order (customer_id, order_date) values (1, '20170731');
insert into t_order (customer_id, order_date) values (2, '20170801');
insert into t_order (customer_id, order_date) values (3, '20170802');
insert into t_order (customer_id, order_date) values (1, '20170804');
insert into t_order (customer_id, order_date) values (2, '20170805');
insert into t_order (customer_id, order_date) values (3, '20170806');

insert into t_order_item (order_id, seq_num, product_id, quantity) values (1, 1, 1, 5);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (1, 2, 4, 3);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (1, 3, 2, 6);

insert into t_order_item (order_id, seq_num, product_id, quantity) values (2, 1, 1, 5);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (2, 2, 4, 3);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (2, 3, 2, 6);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (2, 4, 9, 2);

insert into t_order_item (order_id, seq_num, product_id, quantity) values (3, 1, 1, 5);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (3, 2, 4, 3);
insert into t_order_item (order_id, seq_num, product_id, quantity) values (3, 3, 2, 6);