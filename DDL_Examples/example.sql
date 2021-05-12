CREATE TABLE customers(
  customer_id int NOT NULL AUTO_INCREMENT,
  name varchar(40) NOT NULL,
  email varchar(60) NOT NULL,
  house_number int NOT NULL,
  postcode varchar(8) NOT NULL,
  PRIMARY KEY (customer_id)
);
CREATE TABLE products(
  product_id int NOT NULL AUTO_INCREMENT,
  title varchar(60) NOT NULL,
  price decimal(6,2) NOT NULL,
  stock int NOT NULL,
  PRIMARY KEY (product_id)
);
CREATE TABLE orders(
  order_id int NOT NULL AUTO_INCREMENT,
  customer_id int NOT NULL,
  product_id int NOT NULL,
  date_placed date NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);
