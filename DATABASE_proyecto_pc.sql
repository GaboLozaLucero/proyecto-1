CREATE DATABASE PC;
USE PC;

-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-01-11 01:43:19.806

-- tables
-- Table: brand
CREATE TABLE brand (
    brand_id int NOT NULL AUTO_INCREMENT,
    brand_name varchar(100) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT brand_pk PRIMARY KEY (brand_id)
);

-- Table: cart
CREATE TABLE cart (
    cart_id int NOT NULL AUTO_INCREMENT,
    total numeric(12,6) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT cart_pk PRIMARY KEY (cart_id)
);

-- Table: cart_details
CREATE TABLE cart_details (
    cart_details_id int NOT NULL AUTO_INCREMENT,
    product_id int NOT NULL,
    cart_id int NOT NULL,
    quantity int NOT NULL,
    CONSTRAINT cart_details_pk PRIMARY KEY (cart_details_id)
);

-- Table: category
CREATE TABLE category (
    category_id int NOT NULL AUTO_INCREMENT,
    category_name varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT category_pk PRIMARY KEY (category_id)
);

-- Table: category_product
CREATE TABLE category_product (
    category_product_id int NOT NULL AUTO_INCREMENT,
    product_id int NOT NULL,
    category_id int NOT NULL,
    status int NOT NULL DEFAULT 1,
    CONSTRAINT category_product_pk PRIMARY KEY (category_product_id)
);

-- Table: chat
CREATE TABLE chat (
    chat_id int NOT NULL AUTO_INCREMENT,
    seller_id int NOT NULL,
    customer_id int NOT NULL,
    date date NOT NULL,
    start time NOT NULL,
    end time NOT NULL,
    log varchar(50) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-11-22 00:00:00',
    CONSTRAINT chat_pk PRIMARY KEY (chat_id)
);

-- Table: city
CREATE TABLE city (
    city_id int NOT NULL AUTO_INCREMENT,
    city_name varchar(64) NOT NULL,
    status varchar(64) NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT city_pk PRIMARY KEY (city_id)
);

-- Table: company
CREATE TABLE company (
    company_id int NOT NULL AUTO_INCREMENT,
    company_name varchar(64) NOT NULL,
    direction varchar(150) NOT NULL,
    phone varchar(50) NOT NULL,
    email varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT company_pk PRIMARY KEY (company_id)
);

-- Table: h_order
CREATE TABLE h_order (
    h_order_id int NOT NULL AUTO_INCREMENT,
    order_id int NOT NULL,
    user_id int NOT NULL,
    cart_id int NOT NULL,
    payment_details_id int NOT NULL,
    date date NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT h_order_pk PRIMARY KEY (h_order_id)
);

-- Table: h_product
CREATE TABLE h_product (
    h_product_id int NOT NULL AUTO_INCREMENT,
    product_id int NOT NULL ,
    product_type_id int NOT NULL,
    brand_id int NOT NULL,
    company_id int NOT NULL,
    city_id int NOT NULL,
    product_name varchar(64) NOT NULL,
    model varchar(50) NOT NULL,
    product_description varchar(500) NOT NULL,
    stock int NOT NULL,
    weight double(6,3) NULL,
    img varchar(150) NULL,
    price_per_unit numeric(12,6) NOT NULL,
    currency int NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT h_product_pk PRIMARY KEY (h_product_id)
);

-- Table: h_user
CREATE TABLE h_user (
    h_user int NOT NULL AUTO_INCREMENT,
    user_id int NOT NULL,
    city_id int NOT NULL,
    company_id int NOT NULL,
    name varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    phone varchar(50) NOT NULL,
    birthday date NOT NULL,
    email varchar(64) NOT NULL,
    username varchar(64) NOT NULL,
    password varchar(100) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT h_user_pk PRIMARY KEY (h_user)
);

-- Table: message
CREATE TABLE message (
    message_id int NOT NULL AUTO_INCREMENT,
    time time NOT NULL,
    content varchar(255) NOT NULL,
    chat_id int NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-11-22 00:00:00',
    CONSTRAINT message_pk PRIMARY KEY (message_id)
);

