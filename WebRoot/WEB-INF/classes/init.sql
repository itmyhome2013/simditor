create database simditor;
use simditor;

CREATE TABLE article (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) DEFAULT NULL,
  content LONGTEXT
) 
