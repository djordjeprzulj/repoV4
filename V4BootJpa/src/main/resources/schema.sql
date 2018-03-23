DROP TABLE t_order_item;
DROP TABLE t_order;
DROP TABLE t_product;
DROP TABLE t_customer;

CREATE TABLE t_customer
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	address VARCHAR(50),
	PRIMARY KEY (id)
) 
;

CREATE TABLE t_order
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	order_date DATE NOT NULL,
	customer_id MEDIUMINT NOT NULL,
	PRIMARY KEY (id),
	INDEX IXFK_order_customer (customer_id ASC)
) 
;

CREATE TABLE t_order_item
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	order_id MEDIUMINT NOT NULL,
	seq_num MEDIUMINT NOT NULL,
	product_id MEDIUMINT NOT NULL,
	quantity MEDIUMINT NOT NULL,
	PRIMARY KEY (id),
	INDEX IXFK_order_item_product (product_id ASC),
	INDEX IXFK_order_item_order (order_id ASC)
) 
;

CREATE TABLE t_product
(
	id MEDIUMINT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	price DECIMAL(10,2),
	PRIMARY KEY (id)

) 
;

SET FOREIGN_KEY_CHECKS=1;

ALTER TABLE t_order ADD CONSTRAINT FK_order_customer 
	FOREIGN KEY (customer_id) REFERENCES t_customer (id)
;

ALTER TABLE t_order_item ADD CONSTRAINT FK_order_item_product 
	FOREIGN KEY (product_id) REFERENCES t_product (id)
;

ALTER TABLE t_order_item ADD CONSTRAINT FK_order_item_order 
	FOREIGN KEY (order_id) REFERENCES t_order (id)
;