-- Table: order
CREATE TABLE `order` (
    order_id int NOT NULL AUTO_INCREMENT,
    date date NOT NULL,
    status int NOT NULL DEFAULT 1,
    user_id int NOT NULL,
    cart_id int NOT NULL,
    payment_details_id int NOT NULL,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT order_pk PRIMARY KEY (order_id)
);

-- Table: payment_data
CREATE TABLE payment_data (
    payment_data_id int NOT NULL AUTO_INCREMENT,
    payment_type_id int NOT NULL,
    payment_data_name varchar(255) NULL,
    payment_data_type varchar(255) NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    UNIQUE INDEX payment_data_ak_1 (payment_data_name),
    CONSTRAINT payment_data_pk PRIMARY KEY (payment_data_id)
);

-- Table: payment_details
CREATE TABLE payment_details (
    payment_details_id int NOT NULL AUTO_INCREMENT,
    payment_data_id int NOT NULL,
    value varchar(255) NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT payment_details_pk PRIMARY KEY (payment_details_id)
);

-- Table: payment_type
CREATE TABLE payment_type (
    payment_type_id int NOT NULL AUTO_INCREMENT,
    payment_type_name varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT payment_type_pk PRIMARY KEY (payment_type_id)
) COMMENT 'e.g. card, cash, paypal, wire transfer';

-- Table: privilege
CREATE TABLE privilege (
    privilege_id int NOT NULL AUTO_INCREMENT,
    privilege_name varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT privilege_pk PRIMARY KEY (privilege_id)
);

-- Table: product
CREATE TABLE product (
    product_id int NOT NULL AUTO_INCREMENT,
    product_type_id int NOT NULL,
    brand_id int NOT NULL,
    company_id int NOT NULL,
    city_id int NOT NULL,
    product_name varchar(200) NOT NULL,
    model varchar(50) NOT NULL,
    product_description varchar(500) NOT NULL,
    stock int NOT NULL,
    weight double(6,3) NULL,
    img varchar(1500) NULL,
    price_per_unit numeric(12,6) NOT NULL,
    currency int NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT product_pk PRIMARY KEY (product_id)
);

-- Table: product_type
CREATE TABLE product_type (
    product_type_id int NOT NULL AUTO_INCREMENT,
    product_type_name varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT product_type_pk PRIMARY KEY (product_type_id)
) COMMENT '
';

-- Table: role
CREATE TABLE role (
    role_id int NOT NULL AUTO_INCREMENT,
    role_name varchar(64) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT role_pk PRIMARY KEY (role_id)
);

-- Table: role_privilege
CREATE TABLE role_privilege (
    role_privilege_id int NOT NULL AUTO_INCREMENT,
    privilege_id int NOT NULL,
    role_id int NOT NULL,
    status int NOT NULL DEFAULT 1,
    CONSTRAINT role_privilege_pk PRIMARY KEY (role_privilege_id)
);

-- Table: transaction
CREATE TABLE transaction (
    transaction_id int NOT NULL AUTO_INCREMENT,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT transaction_pk PRIMARY KEY (transaction_id)
);

-- Table: user
CREATE TABLE user (
    user_id int NOT NULL AUTO_INCREMENT,
    city_id int NOT NULL,
    company_id int NOT NULL,
    name varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    phone varchar(50) NOT NULL,
    birthday date NOT NULL,
    email varchar(64) NOT NULL UNIQUE,
    username varchar(64) NOT NULL,
    password varchar(100) NOT NULL,
    status int NOT NULL DEFAULT 1,
    tx_id int NOT NULL DEFAULT 1,
    tx_host varchar(64) NOT NULL DEFAULT '127.0.0.1',
    tx_user_id int NOT NULL DEFAULT 0,
    tx_date timestamp NOT NULL DEFAULT '2020-12-28 00:00:00',
    CONSTRAINT user_pk PRIMARY KEY (user_id)
);

-- Table: user_role
CREATE TABLE user_role (
    user_role_id int NOT NULL AUTO_INCREMENT,
    role_id int NOT NULL,
    user_id int NOT NULL,
    status int NOT NULL DEFAULT 1,
    CONSTRAINT user_role_pk PRIMARY KEY (user_role_id)
);

-- foreign keys
-- Reference: cart_details_cart (table: cart_details)
ALTER TABLE cart_details ADD CONSTRAINT cart_details_cart FOREIGN KEY cart_details_cart (cart_id)
    REFERENCES cart (cart_id);

