create schema project4413;

use project4413;

create table orderDetails (
orderId int NOT NULL AUTO_INCREMENT,
itemList varchar(100) not null,
qtyList varchar(100) not null,
total double(9,2) not null,
date date,
PRIMARY KEY 	(orderId)
);


create table users (
username varchar(25),
password varchar(25),
email varchar(25),
admin boolean,
PRIMARY KEY (email)
);



create table products (
id int NOT NULL AUTO_INCREMENT,
name varchar(50) not null,
price decimal(7,2) not null,
image varchar(25) not null,
description varchar(250),
category varchar(25),
brand varchar(25),
PRIMARY KEY 	(id)
);


create table address (
addressId int NOT NULL AUTO_INCREMENT,
user varchar(100) not null,
address varchar(100) not null,
city varchar(25) not null,
state varchar(250),
country varchar(25),
zip varchar(10),
PRIMARY KEY 	(addressId),
FOREIGN KEY (user) REFERENCES users(email)
);


create table payment (
payId int NOT NULL AUTO_INCREMENT,
user varchar(25) not null,
cardName varchar(100) not null,
cardNumber int(16) not null,
exp int(4) not null,
cvv int(3) not null,
addressId int not null,
PRIMARY KEY (payId),
FOREIGN KEY (user) REFERENCES users(email),
FOREIGN KEY (addressId) REFERENCES address(addressId)
);


create table Orders(
orderId int NOT NULL AUTO_INCREMENT,
user varchar(25) not null,
addressId int not null,
payId int not null,
PRIMARY KEY (orderId),
FOREIGN KEY (orderId) REFERENCES orderDetails(orderId),
FOREIGN KEY (user) REFERENCES users(email),
FOREIGN KEY (addressId) REFERENCES address(addressId),
FOREIGN KEY (payId) REFERENCES payment(payId)
);


INSERT INTO products (name,price,image,description,category,brand) values("MacBook Air","1399.99","macbook.png","MacBook Air: 14 inch, Sleek, lightweight, powerful. Retina display, all-day battery. Perfect for on-the-go productivity and creativity.","Laptop","Apple");
INSERT INTO products (name,price,image,description,category,brand) values("PlayStation 5","699.99","ps5.png","PlayStation 5: Disc version, cutting-edge gaming console with stunning graphics, ultra-fast SSD, and immersive gaming experiences.","Gaming","Sony");
INSERT INTO products (name, price, image, description, category, brand) VALUES ("Xbox Series X Console", "499.99", "xbox_series_x.png", "Next-gen gaming with powerful hardware, fast loading times, and a vast library of games.", "Gaming", "Microsoft");
INSERT INTO products (name,price,image,description,category,brand) values("Samsung TV","1399.99","samsung.png","Samsung 65-inch TV: Immersive entertainment with vibrant visuals, cinematic experience. Smart features for seamless streaming and connectivity.","Electronics","Samsung");
INSERT INTO products (name,price,image,description,category,brand) values("Beats Studio Pro","469.95","beats.png","Beats Studio Pro – Premium Wireless Noise Cancelling Headphones","Accessories","Beats");
INSERT INTO products (name, price, image, description, category, brand) VALUES ("Canon EOS Rebel T7i DSLR Camera", "799.00", "canon_camera.png", "High-quality DSLR camera with advanced features, versatile lens options, and superb image quality.", "Electronics", "Canon");
INSERT INTO products (name, price, image, description, category, brand) VALUES ("Amazon Echo Show 8", "129.99", "echo.png", "Smart display with Alexa, perfect for video calls, entertainment, and managing your smart home.", "Electronics", "Amazon");
INSERT INTO products (name, price, image, description, category, brand) VALUES ("Dell XPS 15 Laptop", "1499.00", "dell_laptop.png", "Powerful laptop for professionals, boasting high performance, stunning display, and premium build quality.", "Laptop", "Dell");
INSERT INTO products (name, price, image, description, category, brand) VALUES ("PlayStation 5 Controller", "69.99", "ps5_controller.png", "Advanced haptic feedback and adaptive triggers. Elevate your gaming experience with precise control.", "Gaming", "Sony");
