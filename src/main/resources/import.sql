INSERT INTO roles (name) VALUES ('ROLE_ADMIN');
INSERT INTO roles (name) VALUES ('ROLE_USUARIO');
INSERT INTO roles (name) VALUES ('ROLE_ASESOR');
INSERT INTO users (username,password) VALUES ('admin', '$2a$12$HBNi0DfQBqnWM3FKmYt98O5sQ6hUweox84agGSD5vM1mQFpKR2Mm2');
INSERT INTO users (username,password) VALUES ('usuario1','$2a$12$HBNi0DfQBqnWM3FKmYt98O5sQ6hUweox84agGSD5vM1mQFpKR2Mm2');
INSERT INTO users (username,password) VALUES ('asesor1','$2a$12$HBNi0DfQBqnWM3FKmYt98O5sQ6hUweox84agGSD5vM1mQFpKR2Mm2');
INSERT INTO user_roles (user_id,role_id) VALUES (1,1);
INSERT INTO user_roles (user_id,role_id) VALUES (2,2);
INSERT INTO user_roles (user_id,role_id) VALUES (3,3);

