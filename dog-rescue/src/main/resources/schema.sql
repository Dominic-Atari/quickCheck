DROP TABLE IF EXISTS dog_breed;
DROP TABLE IF EXISTS breed;
DROP TABLE IF EXISTS dog;
DROP TABLE IF EXISTS location;

CREATE TABLE location(
	location_id INT NOT NULL AUTO_INCREMENT,
	bisiness_name VARCHAR(32) NOT NULL,
	street_address VARCHAR(60) NOT NULL,
	city VARCHAR(20),
	state VARCHAR(30),
	zip VARCHAR(40),
	phone VARCHAR(15),
	PRIMARY KEY (location_id)
);

CREATE TABLE dog(
	dog_id INT NOT NULL AUTO_INCREMENT,
	location_id INT NULL,
	name VARCHAR(40) NOT NULL,
	age INT,
	color VARCHAR(22),
	PRIMARY KEY (dog_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id) ON DELETE CASCADE
);

CREATE TABLE breed(
	breed_id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL,
	PRIMARY KEY (breed_id)
);

CREATE TABLE dog_breed(
	dog_id INT NOT NULL,
	breed_id INT NOT NULL,
	FOREIGN KEY (dog_id) REFERENCES dog (dog_id) ON DELETE CASCADE,
	FOREIGN KEY (breed_id) REFERENCES breed (breed_id) ON DELETE CASCADE
);