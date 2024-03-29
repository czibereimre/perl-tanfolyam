DROP DATABASE IF EXISTS training;

CREATE DATABASE training DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_hungarian_ci;

GRANT SELECT, INSERT, UPDATE, DELETE ON training.* TO 'training'@'localhost' IDENTIFIED BY 'training';

FLUSH PRIVILEGES;
