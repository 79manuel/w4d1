CREATE TABLE fleet (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE ships (
id SERIAL PRIMARY KEY,
name varchar(250) NOT NULL,
date_built DATE NOT NULL,
FOREIGN KEY (id) REFERENCES fleet
);

CREATE TABLE sailors (
  id SERIAL PRIMARY KEY,
  name varchar(250) NOT NULL,
  date_birth DATE NOT NULL
);

CREATE TABLE rank (
  id SERIAL PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE duties (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES ships,
  FOREIGN KEY (id) REFERENCES sailors,
  FOREIGN KEY (id) REFERENCES rank
);

