/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`Diagram_Projet_4` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Diagram_Projet_4`;
DROP SCHEMA IF EXISTS Diagram_Projet_4;
CREATE SCHEMA Diagram_Projet_4;
USE Diagram_Projet_4;

-- CREATE TABLES

CREATE TABLE productlines (
	productLine INT AUTO_INCREMENT,
    textDescription VARCHAR(250),
    htmlDescription VARCHAR(250),
    image BLOB,
	PRIMARY KEY (productLine)

    );
    
    
    CREATE TABLE products (
	productCode VARCHAR(15) NOT NULL,
    productName VARCHAR(70) NOT NULL,
    productLine VARCHAR(50) NOT NULL,
    productScale VARCHAR(10) NOT NULL,
    productVendor VARCHAR(50) NOT NULL,
    productDescription TEXT NOT NULL,
    quantityInStock SMALLINT(6) NOT NULL,
    buyPrice DECIMAL(10,2) NOT NULL,
    MSRP DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (productCode)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
    
    CREATE TABLE orderdetails (
	orderNumber INT AUTO_INCREMENT,
    productCode VARCHAR(15) NOT NULL,
    quantityOrdered INT(11) NOT NULL,
    priceEach DECIMAL(10,2) NOT NULL,
    orderLineNumber SMALLINT(6) NOT NULL,
    PRIMARY KEY (`orderNumber`,`productCode`)
    );
    
    
    CREATE TABLE orders (
	orderNumber INT(11) AUTO_INCREMENT,
    orderDate DATE NOT NULL,
    requiredDate DATE NOT NULL,
    shippedDate DATE DEFAULT NULL,
    status VARCHAR(15) NOT NULL,
    comments TEXT,
    customerNumber INT(11) NOT NULL,
    PRIMARY KEY (orderNumber)
    );


    CREATE TABLE payments (
	customerNumber INT(11) NOT NULL,
    checkNumber VARCHAR(50) NOT NULL,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (customerNumber,checkNumber)
    );
    
   CREATE TABLE customers (
	customerNumber INT(11) AUTO_INCREMENT,
    customerName VARCHAR(50) NOT NULL,
    contactLastName VARCHAR(50) NOT NULL,
    contactFirstName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50),
    postalCode VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    salesRepEmployeeNumber INT(11) DEFAULT NULL,
    creditLimit DECIMAL(10,2) DEFAULT NULL,
    PRIMARY KEY (customerNumber)
    ); 
    
    
    CREATE TABLE offices (
	officeCode VARCHAR(10) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    addressLine1 VARCHAR(50) NOT NULL,
    addressLine2 VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50) NOT NULL,
    postalCode VARCHAR(15) NOT NULL,
    territory VARCHAR(10) NOT NULL,
    PRIMARY KEY (officeCode)
    );
    
    
	CREATE TABLE employees (
	employeeNumber INT(11) AUTO_INCREMENT,
    lastName VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    extension VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    officeCode VARCHAR(50) NOT NULL,
    reportsTo INT(11),
    jobTitle VARCHAR(50) NOT NULL,
	PRIMARY KEY (employeeNumber)
    );
    
    
    
    
    