DROP DATABASE IF EXISTS gamesdb;
CREATE DATABASE IF NOT EXISTS gamesdb;

USE gamesdb;

CREATE TABLE game (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  release_date DATE,
  price DECIMAL(5,2),
  image_url VARCHAR(2000)
);

DROP USER IF EXISTS gamer@localhost;
CREATE USER IF NOT EXISTS gamer@localhost identified by 'gamer';
GRANT SELECT,INSERT,UPDATE,DELETE ON gamesdb.* TO gamer@localhost;

INSERT INTO game (id, name) VALUES (1, 'League of Legends');
INSERT INTO game (id, name) VALUES (2, 'World of Warcraft');
INSERT INTO game (id, name) VALUES (3, 'Counter Strike: Source');