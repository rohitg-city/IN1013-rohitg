INSERT INTO petPet VALUES
    ('Hammy','Diane','hamster','M','2010-10-30',NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ("Fluffy", "2020-10-15", "vet", "antibiotics"),
    ("Hammy", "2020-10-15", "vet", "antibiotics");

INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ("Fluffy", "2022-11-15", "litter", "5 kittens, 3 female, 2 male");

UPDATE petEvent SET petname='Claws' WHERE eventdate='1997-08-03';

UPDATE petPet SET death='2020-09-01' WHERE petname='Puffball';
INSERT INTO petEvent (petname, eventdate, eventtype, remark) VALUES
    ("Puffball", "2020-09-01", "death", NULL);

DELETE FROM petPet WHERE owner='Harold' AND species='dog';