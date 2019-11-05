CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT PRIMARY KEY, 
  username VARCHAR(255) UNIQUE NOT NULL, 
  created_at TIMESTAMP DEFAULT NOW()
);

//source Instagram/ig_clone.sql
//DESCRIBE users;