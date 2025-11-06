INSERT INTO roles(name) VALUES ('ADMIN');
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

INSERT INTO asesoria (nombreasesoria, descripcionasesoria, costoasesoria, fechasesoria, urlimg, idcliente, idasesor)
VALUES
-- PROGRAMACIÓN (idasesor 1–5)
('Introducción a Python', 'Aprende desde cero los fundamentos de la programación con Python.', 80.00, '2023-05-12', 'Imagenes/python.webp', NULL, 1),
('Desarrollo Web con Java Spring Boot', 'Crea APIs y aplicaciones web usando el framework Spring Boot.', 120.00, '2024-03-08', 'Imagenes/java.webp', NULL, 1),

('Lógica de Programación en Java', 'Fortalece tu lógica y aprende estructuras básicas en Java.', 75.00, '2022-11-21', 'Imagenes/javascript.webp', NULL, 2),
('Programación Orientada a Objetos', 'Aplica POO y crea programas modulares en distintos lenguajes.', 90.00, '2025-02-10', 'Imagenes/poo.jpg', NULL, 2),

('Desarrollo Frontend con Angular', 'Aprende a construir interfaces modernas con Angular.', 110.00, '2023-07-15', 'Imagenes/angular.webp', NULL, 3),
('Bases de Datos MySQL desde Cero', 'Diseña y consulta bases de datos relacionales con MySQL.', 95.00, '2024-10-01', 'Imagenes/sql.webp', NULL, 3),

('Fundamentos de HTML, CSS y JS', 'Domina la creación de páginas web desde lo más básico.', 85.00, '2022-09-05', 'Imagenes/pagina.webp', NULL, 4),
('Desarrollo Full Stack Básico', 'Aprende a conectar el backend y frontend de tus proyectos.', 130.00, '2025-01-25', 'Imagenes/fullstack.png', NULL, 4),

('Automatización con Python', 'Crea scripts para automatizar tareas y mejorar tu productividad.', 100.00, '2023-12-18', 'Imagenes/python.jpg', NULL, 5),
('Fundamentos de APIs REST', 'Comprende cómo funcionan las APIs y cómo consumirlas.', 110.00, '2024-06-10', 'Imagenes/api.jpg', NULL, 5),

-- MARKETING (idasesor 6–10)
('Marketing Digital para Emprendedores', 'Aprende estrategias clave para posicionar tu marca online.', 85.00, '2023-08-02', 'Imagenes/marketing1.png', NULL, 6),
('Publicidad en Redes Sociales', 'Diseña y gestiona campañas efectivas en Facebook e Instagram.', 95.00, '2025-03-10', 'Imagenes/marketing2.jpg', NULL, 6),

('SEO y Posicionamiento Web', 'Optimiza tu sitio para aparecer primero en Google.', 100.00, '2024-01-17', 'Imagenes/marketing3.jpg', NULL, 7),
('Estrategias de Email Marketing', 'Crea campañas efectivas para fidelizar clientes.', 75.00, '2022-10-09', 'Imagenes/marketing4.png', NULL, 7),

('Análisis de Datos para Marketing', 'Usa Google Analytics y métricas para tomar decisiones.', 110.00, '2024-08-11', 'Imagenes/marketing5.webp', NULL, 8),
('Copywriting Persuasivo', 'Aprende a escribir textos que vendan.', 85.00, '2023-11-04', 'Imagenes/marketing6.png', NULL, 8),

('Gestión de Marcas Personales', 'Crea tu identidad digital y posiciona tu marca personal.', 90.00, '2022-12-28', 'Imagenes/marketing7.jpg', NULL, 9),
('Campañas Publicitarias Digitales', 'Diseña y optimiza anuncios con herramientas profesionales.', 120.00, '2025-04-14', 'Imagenes/marketing8.png', NULL, 9),

('Neuromarketing Básico', 'Comprende el comportamiento del consumidor para mejorar ventas.', 105.00, '2024-05-06', 'Imagenes/marketing9.png', NULL, 10),
('Community Management', 'Aprende a gestionar comunidades digitales y redes sociales.', 95.00, '2023-09-16', 'Imagenes/marketing10.jpg', NULL, 10),

-- DISEÑO (idasesor 11–15)
('Diseño Gráfico con Illustrator', 'Aprende a crear logos e ilustraciones profesionales.', 90.00, '2022-07-12', 'Imagenes/diseno1.webp', NULL, 11),
('Diseño de Interfaces (UI/UX)', 'Diseña experiencias digitales centradas en el usuario.', 120.00, '2024-02-25', 'Imagenes/diseno2.webp', NULL, 11),

('Photoshop para Principiantes', 'Edita fotos y crea composiciones gráficas con Photoshop.', 80.00, '2023-03-30', 'Imagenes/diseno3.jpg', NULL, 12),
('Prototipado con Figma', 'Crea maquetas interactivas y prototipos de apps o webs.', 95.00, '2025-01-05', 'Imagenes/diseno4.jpg', NULL, 12),

