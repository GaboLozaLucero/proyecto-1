use PC;
/*select * from city;*/
INSERT INTO `PC`.`city` (`city_name`) VALUES ('La Paz');
INSERT INTO `PC`.`city` (`city_name`) VALUES ('Cochabamba');
INSERT INTO `PC`.`city` (`city_name`) VALUES ('Santa Cruz');
INSERT INTO `PC`.`city` (`city_name`) VALUES ('Oruro');
INSERT INTO `PC`.`city` (`city_name`) VALUES ('Tarija');

/*select * from brand;*/
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('Asus');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('MSI');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('HP');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('Nvidia');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('Deepcool');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('REDRAGON');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('Intel');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('AMD');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('EVGA');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('Samsung');
INSERT INTO `PC`.`brand` (`brand_name`) VALUES ('ROCCAT');

/*select * from category;*/
INSERT INTO `PC`.`category` (`category_name`) VALUES ('Games');
INSERT INTO `PC`.`category` (`category_name`) VALUES ('Work');
INSERT INTO `PC`.`category` (`category_name`) VALUES ('Home');
INSERT INTO `PC`.`category` (`category_name`) VALUES ('Study');

/*select * from product_type;*/
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Motherboard');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('CPU');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('GPU');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Keyboard');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Mouse');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Screencooler');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Cooler');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('RAM');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('SSD');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('HDD');
INSERT INTO `PC`.`product_type` (`product_type_name`) VALUES ('Power Supply');

/*select * from payment_type;*/
INSERT INTO `PC`.`payment_type` (`payment_type_name`) VALUES ('Cash');
INSERT INTO `PC`.`payment_type` (`payment_type_name`) VALUES ('Debit card');
INSERT INTO `PC`.`payment_type` (`payment_type_name`) VALUES ('Credit card');

/*select * from privilege;*/
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Create account');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Delete account');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Add product');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Delete product');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Modify product');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('See product');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Sell product');
INSERT INTO `PC`.`privilege` (`privilege_name`) VALUES ('Buy product');

/*select * from role;*/
INSERT INTO `PC`.`role` (`role_name`) VALUES ('Admin');
INSERT INTO `PC`.`role` (`role_name`) VALUES ('Customer');
INSERT INTO `PC`.`role` (`role_name`) VALUES ('Seller');

/*select * from company;*/
INSERT INTO `PC`.`company` (`company_name`, `direction`, `phone`, `email`) VALUES ('Big PC', 'TODO', '22222222', 'bigpc@bigpc.com');
INSERT INTO `PC`.`company` (`company_name`, `direction`, `phone`, `email`) VALUES ('No company', 'nowhere', '00000000', 'nomail');
INSERT INTO `PC`.`company` (`company_name`, `direction`, `phone`, `email`) VALUES ('Computadoras Gonzales', 'Av. Calatayud N. 255', '22555555', 'comgonzales@gmail.com');
INSERT INTO `PC`.`company` (`company_name`, `direction`, `phone`, `email`) VALUES ('Grandes Partes', 'Av. Calatayud N. 480', '22555554', 'gpartes@gmail.com');
INSERT INTO `PC`.`company` (`company_name`, `direction`, `phone`, `email`) VALUES ('Turbo', 'Av. Eloy Salmon', '22555553', 'turbo@gmail.com');

/*select * from rol_privilege;*/
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '1');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '2');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '3');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '4');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '5');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '6');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('1', '7');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '3');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '4');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '5');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '6');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '7');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('2', '8');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('3', '6');
INSERT INTO `PC`.`role_privilege` (`role_id`, `privilege_id`) VALUES ('3', '8');

