DROP DATABASE IF EXISTS training;

DELETE FROM mysql.user WHERE USER = 'trainig';
DELETE FROM mysql.db WHERE USER = 'trainig';

FLUSH PRIVILEGES;