('Diseño de Logos y Branding', 'Crea identidades visuales únicas para marcas.', 100.00, '2024-04-18', 'Imagenes/diseno5.webp', NULL, 13),
('Color y Composición Visual', 'Aprende teoría del color y principios de diseño.', 85.00, '2022-08-14', 'Imagenes/diseno6.jpg', NULL, 13),

('Diseño Editorial Profesional', 'Maqueta revistas y catálogos con Adobe InDesign.', 110.00, '2023-06-21', 'Imagenes/diseno7.jpg', NULL, 14),
('Portafolio de Diseño Web', 'Construye un portafolio web atractivo con HTML y CSS.', 130.00, '2024-09-02', 'Imagenes/diseno8.jpg', NULL, 14),

('Animación Digital 2D', 'Crea animaciones sencillas con After Effects.', 125.00, '2025-03-22', 'Imagenes/diseno9.png', NULL, 15),
('Diseño para Redes Sociales', 'Diseña piezas atractivas para Instagram y TikTok.', 90.00, '2022-10-19', 'Imagenes/diseno10.png', NULL, 15),

-- IDIOMAS (idasesor 16–20)
('Inglés Conversacional Intermedio', 'Mejora tu fluidez con prácticas guiadas en inglés.', 85.00, '2023-04-12', 'Imagenes/idiomas1.png', NULL, 16),
('Inglés para Negocios', 'Aprende expresiones y vocabulario para entornos empresariales.', 95.00, '2025-05-09', 'Imagenes/idiomas2.png', NULL, 16),

('Francés desde Cero', 'Domina las bases del idioma francés y su pronunciación.', 80.00, '2022-09-11', 'Imagenes/idiomas3.jpg', NULL, 17),
('Francés Conversacional', 'Aprende a mantener conversaciones cotidianas en francés.', 90.00, '2024-06-27', 'Imagenes/idiomas4.jpg', NULL, 17),

('Inglés para Viajeros', 'Frases y vocabulario útiles para viajar al extranjero.', 70.00, '2023-07-30', 'Imagenes/idiomas5.jpg', NULL, 18),
('Preparación para TOEFL', 'Curso intensivo para rendir el examen TOEFL con éxito.', 130.00, '2025-02-15', 'Imagenes/idiomas6.png', NULL, 18),

('Portugués Básico', 'Aprende los fundamentos del idioma portugués.', 75.00, '2022-06-09', 'Imagenes/idiomas7.jpg', NULL, 19),
('Portugués Conversacional', 'Mejora tu pronunciación y fluidez en portugués.', 85.00, '2024-12-03', 'Imagenes/idiomas8.png', NULL, 19),

('Alemán para Principiantes', 'Domina las frases esenciales y la gramática básica.', 90.00, '2023-02-17', 'Imagenes/idiomas9.png', NULL, 20),
('Alemán Conversacional', 'Mejora tu comprensión y expresión oral en alemán.', 100.00, '2025-04-29', 'Imagenes/idiomas10.jpg', NULL, 20),

-- NEGOCIOS (idasesor 21–25)
('Finanzas Personales', 'Aprende a manejar tus ingresos y gastos de forma eficiente.', 90.00, '2023-08-10', 'Imagenes/negocios1.png', NULL, 21),
('Emprendimiento y Plan de Negocios', 'Crea un plan sólido para iniciar tu emprendimiento.', 120.00, '2024-05-21', 'Imagenes/negocios2.jpg', NULL, 21),

('Gestión de Proyectos', 'Domina metodologías ágiles como Scrum y Kanban.', 110.00, '2025-02-01', 'Imagenes/negocios3.png', NULL, 22),
('Liderazgo Empresarial', 'Desarrolla habilidades para liderar equipos de trabajo.', 95.00, '2023-01-14', 'Imagenes/negocios4.webp', NULL, 22),

('Comercio Internacional', 'Aprende sobre exportaciones, importaciones y tratados.', 130.00, '2024-08-28', 'Imagenes/negocios5.jpg', NULL, 23),
('Negociación Efectiva', 'Mejora tu comunicación y capacidad de negociación.', 100.00, '2022-10-03', 'Imagenes/negocios6.png', NULL, 23),

('Economía para No Economistas', 'Comprende los principios económicos de forma sencilla.', 85.00, '2023-11-19', 'Imagenes/negocios7.jpg', NULL, 24),
('Gestión del Tiempo y Productividad', 'Aprende técnicas para organizarte y rendir más.', 90.00, '2025-03-05', 'Imagenes/negocios8.png', NULL, 24),

('Contabilidad Básica', 'Conoce los fundamentos contables de una empresa.', 95.00, '2022-09-22', 'Imagenes/negocios9.webp', NULL, 25),
('Planeamiento Estratégico', 'Diseña estrategias empresariales a largo plazo.', 120.00, '2024-07-13', 'Imagenes/negocios10.jpg', NULL, 25);

