CREATE DATABASE IF NOT EXISTS spacetrader_db;
USE spacetrader_db;

CREATE TABLE IF NOT EXISTS users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    user_name VARCHAR(250) NOT NULL,
    email VARCHAR (250),
    password VARCHAR (250),
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS ads (
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     user_id INT UNSIGNED NOT NULL,
     title VARCHAR(250) NOT NULL,
     description TEXT,
     categories VARCHAR(250),
     quantity INT UNSIGNED,
     price DOUBLE,
     PRIMARY KEY (id),
     FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS user_type (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    user_type VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);