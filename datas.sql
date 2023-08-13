-- Inserir dados na tabela 'customer'
INSERT INTO customer (fName, mName, lName, cAddress, celphone, cpf, cnpj, customerType)
	VALUES
		('João', NULL, 'Silva', 'Rua A, 123', '99999999999', '12345678901', NULL, 'CPF'),
		('Maria', 'A.', 'Santos', 'Av. B, 456', '98888888888', NULL, '12345678901234', 'CNPJ'),
		('Pedro', 'R.', 'Ferreira', 'Praça C, 789', '97777777777', '98765432101', NULL, 'CPF'),
		('Ana', 'M.', 'Pereira', 'Rua X, 789', '96666666666', '87654321012', NULL, 'CPF'),
		('Carlos', 'A.', 'Oliveira', 'Av. Y, 101', '95555555555', '23456789012', NULL, 'CPF'),
		('Isabel', 'R.', 'Rodrigues', 'Praça Z, 987', '94444444444', NULL, '34567890123456', 'CNPJ'),
		('Paulo', NULL, 'Gomes', 'Rua W, 654', '93333333333', '54321098765', NULL, 'CPF'),
		('Fernanda', 'C.', 'Lima', 'Av. V, 321', '92222222222', NULL, '65432109876543', 'CNPJ'),
		('Rafael', NULL, 'Alves', 'Rua U, 111', '91111111111', '98765432109', NULL, 'CPF');

-- Inserir dados na tabela 'vehicle'
INSERT INTO vehicle (idCustomer, vehicleType, brand, model, year, licensePlate)
	VALUES
		(1, 'Car', 'Toyota', 'Corolla', '2022', 'ABC1234'),
		(1, 'Motorcycle', 'Honda', 'CBR 600', '2020', 'XYZ567'),
		(2, 'Car', 'Ford', 'Focus', '2021', 'DEF5678'),
		(4, 'Car', 'Chevrolet', 'Cruze', '2022', 'FGH1234'),
		(5, 'Motorcycle', 'Kawasaki', 'Ninja 300', '2021', 'JKL567'),
		(6, 'Car', 'Volkswagen', 'Golf', '2020', 'MNO5678'),
		(2, 'Car', 'Hyundai', 'Elantra', '2023', 'PQR567'),
		(3, 'Motorcycle', 'Suzuki', 'GSX-R 750', '2022', 'STU123'),
		(1, 'Car', 'Honda', 'Civic', '2023', 'VWX123');
    
-- Inserir dados na tabela 'vehiclePart'
INSERT INTO vehiclePart (pName, pDescription, price)
 VALUES
	('Air Filter', 'Replacement air filter for improved engine performance', 12.99),
    ('Fuel Pump', 'High-quality fuel pump for efficient fuel delivery', 45.00),
    ('Wiper Blades', 'Pair of wiper blades for clear visibility', 8.75),
    ('Radiator Hose', 'Durable radiator hose for efficient cooling', 14.50),
    ('Battery', 'Long-lasting battery for reliable starting', 75.00),
    ('Alternator', 'Premium alternator for electrical system', 120.00),
    ('Brake Pads', 'High-quality brake pads for various vehicles', 50.99),
    ('Oil Filter', 'Premium oil filter for engine maintenance', 10.99),
    ('Spark Plugs', 'Set of spark plugs for better ignition', 8.50);	
        
-- Inserir dados na tabela 'service'
INSERT INTO service (serviceType, duration, sDescription, servicePrice)
VALUES
    ('Oil Change', 60, 'Complete oil change and filter replacement', 30.00),
    ('Brake Inspection', 30, 'Thorough inspection of brake system', 20.00),
    ('Tire Rotation', 15, 'Rotating tires to ensure even wear', 15.00),
    ('Battery Replacement', 45, 'Replace old battery with new one', 50.00),
    ('Tire Alignment', 30, 'Aligning tires for proper vehicle handling', 25.00),
    ('Engine Tune-up', 90, 'Comprehensive engine tune-up for performance', 80.00),
    ('AC System Check', 20, 'Checking and servicing air conditioning system', 15.00),
    ('Brake Fluid Flush', 60, 'Flush old brake fluid and replace', 40.00),
    ('Spark Plug Replacement', 40, 'Replacing worn-out spark plugs', 35.00);

-- Inserir dados na tabela 'os'
INSERT INTO os (idService, idVehiclePart, idCustomer, osCode, osDate, Payment)
	VALUES
		(1, 5, 1, 2023081301, '2023-08-13', 'Cartão de Crédito'),
		(2, 4, 2, 2023081302, '2023-08-13', 'Dinheiro'),
		(3, 5, 3, 2023081303, '2023-08-13', 'Cartão de Débito'),
		(4, 4, 7, 2023081304, '2023-08-13', 'Cartão de Crédito'),
		(5, 7, 8, 2023081305, '2023-08-13', 'Cartão de Débito'),
		(6, 8, 9, 2023081306, '2023-08-13', 'Dinheiro'),
		(1, 5, 6, 2023081307, '2023-08-13', 'Cartão de Crédito'),
		(2, 2, 5, 2023081308, '2023-08-13', 'Dinheiro'),
		(3, 1, 4, 2023081309, '2023-08-13', 'Cartão de Débito');
