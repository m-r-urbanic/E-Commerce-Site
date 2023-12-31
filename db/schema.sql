-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- note - group by ID tables and then product level tables

-- create the 'category' table
CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL,
);

-- create the 'tag' table
CREATE TABLE tag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(30) NOT NULL,
);

-- create the 'product' table
CREATE TABLE product (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(30) NOT NULL,
  price NUMERIC(10,5) NOT NULL,
  stock INT NOT NULL SET DEFAULT '0',
  category_id INT
  FOREIGN KEY (category_id)
  REFERENCES category(id)
  ON DELETE SET NULL
);

-- create the 'productTag' table
CREATE TABLE productTag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT
  FOREIGN KEY (category_id)
  REFERENCES category(id)
  ON DELETE SET NULL,
  tag_id INT
  FOREIGN KEY (category_id)
  REFERENCES category(id)
  ON DELETE SET NULL
);