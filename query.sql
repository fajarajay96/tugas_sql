--1. Crete database myshop
CREATE DATABASE myshop;

--2. Create table
CREATE TABLE users (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    email varchar(255),
    password varchar(255),
    PRIMARY KEY (ID)
);

CREATE TABLE categories (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE items (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description varchar(255),
    price int,
    stock int,
    category_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

--3. insert into
insert into users (name, email, password)
VALUE ('John Doe', 'john@doe.com', 'john123'), ('Jane Doe', 'jane@doe.com', 'jenita123');

INSERT INTO categories (name)
VALUE ('gadget'),('cloth'),('men'), ('women'), ('branded');

INSERT INTO items (name, description, price, stock, category_id)
VALUE ('Sumsang b50', 'hape keren dari merek sumsang', 4000000, 100, 1),
('Uniklooh', 'baju keren dari brand ternama', 500000, 50, 2),
('IMHO Watch', 'jam tangan anak yang jujur banget', 2000000, 10, 1);

--4. select data
--a
SELECT id, name, email from users;

--b
SELECT * FROM items where price > 1000000;
SELECT * FROM items where name like '%uniklo%';

--c
select itm.name, itm.description, itm.price, itm.stock, itm.category_id, cat.name from items itm, categories cat
where itm.category_id = cat.id;

--5. update data
UPDATE items set price = 2500000 where name like '%sumsang %';