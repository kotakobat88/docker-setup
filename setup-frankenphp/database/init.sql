CREATE DATABASE website1_db;
CREATE DATABASE website2_db;

CREATE USER 'website1_user'@'%' IDENTIFIED BY 'password1';
GRANT ALL PRIVILEGES ON website1_db.* TO 'website1_user'@'%';

CREATE USER 'website2_user'@'%' IDENTIFIED BY 'password2';
GRANT ALL PRIVILEGES ON website2_db.* TO 'website2_user'@'%';

FLUSH PRIVILEGES;
