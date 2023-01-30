CREATE DATABASE `voting`;
CREATE USER 'voting'@'%' IDENTIFIED WITH mysql_native_password BY 'voting';
GRANT ALL PRIVILEGES ON `voting`.* TO 'voting'@'%';
FLUSH PRIVILEGES;
