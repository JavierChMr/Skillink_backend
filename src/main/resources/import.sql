INSERT INTO roles(name) VALUES ('ADMIN')
INSERT INTO administrador (nombreadmin, correoadmin, telefonoadmin, direccionadmin, "password")
VALUES ('admin1', 'admin1@example.com', 987654321, 'Av. Ejemplo 123', '12345');
INSERT INTO users (username, password)
VALUES ('admin1', '12345');
INSERT INTO user_roles (user_id, role_id)
VALUES (1, 1);
INSERT INTO Cliente (nombrecliente, correocliente, telefonocliente, direccioncliente, estadocliente, password)
VALUES
    ('María Fernández', 'mariaf@gmail.com', 987654321, 'Av. Arequipa 1234', TRUE, 'maria123'),
    ('Carlos Rojas', 'carlosr@gmail.com', 912345678, 'Jr. Los Álamos 567', TRUE, 'carlos456'),
    ('Lucía Gutiérrez', 'lucia.g@gmail.com', 998877665, 'Calle San Martín 890', TRUE, 'lucia789'),
    ('Jorge Salazar', 'jorge.s@gmail.com', 911223344, 'Av. Javier Prado 1500', TRUE, 'jorge321'),
    ('Ana Torres', 'ana.torres@gmail.com', 900112233, 'Psje. Las Flores 234', TRUE, 'ana654');

INSERT INTO asesor (nombreasesor, correoasesor, telefonoasesor, direccionasesor, estadoasesor, especialidadasesor, password)
VALUES
-- Programación
('Luis Ramírez', 'luis.ramirez@skilllink.com', 987654321, 'Av. Arequipa 1020', TRUE, 'Programación', 'luis123'),
('María Quispe', 'maria.quispe@skilllink.com', 912345678, 'Jr. Los Álamos 230', TRUE, 'Programación', 'maria123'),
('José Castillo', 'jose.castillo@skilllink.com', 976543210, 'Av. Benavides 455', TRUE, 'Programación', 'jose123'),
('Andrea Paredes', 'andrea.paredes@skilllink.com', 945612378, 'Calle Lima 880', TRUE, 'Programación', 'andrea123'),
('Carlos Díaz', 'carlos.diaz@skilllink.com', 900112233, 'Psje. Miraflores 45', TRUE, 'Programación', 'carlos123'),

-- Marketing
('Daniela Torres', 'daniela.torres@skilllink.com', 998877665, 'Av. Brasil 345', TRUE, 'Marketing', 'daniela123'),
('Fernando López', 'fernando.lopez@skilllink.com', 911223344, 'Jr. Los Rosales 78', TRUE, 'Marketing', 'fernando123'),
('Laura Vega', 'laura.vega@skilllink.com', 954321789, 'Calle Las Magnolias 67', TRUE, 'Marketing', 'laura123'),
('Ricardo Chávez', 'ricardo.chavez@skilllink.com', 901234567, 'Av. San Luis 432', TRUE, 'Marketing', 'ricardo123'),
('Sofía Medina', 'sofia.medina@skilllink.com', 980765432, 'Jr. Los Pinos 901', TRUE, 'Marketing', 'sofia123'),

-- Diseño
('Valeria Campos', 'valeria.campos@skilllink.com', 978654123, 'Av. Primavera 780', TRUE, 'Diseño', 'valeria123'),
('Diego Alarcón', 'diego.alarcon@skilllink.com', 987321456, 'Calle Olivos 102', TRUE, 'Diseño', 'diego123'),
('Paula Ramos', 'paula.ramos@skilllink.com', 956789123, 'Av. Angamos 556', TRUE, 'Diseño', 'paula123'),
('Javier Méndez', 'javier.mendez@skilllink.com', 922334455, 'Jr. Los Jazmines 890', TRUE, 'Diseño', 'javier123'),
('Camila Soto', 'camila.soto@skilllink.com', 933221144, 'Psje. Las Gardenias 304', TRUE, 'Diseño', 'camila123'),

-- Idiomas
('Andrés Navarro', 'andres.navarro@skilllink.com', 955667788, 'Av. Salaverry 250', TRUE, 'Idiomas', 'andres123'),
('Patricia León', 'patricia.leon@skilllink.com', 977889900, 'Calle Bolívar 330', TRUE, 'Idiomas', 'patricia123'),
('Santiago Ruiz', 'santiago.ruiz@skilllink.com', 922110099, 'Av. Grau 890', TRUE, 'Idiomas', 'santiago123'),
('Carolina Pérez', 'carolina.perez@skilllink.com', 944556677, 'Jr. Los Laureles 560', TRUE, 'Idiomas', 'carolina123'),
('Héctor Gálvez', 'hector.galvez@skilllink.com', 933445566, 'Calle Trujillo 129', TRUE, 'Idiomas', 'hector123'),

-- Negocios
('Gabriela Rojas', 'gabriela.rojas@skilllink.com', 955223344, 'Av. Canadá 760', TRUE, 'Negocios', 'gabriela123'),
('Eduardo Flores', 'eduardo.flores@skilllink.com', 966778899, 'Calle Montecarlo 100', TRUE, 'Negocios', 'eduardo123'),
('Natalia Ibáñez', 'natalia.ibanez@skilllink.com', 977665544, 'Jr. Las Acacias 450', TRUE, 'Negocios', 'natalia123'),
('Martín Herrera', 'martin.herrera@skilllink.com', 911009988, 'Av. Colonial 300', TRUE, 'Negocios', 'martin123'),
('Rosa Delgado', 'rosa.delgado@skilllink.com', 922776655, 'Psje. La Marina 50', TRUE, 'Negocios', 'rosa123');


