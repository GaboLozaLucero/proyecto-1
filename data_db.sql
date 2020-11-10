/*DATABASE MUST HAVE THE NAME "proyecto_pc", IN ORDER TO INSERT THE FOLLOWING DATA*/

/*select * from city;*/
INSERT INTO `proyecto_pc`.`city` (`city_name`) VALUES ('La Paz');
INSERT INTO `proyecto_pc`.`city` (`city_name`) VALUES ('Oruro');
INSERT INTO `proyecto_pc`.`city` (`city_name`) VALUES ('Cochabamba');
INSERT INTO `proyecto_pc`.`city` (`city_name`) VALUES ('Tarija');
INSERT INTO `proyecto_pc`.`city` (`city_name`) VALUES ('Santa Cruz');

/*select * from product_type;*/
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Motherboard');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('CPU');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('GPU');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Keyboard');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Mouse');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Screencooler');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Cooler');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('RAM');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('SSD');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('HDD');
INSERT INTO `proyecto_pc`.`product_type` (`type_name`) VALUES ('Power Supply');

/*select * from status;*/
INSERT INTO `proyecto_pc`.`status` (`status_name`) VALUES ('Active');
INSERT INTO `proyecto_pc`.`status` (`status_name`) VALUES ('Delete');
INSERT INTO `proyecto_pc`.`status` (`status_name`) VALUES ('In-stock');
INSERT INTO `proyecto_pc`.`status` (`status_name`) VALUES ('Out-of-stock');

/*select * from payment_type;*/
INSERT INTO `proyecto_pc`.`payment_type` (`type_name`) VALUES ('Cash');
INSERT INTO `proyecto_pc`.`payment_type` (`type_name`) VALUES ('Debit card');
INSERT INTO `proyecto_pc`.`payment_type` (`type_name`) VALUES ('Credit card');

/*select * from company;*/
INSERT INTO `proyecto_pc`.`company` (`name`, `direction`, `phone`, `email`) VALUES ('Big PC', 'TODO', '22222222', 'bigpc@bigpc.com');
INSERT INTO `proyecto_pc`.`company` (`name`, `direction`, `phone`, `email`) VALUES ('Computadoras Gonzales', 'Av. Calatayud N. 255', '22555555', 'comgonzales@gmail.com');
INSERT INTO `proyecto_pc`.`company` (`name`, `direction`, `phone`) VALUES ('Grandes Partes', 'Av. Calatayud N. 480', '22555554');
INSERT INTO `proyecto_pc`.`company` (`name`, `direction`, `phone`, `email`) VALUES ('Turbo', 'Av. Eloy Salmon', '22555553', 'turbo@gmail.com');
INSERT INTO `proyecto_pc`.`company` (`name`, `direction`, `phone`, `email`) VALUES ('No company', 'nowhere', '00000000', 'nomail');

/*select * from privilege;*/
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Create account');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Delete account');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Add product');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Dlete product');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Modify product');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('See product');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Sell product');
INSERT INTO `proyecto_pc`.`privilege` (`privilege_name`) VALUES ('Buy product');

/*select * from role;*/
INSERT INTO `proyecto_pc`.`role` (`rol_name`) VALUES ('Admin');
INSERT INTO `proyecto_pc`.`role` (`rol_name`) VALUES ('Seller');
INSERT INTO `proyecto_pc`.`role` (`rol_name`) VALUES ('Buyer');

/*select * from rol_privilege;*/
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '1');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '2');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '3');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '4');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '5');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '6');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('1', '7');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '3');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '4');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '5');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '6');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '7');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('2', '8');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('3', '6');
INSERT INTO `proyecto_pc`.`rol_privilege` (`id_role`, `id_privilege`) VALUES ('3', '8');

