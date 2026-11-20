CREATE SCHEMA dz;

CREATE TABLE dz.persons (
	name VARCHAR(15),
	surname VARCHAR(30),
	age INTEGER CHECK (age BETWEEN 0 AND 100),
	phone_number VARCHAR(11) NOT NULL UNIQUE,
	city_of_living VARCHAR(50),
	PRIMARY KEY (name, surname, age)
);

INSERT INTO dz.persons (name, surname, age, phone_number, city_of_living)
VALUES
    ('Alex', 'Smirnov', 25, '89161234567', 'Moscow'),
    ('Ivan', 'Petrov', 34, '89262345678', 'Kislovodsk'),
    ('Maria', 'Ivanova', 22, '89363456789', 'Saint Petersburg'),
    ('Dmitry', 'Sokolov', 41, '89454567890', 'Moscow'),
    ('Anna', 'Kuznetsova', 28, '89545678901', 'Sochi'),
    ('Sergey', 'Volkov', 19, '89656789012', 'Stavropol'),
    ('Elena', 'Morozova', 37, '89767890123', 'Moscow'),
    ('Pavel', 'Orlov', 31, '89878901234', 'Rostov');

SELECT name, surname FROM dz.persons
WHERE city_of_living = 'Moscow'
LIMIT 500;

SELECT * FROM dz.persons
WHERE age > 27
ORDER BY age DESC
LIMIT 500;