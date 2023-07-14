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
SELECT * FROM users WHERE id = 1;
SELECT * FROM users WHERE name = 'Armando';
SELECT * FROM users WHERE id <= 2;
-- !=
SELECT * FROM users WHERE id <> 1;
SELECT * FROM users WHERE id BETWEEN 1 AND 2;
SELECT * FROM users WHERE name LIKE 'A%';
SELECT * FROM users WHERE name IN ('Armando', 'Luis');
-- The WHERE clause can be combined with AND, OR, and NOT operators.
SELECT * FROM users WHERE name NOT LIKE 's%';
SELECT * FROM users WHERE name = 'Armando' AND id = 1;
SELECT * FROM users WHERE name = 'Armando' OR last_name = 'Salazar';
SELECT * FROM users WHERE NOT name = 'Armando' AND NOT last_name = 'Salazar';
SELECT name FROM users ORDER BY name ASC;
SELECT name FROM users ORDER BY name DESC;
SELECT name AS 'Nombre' FROM users ORDER BY name;
SELECT * FROM users ORDER BY name ASC, last_name DESC;
