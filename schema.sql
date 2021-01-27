DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
    id INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO department (name)
VALUES ("Sales";

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Administration");

CREATE TABLE role (
    id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Senior Sales", 100000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Associate", 80000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Senior Engineer", 150000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 16000-0, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Senior Attorney", 250000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Attorney", 190000, 4);

CREATE TABLE employee (
    id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id VARCHAR(30),
    PRIMARY KEY(id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Doe", 1, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jane", "Smith", 2, "John Doe");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Pablo", "Garcia", 3, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Elizabeth", "Jones", 4, "Pablo Garcia");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Casper", "Greenberg", 5, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Sam", "Stein", 6, "Casper Greenberg");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Marcia", "Kim", 7, null);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Alex", "Mendez", 8, "Marcia Kim");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Chris", "James", 3, "Elizabeth Jones");