/*select * from product;*/
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('Asus ROG Maximus', ' XII Extreme', 'Asus ROG Maximus XII Extreme\', \'CPU support: Intel 10th Gen~Socket: LGA 1200~Memory support: 4x DIMM, up to 128GB, DDR4-4700~Video ports: 2x Thunderbolt 3 ports on extensioncard (DP1.4)~Rear USB: 10X USB 3.2, 2X USB 2.0~Network: 1x 10GB Marvell ethernet, Intel WI-FI 6 wireless', '5', '1.5', '5', '1', '1', '740', '1', '1', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6306/6306415_sd.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('AMD Radeon', 'RX 5700', 'Processors: 2304~Core Clock: 1465 MHz~Memory: 8GB GDDR6~Memory Clock: 14Gbps~Power Connector: 1 x 8-pin, 1 x 6-pin~Outputs: 1 x DisplayPort 1.4 with DSC, 1 x HDMI with 4k60 support', '10', '0.75', '5', '3', '1', '2997', '0', '8', 'https://www.pcguide.com/wp-content/uploads/2019/09/best-rx-5700-graphics-card-amd-radeon-rx-5700-reviews-1200x720.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('MSI Optix', 'Optix-MAG241C', 'Curved display[1500R]~FHD High Resolution~144Hz Refresh Rate~1ms response time~True colors~AMD FreeSync~Anti-Flicker and Less Blue Light~Frameless desing~178 wide view angle', '3', '4', '5', '6', '1', '1620', '0', '2', 'https://sgstore.msi.com/wp-content/uploads/2020/04/product_6_20180612110658_5b1f38d2cf530.png');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('Deepcool ', 'N9BLACK', 'Dimension: 380X279X34mm~Fan Dimension: 180x15mm~Net Weight: 1700g~Operating Voltage: 4.5-5VDC~Fan speed: 600+-150 -1000+-10%RPM', '20', '2.1', '5', '7', '1', '36', '1', '5', 'https://www.deepcool.com/product/nbcooler/Upload/67845b0c1c5044a38482bf57c51b5604.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('Samsung SSD', '860 EVO', '1 TB~2.5 Inch~ SATA III~ Internal SSD', '12', '0.2', '4', '9', '1', '980', '0', '10', 'https://www.vortez.net/articles_file/38481_samsung_860_evo_intro.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('EVGA SuperNova', '850 Ga', '80 plus Gold 850W~Fully Modular~Eco Mode with Dbb Fan~Size: 150mm', '16', '5', '3', '11', '1', '1150', '0', '9', 'https://images.evga.com/products/gallery/png/220-GA-0850-X1_XL_4.png');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('Intel Core i9', '10900K', 'Cores: 10~Threads: 20~Base Frequency: 3.70GHz~Turbo Frequency: 5.30 GHz~Cache: 20MB~Bus Speed: 8GT/s', '8', '0.85', '3', '2', '1', '3500', '0', '7', 'https://www.hd-tecnologia.com/imagenes/articulos/2020/05/Asus-revela-el-rendimiento-del-Intel-Core-i9-10900K-en-Cinebench-R15-1280x720.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('ROCCAT Vulcan', '120 AIMO', 'Type: Mechanical Keyboard~3.6mm travel distance~1.8m USB cable~Polling rate: 1000Hz', '40', '3.2', '3', '4', '5', '880', '0', '11', 'https://cdn.mos.cms.futurecdn.net/N88JYZQyU35xYnd8F4oTYf.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('AMD Radeon', 'VII', 'Processors: 3840~Core Clock: 1400MHz~Memory: 16GB HBM2~Memory Clock: Gbps~Power Connectors: 2 x 8-pin~Outputs: 3 x DisplayPort 1.4, 1 x HDMI 2.0', '4', '2.2', '3', '3', '5', '2295', '0', '8', 'https://www.extremetech.com/wp-content/uploads/2019/01/Radeon-VII-Feature.jpg');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('REDRAGON MOUSE', 'IMPACT', '1000Hz 30G ACC~Super fast game engine~18 programmable buttons~5 Memory nodes~12400 DPI', '20', '0.5', '3', '5', '5', '250', '0', '6', 'https://redragonla.com/wp-content/uploads/2019/04/M908-6.png');
INSERT INTO `PC`.`product` (`product_name`, `model`, `product_description`, `stock`, `weight`, `company_id`, `product_type_id`, `city_id`, `price_per_unit`, `currency`, `brand_id`, `img`) VALUES ('AMD Ryzen 3', '5300X', 'Cores: 4~Threads: 8~Base Frequency 3.9GHz~Turbo Frequency 4.5 GHz~Cache memory 16MB~Max memory capacity: 64GB~Memory types: DDR4-3200', '13', '1', '4', '2', '5', '1400', '0', '8', 'https://gadgetversus.com/img/Intel_Celeron_J4115.jpg');

/*select * from user;*/
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('1', '1', 'Gabriel', 'Loza Lucero', '75292809', '1997-08-15', 'gabriel.loza.lucero@gmail.com', 'gaboloza', 'Admin1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('1', '1', 'Belen', 'Aranda Duran', '78945612', '1997-10-25', 'belen.aranda.duran@gmail.com', 'belaranda', 'Admin1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('1', '1', 'Ricardo', 'Paniagua', '74589632', '1995-04-05', 'ricpaniagua@gmail.com', 'ricpan', 'Admin1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('2', '2', 'Maria', 'Zapata', '75892652', '1999-06-22', 'marzap@gmail.com', 'marzap', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('3', '2', 'Sol', 'Castro', '74852963', '1991-11-25', 'solcas@gmail.com', 'solcas', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('4', '2', 'Berenice', 'Saavedra', '74512588', '1985-04-26', 'bersaa@gmail.com', 'bersaa', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('5', '2', 'Mariana', 'Lucero', '74411541', '1974-04-10', 'marluc@gmail.com', 'marluc', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('2', '2', 'Mauricio', 'Loza', '78544199', '1971-08-25', 'mauloz@gmail.com', 'mauloz', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('3', '2', 'Pablo', 'Luna', '7445522001', '1993-04-06', 'pablun@gmail.com', 'pablun', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('4', '2', 'Nibaldo', 'Marquez', '65522458', '1982-02-12', 'nibmar@gmail.com', 'nibmar', 'Customer1');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('5', '3', 'Javier', 'Rodriguez', '62541414', '1976-01-28', 'javrod@gmail.com', 'javrod', 'Seller3');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('2', '3', 'Roberto', 'Castellon', '69887885', '1969-07-23', 'robcas@gmail.com', 'robcas', 'Seller3');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('3', '4', 'Samuel', 'Barragan', '63325201', '1993-09-21', 'sambar@gmail.com', 'sambar', 'Seller4');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('4', '4', 'Fernando', 'Perez', '60058789', '1992-10-10', 'ferper@gmail.com', 'ferper', 'Seller4');
INSERT INTO `pc`.`user` (`city_id`, `company_id`, `name`, `lastname`, `phone`, `birthday`, `email`, `username`, `password`) VALUES ('5', '5', 'Jose', 'Zeballos', '69988207', '1987-11-23', 'joszeb@gmail.com', 'joszeb', 'Seller5');

/*select * from payment_data;*/
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('1');
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('2');
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('3');
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('1');
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('2');
INSERT INTO `PC`.`payment_data` (`payment_type_id`) VALUES ('3');

/*select * from payment_details;*/
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('1');
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('2');
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('3');
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('4');
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('5');
INSERT INTO `PC`.`payment_details` (`payment_data_id`) VALUES ('6');

/*select * from user_role;*/
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('1', '1');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('1', '2');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('1', '3');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '4');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '5');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '6');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '7');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '7');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '8');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '9');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('2', '10');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('3', '11');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('3', '12');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('3', '13');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('3', '14');
INSERT INTO `PC`.`user_role` (`role_id`, `user_id`) VALUES ('3', '15');

/*select * from category_product;*/
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('3', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('1', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('1', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('2', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('2', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('4', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('4', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('4', '3');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('5', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('5', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('6', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('6', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('7', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('7', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('8', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('8', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('9', '2');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('10', '1');
INSERT INTO `PC`.`category_product` (`product_id`, `category_id`) VALUES ('11', '2');