DROP TABLE IF EXISTS role;

CREATE TABLE role (
  role_id int NOT NULL,
  role varchar(255) DEFAULT NULL,
  PRIMARY KEY (role_id)
) ;


INSERT INTO role (role_id, role)
VALUES
	(1,'ADMIN');
    
    
DROP TABLE IF EXISTS user;   
CREATE TABLE user_info (
  user_id int NOT NULL,
  active int DEFAULT NULL,
  email varchar NOT NULL,
  last_name varchar NOT NULL,
  name varchar NOT NULL,
  password varchar NOT NULL,
  PRIMARY KEY (user_id)
) ;


INSERT INTO user_info (user_id, active, email, last_name, name, password)
VALUES
	(1,1,'admin@gmail.com','s','Sam','sam'),
	(2,1,'admin@gmail.com','s','youtube','youtube');
    
    
CREATE TABLE user_role (
  user_id int NOT NULL,
  role_id int NOT NULL,
  PRIMARY KEY (user_id,role_id)
);

INSERT INTO user_role (user_id, role_id)
VALUES
	(1,1);