-- Reference: cart_details_product (table: cart_details)
ALTER TABLE cart_details ADD CONSTRAINT cart_details_product FOREIGN KEY cart_details_product (product_id)
    REFERENCES product (product_id);

-- Reference: category_product_category (table: category_product)
ALTER TABLE category_product ADD CONSTRAINT category_product_category FOREIGN KEY category_product_category (category_id)
    REFERENCES category (category_id);

-- Reference: category_product_product (table: category_product)
ALTER TABLE category_product ADD CONSTRAINT category_product_product FOREIGN KEY category_product_product (product_id)
    REFERENCES product (product_id);

-- Reference: chat_customer (table: chat)
ALTER TABLE chat ADD CONSTRAINT chat_customer FOREIGN KEY chat_customer (customer_id)
    REFERENCES user (user_id);

-- Reference: chat_seller (table: chat)
ALTER TABLE chat ADD CONSTRAINT chat_seller FOREIGN KEY chat_seller (seller_id)
    REFERENCES user (user_id);

-- Reference: message_chat (table: message)
ALTER TABLE message ADD CONSTRAINT message_chat FOREIGN KEY message_chat (chat_id)
    REFERENCES chat (chat_id);

-- Reference: order_cart (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_cart FOREIGN KEY order_cart (cart_id)
    REFERENCES cart (cart_id);

-- Reference: order_payment_details (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_payment_details FOREIGN KEY order_payment_details (payment_details_id)
    REFERENCES payment_details (payment_details_id);

-- Reference: order_user (table: order)
ALTER TABLE `order` ADD CONSTRAINT order_user FOREIGN KEY order_user (user_id)
    REFERENCES user (user_id);

-- Reference: payment_data_payment_type (table: payment_data)
ALTER TABLE payment_data ADD CONSTRAINT payment_data_payment_type FOREIGN KEY payment_data_payment_type (payment_type_id)
    REFERENCES payment_type (payment_type_id);

-- Reference: payment_details_payment_data (table: payment_details)
ALTER TABLE payment_details ADD CONSTRAINT payment_details_payment_data FOREIGN KEY payment_details_payment_data (payment_data_id)
    REFERENCES payment_data (payment_data_id);

-- Reference: product_brand (table: product)
ALTER TABLE product ADD CONSTRAINT product_brand FOREIGN KEY product_brand (brand_id)
    REFERENCES brand (brand_id);

-- Reference: product_city (table: product)
ALTER TABLE product ADD CONSTRAINT product_city FOREIGN KEY product_city (city_id)
    REFERENCES city (city_id);

-- Reference: product_company (table: product)
ALTER TABLE product ADD CONSTRAINT product_company FOREIGN KEY product_company (company_id)
    REFERENCES company (company_id);

-- Reference: product_product_type (table: product)
ALTER TABLE product ADD CONSTRAINT product_product_type FOREIGN KEY product_product_type (product_type_id)
    REFERENCES product_type (product_type_id);

-- Reference: role_privilege_privilege (table: role_privilege)
ALTER TABLE role_privilege ADD CONSTRAINT role_privilege_privilege FOREIGN KEY role_privilege_privilege (privilege_id)
    REFERENCES privilege (privilege_id);

-- Reference: role_privilege_role (table: role_privilege)
ALTER TABLE role_privilege ADD CONSTRAINT role_privilege_role FOREIGN KEY role_privilege_role (role_id)
    REFERENCES role (role_id);

-- Reference: user_city (table: user)
ALTER TABLE user ADD CONSTRAINT user_city FOREIGN KEY user_city (city_id)
    REFERENCES city (city_id);

-- Reference: user_company (table: user)
ALTER TABLE user ADD CONSTRAINT user_company FOREIGN KEY user_company (company_id)
    REFERENCES company (company_id);

-- Reference: user_role_role (table: user_role)
ALTER TABLE user_role ADD CONSTRAINT user_role_role FOREIGN KEY user_role_role (role_id)
    REFERENCES role (role_id);

-- Reference: user_role_user (table: user_role)
ALTER TABLE user_role ADD CONSTRAINT user_role_user FOREIGN KEY user_role_user (user_id)
    REFERENCES user (user_id);

-- End of file.

