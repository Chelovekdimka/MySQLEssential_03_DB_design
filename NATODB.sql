DROP DATABASE NATODB;
CREATE DATABASE NATODB;
USE NATODB;

CREATE TABLE Employees (
  id INT NOT NULL AUTO_INCREMENT,
  f_name VARCHAR(255) NOT NULL,
  m_name VARCHAR(255) NOT NULL,
  l_name VARCHAR(255) NOT NULL,
  platoon INT ,
  office VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Weapons (
  id INT NOT NULL AUTO_INCREMENT,
  weapon_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE Gunsmith (
id INT NOT NULL AUTO_INCREMENT,
f_name VARCHAR(255) NOT NULL,
m_name VARCHAR(255) NOT NULL,
l_name VARCHAR(255) NOT NULL,
Gunsmith_rank VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IssuedWeapons (
  id INT NOT NULL AUTO_INCREMENT,
  employee_id INT NOT NULL,
  weapon_id INT NOT NULL,
  issued_by int NOT NULL,

  PRIMARY KEY (id),
  FOREIGN KEY (issued_by) REFERENCES Gunsmith(id),
  FOREIGN KEY (employee_id) REFERENCES Employees(id),
  FOREIGN KEY (weapon_id) REFERENCES Weapons(id)
);



INSERT INTO Employees
(f_name, m_name, l_name, platoon, office)
VALUES
('Petrov', 'Vladimir', 'Alexandrovich', 205, 222),
('Lodarev', 'Petro', 'Semenovich', 221, 232),
('Leontev', 'K-real', 'Vasil-gymovich', 201, 212);

INSERT INTO Employees
(f_name, m_name, l_name, office)
VALUES
('Duhov', 'Rashid', 'Mumbayevich', 200);

INSERT INTO Weapons
(weapon_name)
VALUES
('AK-47'),
('Glock20'), 
('AK-74');

INSERT INTO Gunsmith
(f_name, m_name, l_name, Gunsmith_rank)
VALUES
('Burov', 'Ostap', 'Sergiyovich', 'major'),
('Ribakov', 'Nickolay', 'Gospodinov', 'major'),
('Derebanov', 'Vlastelin', 'Yanovich', 'lieutenant colonel');

INSERT INTO IssuedWeapons
(employee_id, weapon_id, issued_by)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 3),
(2, 2, 2),
(3, 1, 1),
(3, 2, 2),
(4, 2, 1);