/*select * from person;*/
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Ricardo', 'Torrez', '77717774', '1993-10-08', 'ricar@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Manuel', 'Daza', '77717773', '1992-10-31', 'man@gmailc.om');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('2', 'Rodrigo', 'Jaramillo', '77717772', '1977-12-03', 'rod@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('3', 'Alejandro', 'Moreno', '77727771', '1979-11-28', 'ale@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('4', 'Fernanda', 'Gomez', '77727772', '1974-07-27', 'fer@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('4', 'Marcela', 'Rios', '77727773', '1983-08-20', 'mar@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('5', 'Carlos', 'Varela', '77747771', '1977-05-17', 'car@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('5', 'Eduardo', 'Hernandez', '77747778', '1978-02-18', 'edu@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('3', 'Maximiliano', 'Lopez', '77787779', '1980-09-21', 'max@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('2', 'Jorge', 'Rojas', '77767776', '1985-06-24', 'jor@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Francisca', 'Garcia', '77747776', '1988-04-28', 'fra@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Mariana', 'Fernandez', '77747775', '1978-06-10', 'mar@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('3', 'Sergio', 'Chavez', '77757775', '1982-07-19', 'ser@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('5', 'Mauricio', 'Trevilla', '77747774', '1992-06-20', 'mau@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('5', 'Yamil', 'Ballarta', '77777777', '1998-02-14', 'yam@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('4', 'Rafael', 'Perez', '78888888', '1994-05-12', 'raf@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Gabriel ', 'Loza', '75292809', '1997-08-15', 'gabriel.loza.lucero@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Luis', 'Rodriguez', '78730291', '1998-05-12', 'luis@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1', 'Nilson', 'Contreras', '71965701', '1997-12-20', 'nilson@gmail.com');
INSERT INTO `proyecto_pc`.`person` (`city_id`, `first_name`, `last_name`, `phone`, `birth_date`, `email`) VALUES ('1','Alvaro', 'Moller', '60571824', '1999-01-05', 'alvaromollerlima@gmail.com');

/*select * from product;*/
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('1', '2', '1', '3', 'Asus ROG Maximus XII Extreme', 'CPU support: Intel 10th Gen~Socket: LGA 1200~Memory support: 4x DIMM, up to 128GB, DDR4-4700~Video ports: 2x Thunderbolt 3 ports on extensioncard (DP1.4)~Rear USB: 10X USB 3.2, 2X USB 2.0~Network: 1x 10GB Marvell ethernet, Intel WI-FI 6 wireless', '5', '5150');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('3', '2', '1', '3', 'AMD Radeon RX 5700', 'Processors: 2304~Core Clock: 1465 MHz~Memory: 8GB GDDR6~Memory Clock: 14Gbps~Power Connector: 1 x 8-pin, 1 x 6-pin~Outputs: 1 x DisplayPort 1.4 with DSC, 1 x HDMI with 4k60 support', '10', '2997');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('6', '2', '1', '3', 'MSI Optix-MAG241C', 'Curved display[1500R]~FHD High Resolution~144Hz Refresh Rate~1ms response time~True colors~AMD FreeSync~Anti-Flicker and Less Blue Light~Frameless desing~178 wide view angle', '3', '1620');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('7', '2', '1', '3', 'Deepcool N9BLACK', 'Dimension: 380X279X34mm~Fan Dimension: 180x15mm~Net Weight: 1700g~Operating Voltage: 4.5-5VDC~Fan speed: 600+-150 -1000+-10%RPM', '20', '250');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('9', '4', '1', '3', 'Samsung SSD 860 EVO', '1 TB~2.5 Inch~ SATA III~ Internal SSD', '12', '980');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('11', '3', '1', '3', 'EVGA SuperNova 850 Ga', '80 plus Gold 850W~Fully Modular~Eco Mode with Dbb Fan~Size: 150mm', '16', '1150');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('2', '3', '1', '3', 'Intel Core i9-10900K', 'Cores: 10~Threads: 20~Base Frequency: 3.70GHz~Turbo Frequency: 5.30 GHz~Cache: 20MB~Bus Speed: 8GT/s', '8', '3500');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('4', '3', '5', '3', 'ROCCAT Vulcan 120 AIMO', 'Type: Mechanical Keyboard~3.6mm travel distance~1.8m USB cable~Polling rate: 1000Hz', '40', '880');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('3', '3', '5', '3', 'AMD Radeon VII', 'Processors: 3840~Core Clock: 1400MHz~Memory: 16GB HBM2~Memory Clock: Gbps~Power Connectors: 2 x 8-pin~Outputs: 3 x DisplayPort 1.4, 1 x HDMI 2.0', '4', '16000');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('5', '3', '5', '3', 'REDRAGON Impact', '1000Hz 30G ACC~Super fast game engine~18 programmable buttons~5 Memory nodes~12400 DPI', '20', '350');
INSERT INTO `proyecto_pc`.`product` (`product_type_id`, `company_id`, `city_id`, `id_status`, `product_name`, `product_description`, `unit`, `price_per_unit`) VALUES ('2', '4', '5', '3', 'AMD Ryzen 3 5300X', 'Cores: 4~Threads: 8~Base Frequency 3.9GHz~Turbo Frequency 4.5 GHz~Cache memory 16MB~Max memory capacity: 64GB~Memory types: DDR4-3200', '13', '1400');

/*select * from user;*/
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('17', '1', '1', 'gabriellozalucero', 'admin1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('18', '1', '1', 'luisrodriguez', 'admin1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('19', '1', '1', 'nilsoncontreras', 'admin1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('20', '1', '1', 'alvaromoller', 'admin1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('1', '5', '1', 'ricartorrez', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('2', '5', '1', 'mandaza', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('3', '5', '1', 'rodja', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('4', '5', '1', 'alemo', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('5', '5', '1', 'fergo', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('6', '5', '1', 'marri', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('7', '5', '1', 'carva', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('8', '5', '1', 'eduher', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('9', '5', '1', 'maxlo', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('10', '2', '1', 'jorro', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('11', '2', '1', 'fraga', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('12', '3', '1', 'marfer', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('13', '3', '1', 'sercha', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('14', '4', '1', 'mautre', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('15', '5', '1', 'yamba', 'user1');
INSERT INTO `proyecto_pc`.`user` (`person_id`, `company_id`, `id_status`, `username`, `password`) VALUES ('16', '5', '1', 'rafpe', 'user1');

/*select * from payment_data;*/
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('1');
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('2');
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('3');
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('1');
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('2');
INSERT INTO `proyecto_pc`.`payment_data` (`payment_type_id`) VALUES ('3');

/*select * from payment_details;*/
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('1');
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('2');
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('3');
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('4');
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('5');
INSERT INTO `proyecto_pc`.`payment_details` (`payment_data_id`) VALUES ('6');

/*select * from purchase_details;*/
INSERT INTO `proyecto_pc`.`purchase_details` (`product_id`, `quanitity`, `price_per_unit`, `price`) VALUES ('1', '1', '5150', '5150');
INSERT INTO `proyecto_pc`.`purchase_details` (`product_id`, `quanitity`, `price_per_unit`, `price`) VALUES ('5', '2', '980', '1960');
INSERT INTO `proyecto_pc`.`purchase_details` (`product_id`, `quanitity`, `price_per_unit`, `price`) VALUES ('10', '5', '350', '1750');
INSERT INTO `proyecto_pc`.`purchase_details` (`product_id`, `quanitity`, `price_per_unit`, `price`) VALUES ('11', '2', '1400', '2800');

/*select * from cart;*/
INSERT INTO `proyecto_pc`.`cart` (`purchase_details_id`, `id_status`, `id_user`) VALUES ('1', '1', '20');
INSERT INTO `proyecto_pc`.`cart` (`purchase_details_id`, `id_status`, `id_user`) VALUES ('2', '1', '16');
INSERT INTO `proyecto_pc`.`cart` (`purchase_details_id`, `id_status`, `id_user`) VALUES ('3', '1', '12');
INSERT INTO `proyecto_pc`.`cart` (`purchase_details_id`, `id_status`, `id_user`) VALUES ('4', '1', '8');

/*select * from checkout;*/
INSERT INTO `proyecto_pc`.`checkout` (`cart_id`, `id_user`, `payment_details_id`, `date`, `total`) VALUES ('1', '20', '2', '2020-11-05', '5150');
INSERT INTO `proyecto_pc`.`checkout` (`cart_id`, `id_user`, `payment_details_id`, `date`, `total`) VALUES ('2', '16', '4', '2020-11-05', '1960');

/*select * from user_role;*/
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('1', '1');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('1', '2');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('1', '3');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('1', '4');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('2', '14');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('2', '15');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('2', '16');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('2', '17');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('2', '18');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '19');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '20');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '5');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '6');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '7');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '8');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '9');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '10');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '11');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '12');
INSERT INTO `proyecto_pc`.`user_role` (`id_role`, `id_user`) VALUES ('3', '13');

/*select * from inventory;*/