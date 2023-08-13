CREATE DATABASE workshop;
USE workshop;
-- DROP DATABASE workshop;

-- Criar tabela Customer
CREATE TABLE customer(
	idCustomer INT AUTO_INCREMENT PRIMARY KEY,
	fName VARCHAR(15) NOT NULL,
	mName VARCHAR(15),
	lName VARCHAR(25),
	cAddress VARCHAR(100) NOT NULL,
	celphone CHAR(11) NOT NULL,
	cpf CHAR(11),
	cnpj CHAR(15),
	customerType ENUM('CPF', 'CNPJ') DEFAULT 'CPF',
    CONSTRAINT unique_cpf_customer UNIQUE(CPF),
    CONSTRAINT unique_cnpk_customer UNIQUE(CNPJ)
	);

CREATE TABLE vehicle(
	idVehicle INT AUTO_INCREMENT PRIMARY KEY, 
    idCustomer INT,
	vehicleType ENUM('Car', 'Motorcycle') NOT NULL,
	brand VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	year CHAR(4),
	licensePlate CHAR(7) NOT NULL,
    CONSTRAINT pk_vehicle_customer FOREIGN KEY(idCustomer) REFERENCES customer(idCustomer)
	);
    
CREATE TABLE vehiclePart(
	idVehiclePart INT AUTO_INCREMENT PRIMARY KEY, 
	pName VARCHAR(45),
	pDescription VARCHAR(255),
	price FLOAT,
    CONSTRAINT unique_part_name UNIQUE(pName)
    );

CREATE TABLE service(
	idService INT AUTO_INCREMENT PRIMARY KEY, 
	serviceType VARCHAR(45),
	duration INT,
	sDescription VARCHAR(255),
	servicePrice FLOAT
	);

CREATE TABLE os(
	idService INT,
	idVehiclePart INT,
	idCustomer INT,
	osCode CHAR(10) NOT NULL,
	osDate DATE NOT NULL,
	Payment ENUM('Dinheiro', 'Cartão de Crédito', 'Cartão de Débito'),
    CONSTRAINT fk_os_service FOREIGN KEY(idService) REFERENCES service(idService),
    CONSTRAINT fk_os_part FOREIGN KEY(idVehiclePart) REFERENCES vehiclePart(idVehiclePart),
    CONSTRAINT fk_os_customer FOREIGN KEY(idCustomer) REFERENCES customer(idCustomer)
	);