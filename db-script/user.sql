-- create a db user for the app
-- login as root user
CREATE USER 'redenvelope'@'localhost' IDENTIFIED BY 'redenvelope';

-- create database
CREATE DATABASE `redenvelope` DEFAULT CHARACTER SET = `utf8` DEFAULT COLLATE = `utf8_unicode_ci`;

-- grant all previlige on database
GRANT CREATE ROUTINE, CREATE VIEW, ALTER, SHOW VIEW, CREATE, ALTER ROUTINE, EVENT, INSERT, SELECT, DELETE, TRIGGER, GRANT OPTION, REFERENCES, UPDATE, DROP, EXECUTE, LOCK TABLES, CREATE TEMPORARY TABLES, INDEX ON `redenvelope`.* TO 'redenvelope'@'localhost';
FLUSH PRIVILEGES;