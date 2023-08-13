-- Recuperações simples com SELECT Statement
SELECT * FROM customer;
SELECT * FROM vehicle;
SELECT * FROM vehiclePart;	
SELECT * FROM service;
SELECT * FROM os;

-- Recuperar clientes 'CPF'
SELECT * FROM customer 
	WHERE customerType='CPF';
    
-- Recuperar clientes 'CNPJ'
SELECT * FROM customer 
	WHERE customerType='CNPJ';

-- Recuperar nome completo e tipo do cliente
SELECT CONCAT(fName, ' ', mName, ' ', lName) AS Customer, customerType 
	FROM customer;
    
-- Recuperar a duração média dos serviços
SELECT AVG(duration) AS average_duration FROM service;

-- Recuperar o preço total das OSs
SELECT o.osCode, vp.price AS VehiclePart, s.servicePrice, (s.servicePrice + vp.price) AS Total
	FROM os AS o
    LEFT JOIN service AS s ON o.idService = s.idService
    LEFT JOIN vehiclePart AS vp ON o.idVehiclePart = vp.idVehiclePart;

-- Recuperar o nome completo do cliente e os dados dos carros
SELECT CONCAT(fName, ' ', mName, ' ', lName) AS Customer, CONCAT(model, ' - ', brand) AS Car
	FROM customer AS c
    LEFT JOIN vehicle AS v ON c.idCustomer = v.idCustomer
    WHERE v.vehicleType='Car';

-- Recuperar o nome completo do cliente e os dados das motocicletas
SELECT CONCAT(fName, ' ', mName, ' ', lName) AS Customer, CONCAT(model, ' - ', brand) AS Motorcycle
	FROM customer AS c
    LEFT JOIN vehicle AS v ON c.idCustomer = v.idCustomer
    WHERE v.vehicleType='Motorcycle';
     
-- Recuperar peças com preço em ordem crescente
SELECT idVehiclePart, pName AS Name, Price
	FROM vehiclePart 
    ORDER BY(price);

-- Recuperar osCode, Nome do Cliente, preço da peça, preço do Serviço e valor total, 
-- ordenado de forma decrescente pelo preço total das OSs
SELECT o.osCode, CONCAT(c.fName, ' ', c.mName, ' ', c.lName) AS Customer, vp.price AS VehiclePart, s.servicePrice, (s.servicePrice + vp.price) AS Total
	FROM os AS o
    LEFT JOIN service AS s ON o.idService = s.idService
    LEFT JOIN vehiclePart AS vp ON o.idVehiclePart = vp.idVehiclePart
    LEFT JOIN customer AS c ON o.idCustomer = c.idCustomer
    ORDER BY(Total) DESC;

-- Recuperar a quantidade de pagamentos de cada tipo
SELECT payment, COUNT(*) AS transactions FROM os
GROUP BY payment;

-- Identificar peças que tiveram a saída igual ou superior à 5 unidades
SELECT idVehiclePart, pName, price FROM os
	INNER JOIN vehiclePart USING (idVehiclePart)
	GROUP BY idVehiclePart
	HAVING idVehiclePart >= 5;

-- Recuperar a receita total por forma de pagamento e filtrar por receita mínima
SELECT o.payment, SUM(s.servicePrice + vp.price) AS total
	FROM os AS o
    INNER JOIN service AS s ON o.idService = s.idService
    INNER JOIN vehiclePart AS vp ON o.idVehiclePart = vp.idVehiclePart
    GROUP BY payment
    HAVING total > 1;
