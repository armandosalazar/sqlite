CREATE TABLE users (
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

SELECT * FROM users;

INSERT INTO users (id, name, last_name, email) VALUES (1, "Armando", "Salazar", "armando@email.com");
INSERT INTO subjects (id, name, "level") VALUES (1, "Matemáticas discretas", 1);

CREATE TABLE subjects (
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	`level` INT NOT NULL
);
-- SELECTs
SELECT id AS identifier, last_name AS [last name] FROM users;
SELECT id, name FROM users;
SELECT * FROM subjects;
-- SHOW DISTINT sqlite
SELECT DISTINCT id FROM users;
SELECT COUNT(DISTINCT id) FROM users; 
SELECT COUNT(*) AS count FROM (SELECT DISTINCT id FROM users);
-- WHERE