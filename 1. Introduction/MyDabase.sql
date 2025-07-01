-- Create a new database
CREATE DATABASE mydatabase;

-- Use the new database
USE mydatabase;

-- Create a table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Insert a row into the table
INSERT INTO users (name, email) VALUES ('John Doe', 'john.doe@example.com');

-- Retrieve all data from the table
SELECT * FROM users;
