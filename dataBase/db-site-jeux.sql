-- Créer la table Role
CREATE TABLE IF NOT EXISTS Role (
    id_role INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Créer la table Address
CREATE TABLE IF NOT EXISTS Address (
    id_address INT PRIMARY KEY AUTO_INCREMENT,
    street_nb VARCHAR(255) NOT NULL,
    street_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    province VARCHAR(255),
    zipcode VARCHAR(10),
    country VARCHAR(255) NOT NULL
);

-- Créer la table User
CREATE TABLE IF NOT EXISTS User (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Role(id_role)
);

-- Créer la table Product
CREATE TABLE IF NOT EXISTS Product (
    id_product INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    qty INT,
    price DECIMAL(10, 2) NOT NULL,
    url_image VARCHAR(255),
    description TEXT,
    console VARCHAR(255),
    year INT
);

-- Créer la table "Order"
CREATE TABLE IF NOT EXISTS `Order` (
    id_order INT PRIMARY KEY AUTO_INCREMENT,
    ref VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES User(id_user)
);

-- Créer la table Order_has_product
CREATE TABLE IF NOT EXISTS Order_has_product (
    id_order INT,
    product_id INT,
    qty INT,
    PRIMARY KEY (id_order, product_id),
    FOREIGN KEY (id_order) REFERENCES `Order`(id_order),
    FOREIGN KEY (product_id) REFERENCES Product(id_product)
);
