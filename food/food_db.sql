CREATE DATABASE IF NOT EXISTS food_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE food_db;

CREATE TABLE foods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name_th VARCHAR(255) NOT NULL,
    category VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE recipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    food_id INT NOT NULL,
    recipe_name VARCHAR(255) NOT NULL,
    quantity FLOAT NOT NULL,
    unit_name VARCHAR(50) NOT NULL,
    FOREIGN KEY(food_id)
    REFERENCES foods(id)
    ON DELETE CASCADE
);