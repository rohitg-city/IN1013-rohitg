CREATE TABLE petPet (
  petname VARCHAR(20) NOT NULL PRIMARY KEY,
  owner VARCHAR(45),
  species VARCHAR(45),
  gender VARCHAR(1),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  eventid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  petname VARCHAR(20) NOT NULL, 
  CONSTRAINT con1 FOREIGN KEY (petname) REFERENCES petPet (petname) ON DELETE CASCADE,
  eventdate date,
  eventtype VARCHAR(15),
  remark VARCHAR(255)
);