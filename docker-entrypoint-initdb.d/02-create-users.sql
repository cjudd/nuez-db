CREATE USER 'nuez'@'%' IDENTIFIED BY 'nuez+1';

GRANT ALL PRIVILEGES ON nuez.* TO 'nuez'@'%';
 
FLUSH privileges;