USE training;

DROP TABLE IF EXISTS pelda;

CREATE TABLE pelda (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30),
    fullname VARCHAR(100),
    cardnumber INT
) CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
