INSERT INTO roles(name) VALUES ('ADMIN')
INSERT INTO administrador (nombreadmin, correoadmin, telefonoadmin, direccionadmin, "password")
VALUES ('admin1', 'admin1@example.com', 987654321, 'Av. Ejemplo 123', '12345');
INSERT INTO users (username, password)
VALUES ('admin1', '12345');
INSERT INTO user_roles (user_id, role_id)
VALUES (1, 1);
