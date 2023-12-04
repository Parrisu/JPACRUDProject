DROP DATABASE IF EXISTS gamesdb;
CREATE DATABASE IF NOT EXISTS gamesdb;

USE gamesdb;

CREATE TABLE game (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  category ENUM('MOBA','MMORPG','FPS','RPG'),
  release_date DATE,
  release_price DECIMAL(5,2) DEFAULT 0.00,
  current_price DECIMAL(5,2) DEFAULT 0.00,
  active_players INT(255) DEFAULT 0,
  image_url VARCHAR(2000)
);

DROP USER IF EXISTS gamer@localhost;
CREATE USER IF NOT EXISTS gamer@localhost identified by 'gamer';
GRANT SELECT,INSERT,UPDATE,DELETE ON gamesdb.* TO gamer@localhost;

INSERT INTO game (id, name, category, release_date, active_players) VALUES (1, 'League of Legends', 'MOBA', '2009-10-27', 180000000);
INSERT INTO game (id, name, category, release_date, release_price, active_players) VALUES (2, 'World of Warcraft', 'MMORPG', '2004-11-23', 49.99, 132217695);
INSERT INTO game (id, name, category, release_date, release_price, current_price, active_players) VALUES (3, 'Counter Strike: Source', 'FPS', '2004-11-1', 4.99, 10.99, 5370);