-- roles --
INSERT INTO roles(name) VALUES ('ADMIN');
INSERT INTO roles(name) VALUES ('USUARIO');
INSERT INTO roles(name) VALUES ('ASESOR');

-- ADMINISTRADOR --
INSERT INTO administrador (nombreadmin, correoadmin, telefonoadmin, direccionadmin, "password")
VALUES ('admin1', 'admin1@example.com', 987654321, 'Av. Ejemplo 123', '12345');

-- USER ADMIN --
INSERT INTO users (username, password)
VALUES ('admin1', '12345');

-- ROLE ADMIN --
INSERT INTO user_roles (user_id, role_id)
VALUES (1, 1);

-- CLIENTE --
INSERT INTO Cliente (nombrecliente, correocliente, telefonocliente, direccioncliente, estadocliente, password)
VALUES
    ('María Fernández', 'mariaf@gmail.com', 987654321, 'Av. Arequipa 1234', TRUE, 'maria123'),
    ('Carlos Rojas', 'carlosr@gmail.com', 912345678, 'Jr. Los Álamos 567', TRUE, 'carlos456'),
    ('Lucía Gutiérrez', 'lucia.g@gmail.com', 998877665, 'Calle San Martín 890', TRUE, 'lucia789'),
    ('Jorge Salazar', 'jorge.s@gmail.com', 911223344, 'Av. Javier Prado 1500', TRUE, 'jorge321'),
    ('Ana Torres', 'ana.torres@gmail.com', 900112233, 'Psje. Las Flores 234', TRUE, 'ana654');

-- USER CLIENTE --

INSERT INTO users (username, password)
VALUES ('María Fernández', 'maria123');
INSERT INTO users (username, password)
VALUES ('Carlos Rojas', 'carlos456');
INSERT INTO users (username, password)
VALUES ('Lucía Gutiérrez', 'lucia789');
INSERT INTO users (username, password)
VALUES ('Jorge Salazar', 'jorge321');
INSERT INTO users (username, password)
VALUES ('Ana Torres', 'ana654');

-- ROLE CLIENTE --
INSERT INTO user_roles (user_id, role_id)
VALUES (2, 2);
INSERT INTO user_roles (user_id, role_id)
VALUES (3, 2);
INSERT INTO user_roles (user_id, role_id)
VALUES (4, 2);
INSERT INTO user_roles (user_id, role_id)
VALUES (5, 2);
INSERT INTO user_roles (user_id, role_id)
VALUES (6, 2);


--ASESOR--
INSERT INTO asesor (nombreasesor, correoasesor, telefonoasesor, direccionasesor, estadoasesor, especialidadasesor, password)
VALUES
-- Programación --
('Luis Ramírez', 'luis.ramirez@skilllink.com', 987654321, 'Av. Arequipa 1020', TRUE, 'Programación', 'luis123'),
('María Quispe', 'maria.quispe@skilllink.com', 912345678, 'Jr. Los Álamos 230', TRUE, 'Programación', 'maria123'),
('José Castillo', 'jose.castillo@skilllink.com', 976543210, 'Av. Benavides 455', TRUE, 'Programación', 'jose123'),
('Andrea Paredes', 'andrea.paredes@skilllink.com', 945612378, 'Calle Lima 880', TRUE, 'Programación', 'andrea123'),
('Carlos Díaz', 'carlos.diaz@skilllink.com', 900112233, 'Psje. Miraflores 45', TRUE, 'Programación', 'carlos123'),

-- Marketing --
('Daniela Torres', 'daniela.torres@skilllink.com', 998877665, 'Av. Brasil 345', TRUE, 'Marketing', 'daniela123'),
('Fernando López', 'fernando.lopez@skilllink.com', 911223344, 'Jr. Los Rosales 78', TRUE, 'Marketing', 'fernando123'),
('Laura Vega', 'laura.vega@skilllink.com', 954321789, 'Calle Las Magnolias 67', TRUE, 'Marketing', 'laura123'),
('Ricardo Chávez', 'ricardo.chavez@skilllink.com', 901234567, 'Av. San Luis 432', TRUE, 'Marketing', 'ricardo123'),
('Sofía Medina', 'sofia.medina@skilllink.com', 980765432, 'Jr. Los Pinos 901', TRUE, 'Marketing', 'sofia123'),

-- Diseño --
('Valeria Campos', 'valeria.campos@skilllink.com', 978654123, 'Av. Primavera 780', TRUE, 'Diseño', 'valeria123'),
('Diego Alarcón', 'diego.alarcon@skilllink.com', 987321456, 'Calle Olivos 102', TRUE, 'Diseño', 'diego123'),
('Paula Ramos', 'paula.ramos@skilllink.com', 956789123, 'Av. Angamos 556', TRUE, 'Diseño', 'paula123'),
('Javier Méndez', 'javier.mendez@skilllink.com', 922334455, 'Jr. Los Jazmines 890', TRUE, 'Diseño', 'javier123'),
('Camila Soto', 'camila.soto@skilllink.com', 933221144, 'Psje. Las Gardenias 304', TRUE, 'Diseño', 'camila123'),

-- Idiomas --
('Andrés Navarro', 'andres.navarro@skilllink.com', 955667788, 'Av. Salaverry 250', TRUE, 'Idiomas', 'andres123'),
('Patricia León', 'patricia.leon@skilllink.com', 977889900, 'Calle Bolívar 330', TRUE, 'Idiomas', 'patricia123'),
('Santiago Ruiz', 'santiago.ruiz@skilllink.com', 922110099, 'Av. Grau 890', TRUE, 'Idiomas', 'santiago123'),
('Carolina Pérez', 'carolina.perez@skilllink.com', 944556677, 'Jr. Los Laureles 560', TRUE, 'Idiomas', 'carolina123'),
('Héctor Gálvez', 'hector.galvez@skilllink.com', 933445566, 'Calle Trujillo 129', TRUE, 'Idiomas', 'hector123'),

-- Negocios --
('Gabriela Rojas', 'gabriela.rojas@skilllink.com', 955223344, 'Av. Canadá 760', TRUE, 'Negocios', 'gabriela123'),
('Eduardo Flores', 'eduardo.flores@skilllink.com', 966778899, 'Calle Montecarlo 100', TRUE, 'Negocios', 'eduardo123'),
('Natalia Ibáñez', 'natalia.ibanez@skilllink.com', 977665544, 'Jr. Las Acacias 450', TRUE, 'Negocios', 'natalia123'),
('Martín Herrera', 'martin.herrera@skilllink.com', 911009988, 'Av. Colonial 300', TRUE, 'Negocios', 'martin123'),
('Rosa Delgado', 'rosa.delgado@skilllink.com', 922776655, 'Psje. La Marina 50', TRUE, 'Negocios', 'rosa123');

-- USER ASESOR --

-- Programación --

INSERT INTO users (username, password)
VALUES ('Luis Ramírez', 'luis123');
INSERT INTO users (username, password)
VALUES ('María Quispe', 'maria123');
INSERT INTO users (username, password)
VALUES ('José Castillo', 'jose123');
INSERT INTO users (username, password)
VALUES ('Andrea Paredes', 'andrea123');
INSERT INTO users (username, password)
VALUES ('Carlos Díaz', 'carlos123');

-- Marketing --

INSERT INTO users (username, password)
VALUES ('Daniela Torres', 'daniela123');
INSERT INTO users (username, password)
VALUES ('Fernando López', 'fernando123');
INSERT INTO users (username, password)
VALUES ('Laura Vega', 'laura123');
INSERT INTO users (username, password)
VALUES ('Ricardo Chávez', 'ricardo123');
INSERT INTO users (username, password)
VALUES ('Sofía Medina', 'sofia123');

-- Diseño --

INSERT INTO users (username, password)
VALUES ('Valeria Campos', 'valeria123');
INSERT INTO users (username, password)
VALUES ('Diego Alarcón', 'diego123');
INSERT INTO users (username, password)
VALUES ('Paula Ramos', 'paula123');
INSERT INTO users (username, password)
VALUES ('Javier Méndez', 'javier123');
INSERT INTO users (username, password)
VALUES ('Camila Soto', 'camila123');

-- Idiomas --

INSERT INTO users (username, password)
VALUES ('Andrés Navarro', 'andres123');
INSERT INTO users (username, password)
VALUES ('Patricia León', 'patricia123');
INSERT INTO users (username, password)
VALUES ('Santiago Ruiz', 'santiago123');
INSERT INTO users (username, password)
VALUES ('Carolina Pérez', 'carolina123');
INSERT INTO users (username, password)
VALUES ('Héctor Gálvez', 'hector123');

-- Negocios --

INSERT INTO users (username, password)
VALUES ('Gabriela Rojas', 'gabriela123');
INSERT INTO users (username, password)
VALUES ('Eduardo Flores', 'eduardo123');
INSERT INTO users (username, password)
VALUES ('Natalia Ibáñez', 'natalia123');
INSERT INTO users (username, password)
VALUES ('Martín Herrera', 'martin123');
INSERT INTO users (username, password)
VALUES ('Rosa Delgado', 'rosa123');

-- ROL ASESOR --

INSERT INTO user_roles (user_id, role_id)
VALUES (7, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (8, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (9, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (10, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (11, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (12, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (13, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (14, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (15, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (16, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (17, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (18, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (19, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (20, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (21, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (22, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (23, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (24, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (25, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (26, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (27, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (28, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (29, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (30, 3);
INSERT INTO user_roles (user_id, role_id)
VALUES (31, 3);

-- ASESORIAS --

INSERT INTO asesoria (
    nombreasesoria,
    descripcionasesoria,
    costoasesoria,
    fechasesoria,
    urlimg,
    idcliente,
    idasesor,
    cantidadresenhas,
    cantidadestrellas
)
VALUES
-- PROGRAMACIÓN (idasesor 1–5) --
('Introducción a Python', 'Aprende desde cero los fundamentos de la programación con Python.', 80.00, '2023-05-12', 'Imagenes/python.webp', NULL, 1, '210', 5),
('Desarrollo Web con Java Spring Boot', 'Crea APIs y aplicaciones web usando el framework Spring Boot.', 120.00, '2024-03-08', 'Imagenes/java.webp', NULL, 1, '185', 4),

('Lógica de Programación en Java', 'Fortalece tu lógica y aprende estructuras básicas en Java.', 75.00, '2022-11-21', 'Imagenes/javascript.webp', NULL, 2, '195', 4),
('Programación Orientada a Objetos', 'Aplica POO y crea programas modulares en distintos lenguajes.', 90.00, '2025-02-10', 'Imagenes/poo.jpg', NULL, 2, '210', 5),

('Desarrollo Frontend con Angular', 'Aprende a construir interfaces modernas con Angular.', 110.00, '2023-07-15', 'Imagenes/angular.webp', NULL, 3, '170', 4),
('Bases de Datos MySQL desde Cero', 'Diseña y consulta bases de datos relacionales con MySQL.', 95.00, '2024-10-01', 'Imagenes/sql.webp', NULL, 3, '160', 5),

('Fundamentos de HTML, CSS y JS', 'Domina la creación de páginas web desde lo más básico.', 85.00, '2022-09-05', 'Imagenes/pagina.webp', NULL, 4, '230', 4),
('Desarrollo Full Stack Básico', 'Aprende a conectar el backend y frontend de tus proyectos.', 130.00, '2025-01-25', 'Imagenes/fullstack.png', NULL, 4, '190', 5),

('Automatización con Python', 'Crea scripts para automatizar tareas y mejorar tu productividad.', 100.00, '2023-12-18', 'Imagenes/python.jpg', NULL, 5, '175', 4),
('Fundamentos de APIs REST', 'Comprende cómo funcionan las APIs y cómo consumirlas.', 110.00, '2024-06-10', 'Imagenes/api.jpg', NULL, 5, '165', 5),

-- MARKETING (idasesor 6–10) --
('Marketing Digital para Emprendedores', 'Aprende estrategias clave para posicionar tu marca online.', 85.00, '2023-08-02', 'Imagenes/marketing1.png', NULL, 6, '220', 5),
('Publicidad en Redes Sociales', 'Diseña y gestiona campañas efectivas en Facebook e Instagram.', 95.00, '2025-03-10', 'Imagenes/marketing2.jpg', NULL, 6, '200', 4),

('SEO y Posicionamiento Web', 'Optimiza tu sitio para aparecer primero en Google.', 100.00, '2024-01-17', 'Imagenes/marketing3.jpg', NULL, 7, '195', 4),
('Estrategias de Email Marketing', 'Crea campañas efectivas para fidelizar clientes.', 75.00, '2022-10-09', 'Imagenes/marketing4.png', NULL, 7, '180', 4),

('Análisis de Datos para Marketing', 'Usa Google Analytics y métricas para tomar decisiones.', 110.00, '2024-08-11', 'Imagenes/marketing5.webp', NULL, 8, '160', 5),
('Copywriting Persuasivo', 'Aprende a escribir textos que vendan.', 85.00, '2023-11-04', 'Imagenes/marketing6.png', NULL, 8, '175', 5),

('Gestión de Marcas Personales', 'Crea tu identidad digital y posiciona tu marca personal.', 90.00, '2022-12-28', 'Imagenes/marketing7.jpg', NULL, 9, '155', 4),
('Campañas Publicitarias Digitales', 'Diseña y optimiza anuncios con herramientas profesionales.', 120.00, '2025-04-14', 'Imagenes/marketing8.png', NULL, 9, '145', 5),

('Neuromarketing Básico', 'Comprende el comportamiento del consumidor para mejorar ventas.', 105.00, '2024-05-06', 'Imagenes/marketing9.png', NULL, 10, '185', 5),
('Community Management', 'Aprende a gestionar comunidades digitales y redes sociales.', 95.00, '2023-09-16', 'Imagenes/marketing10.jpg', NULL, 10, '175', 4),

-- DISEÑO (idasesor 11–15) --
('Diseño Gráfico con Illustrator', 'Aprende a crear logos e ilustraciones profesionales.', 90.00, '2022-07-12', 'Imagenes/diseno1.webp', NULL, 11, '240', 5),
('Diseño de Interfaces (UI/UX)', 'Diseña experiencias digitales centradas en el usuario.', 120.00, '2024-02-25', 'Imagenes/diseno2.webp', NULL, 11, '210', 5),

('Photoshop para Principiantes', 'Edita fotos y crea composiciones gráficas con Photoshop.', 80.00, '2023-03-30', 'Imagenes/diseno3.jpg', NULL, 12, '165', 4),
('Prototipado con Figma', 'Crea maquetas interactivas y prototipos de apps o webs.', 95.00, '2025-01-05', 'Imagenes/diseno4.jpg', NULL, 12, '180', 5),

('Diseño de Logos y Branding', 'Crea identidades visuales únicas para marcas.', 100.00, '2024-04-18', 'Imagenes/diseno5.webp', NULL, 13, '195', 5),
('Color y Composición Visual', 'Aprende teoría del color y principios de diseño.', 85.00, '2022-08-14', 'Imagenes/diseno6.jpg', NULL, 13, '170', 4),

('Diseño Editorial Profesional', 'Maqueta revistas y catálogos con Adobe InDesign.', 110.00, '2023-06-21', 'Imagenes/diseno7.jpg', NULL, 14, '160', 4),
('Portafolio de Diseño Web', 'Construye un portafolio web atractivo con HTML y CSS.', 130.00, '2024-09-02', 'Imagenes/diseno8.jpg', NULL, 14, '190', 5),

('Animación Digital 2D', 'Crea animaciones sencillas con After Effects.', 125.00, '2025-03-22', 'Imagenes/diseno9.png', NULL, 15, '175', 5),
('Diseño para Redes Sociales', 'Diseña piezas atractivas para Instagram y TikTok.', 90.00, '2022-10-19', 'Imagenes/diseno10.png', NULL, 15, '155', 4),

-- IDIOMAS (idasesor 16–20) --
('Inglés Conversacional Intermedio', 'Mejora tu fluidez con prácticas guiadas en inglés.', 85.00, '2023-04-12', 'Imagenes/idiomas1.png', NULL, 16, '210', 4),
('Inglés para Negocios', 'Aprende expresiones y vocabulario para entornos empresariales.', 95.00, '2025-05-09', 'Imagenes/idiomas2.png', NULL, 16, '205', 5),

('Francés desde Cero', 'Domina las bases del idioma francés y su pronunciación.', 80.00, '2022-09-11', 'Imagenes/idiomas3.jpg', NULL, 17, '180', 4),
('Francés Conversacional', 'Aprende a mantener conversaciones cotidianas en francés.', 90.00, '2024-06-27', 'Imagenes/idiomas4.jpg', NULL, 17, '175', 5),

('Inglés para Viajeros', 'Frases y vocabulario útiles para viajar al extranjero.', 70.00, '2023-07-30', 'Imagenes/idiomas5.jpg', NULL, 18, '150', 4),
('Preparación para TOEFL', 'Curso intensivo para rendir el examen TOEFL con éxito.', 130.00, '2025-02-15', 'Imagenes/idiomas6.png', NULL, 18, '200', 5),

('Portugués Básico', 'Aprende los fundamentos del idioma portugués.', 75.00, '2022-06-09', 'Imagenes/idiomas7.jpg', NULL, 19, '165', 4),
('Portugués Conversacional', 'Mejora tu pronunciación y fluidez en portugués.', 85.00, '2024-12-03', 'Imagenes/idiomas8.png', NULL, 19, '175', 5),

('Alemán para Principiantes', 'Domina las frases esenciales y la gramática básica.', 90.00, '2023-02-17', 'Imagenes/idiomas9.png', NULL, 20, '185', 4),
('Alemán Conversacional', 'Mejora tu comprensión y expresión oral en alemán.', 100.00, '2025-04-29', 'Imagenes/idiomas10.jpg', NULL, 20, '190', 5),

-- NEGOCIOS (idasesor 21–25) --
('Finanzas Personales', 'Aprende a manejar tus ingresos y gastos de forma eficiente.', 90.00, '2023-08-10', 'Imagenes/negocios1.png', NULL, 21, '220', 5),
('Emprendimiento y Plan de Negocios', 'Crea un plan sólido para iniciar tu emprendimiento.', 120.00, '2024-05-21', 'Imagenes/negocios2.jpg', NULL, 21, '215', 5),

('Gestión de Proyectos', 'Domina metodologías ágiles como Scrum y Kanban.', 110.00, '2025-02-01', 'Imagenes/negocios3.png', NULL, 22, '200', 4),
('Liderazgo Empresarial', 'Desarrolla habilidades para liderar equipos de trabajo.', 95.00, '2023-01-14', 'Imagenes/negocios4.webp', NULL, 22, '180', 5),

('Comercio Internacional', 'Aprende sobre exportaciones, importaciones y tratados.', 130.00, '2024-08-28', 'Imagenes/negocios5.jpg', NULL, 23, '190', 5),
('Negociación Efectiva', 'Mejora tu comunicación y capacidad de negociación.', 100.00, '2022-10-03', 'Imagenes/negocios6.png', NULL, 23, '170', 4),

('Economía para No Economistas', 'Comprende los principios económicos de forma sencilla.', 85.00, '2023-11-19', 'Imagenes/negocios7.jpg', NULL, 24, '160', 4),
('Gestión del Tiempo y Productividad', 'Aprende técnicas para organizarte y rendir más.', 90.00, '2025-03-05', 'Imagenes/negocios8.png', NULL, 24, '185', 5),

('Contabilidad Básica', 'Conoce los fundamentos contables de una empresa.', 95.00, '2022-09-22', 'Imagenes/negocios9.webp', NULL, 25, '170', 4),
('Planeamiento Estratégico', 'Diseña estrategias empresariales a largo plazo.', 120.00, '2024-07-13', 'Imagenes/negocios10.jpg', NULL, 25, '195', 5);


-- CARTILLA ASESOR
-- ===============================
INSERT INTO cartilla_asesor (
    nombrecartillaasesor,
    descripcioncartillaasesor,
    especialcartillaasesor,
    estrellascartillaasesor,
    urlcartillaasesor,
    anhoexperienciacartillaasesor,
    preciocartillaasesor
) VALUES
-- -- PROGRAMACIÓN
('Luis Ramírez', 'Especialista en desarrollo web y sistemas escalables con Java y Angular.', 'Programación', 5, 'Imagenes/luis_ramirez.jpg', '5', 350.00),
('María Quispe', 'Desarrolladora full stack con experiencia en microservicios y Spring Boot.', 'Programación', 4, 'Imagenes/maria_quispe.webp', '3', 250.00),
('José Castillo', 'Experto en backend con Node.js, Express y bases de datos SQL.', 'Programación', 4, 'Imagenes/jose_castillo.webp', '4', 280.00),
('Andrea Paredes', 'Ingeniera de software especializada en interfaces modernas con Angular.', 'Programación', 5, 'Imagenes/andrea_paredes.webp', '6', 400.00),
('Carlos Díaz', 'Consultor en desarrollo de APIs REST y arquitecturas limpias.', 'Programación', 3, 'Imagenes/carlos_diaz.png', '2', 180.00),

-- -- MARKETING
('Daniela Torres', 'Estratega digital con amplia experiencia en SEO y marketing de contenido.', 'Marketing', 5, 'Imagenes/daniela_torres.jpg', '7', 420.00),
('Fernando López', 'Experto en campañas publicitarias y análisis de métricas digitales.', 'Marketing', 4, 'Imagenes/fernando_lopez.webp', '5', 300.00),
('Laura Vega', 'Consultora en marketing estratégico y posicionamiento de marca.', 'Marketing', 5, 'Imagenes/laura_vega.webp', '8', 450.00),
('Ricardo Chávez', 'Especialista en marketing en redes sociales y generación de leads.', 'Marketing', 3, 'Imagenes/ricardo_chavez.jpg', '2', 200.00),
('Sofía Medina', 'Analista de comportamiento del consumidor y marketing emocional.', 'Marketing', 4, 'Imagenes/sofia_medina.webp', '4', 270.00),
--
-- -- -- DISEÑO
('Valeria Campos', 'Diseñadora UX/UI con enfoque en experiencia de usuario moderna.', 'Diseño', 5, 'Imagenes/valeria_campos.webp', '6', 390.00),
('Diego Alarcón', 'Diseñador gráfico con experiencia en branding y diseño corporativo.', 'Diseño', 4, 'Imagenes/diego_alarcon.webp', '4', 310.00),
('Paula Ramos', 'Especialista en ilustración digital y diseño publicitario.', 'Diseño', 3, 'Imagenes/paula_ramos.webp', '3', 220.00),
('Javier Méndez', 'Experto en diseño 3D y animación para campañas multimedia.', 'Diseño', 4, 'Imagenes/javier_mendez.webp', '5', 350.00),
('Camila Soto', 'Diseñadora visual enfocada en identidad de marca.', 'Diseño', 5, 'Imagenes/camila_soto.webp', '7', 410.00),
-- -- IDIOMAS
('Andrés Navarro', 'Profesor certificado en inglés avanzado y traducción profesional.', 'Idiomas', 5, 'Imagenes/andres_navarro.webp', '9', 480.00),
('Patricia León', 'Docente de francés con enfoque en conversación y gramática.', 'Idiomas', 4, 'Imagenes/patricia_leon.webp', '5', 300.00),
('Santiago Ruiz', 'Instructor de alemán especializado en niveles básicos e intermedios.', 'Idiomas', 3, 'Imagenes/santiago_ruiz.webp', '3', 210.00),
('Carolina Pérez', 'Profesora de inglés con experiencia en preparación TOEFL y IELTS.', 'Idiomas', 5, 'Imagenes/carolina_perez.jpg', '8', 450.00),
('Héctor Gálvez', 'Docente de portugués con experiencia en cursos empresariales.', 'Idiomas', 4, 'Imagenes/hector_galvez.webp', '6', 330.00),
--
-- -- NEGOCIOS
('Gabriela Rojas', 'Consultora en desarrollo organizacional y liderazgo empresarial.', 'Negocios', 5, 'Imagenes/gabriela_rojas.avif', '10', 500.00),
('Eduardo Flores', 'Experto en gestión financiera y análisis económico.', 'Negocios', 4, 'Imagenes/eduardo_flores.avif', '6', 350.00),
('Natalia Ibáñez', 'Asesora en emprendimiento y desarrollo de startups.', 'Negocios', 4, 'Imagenes/natalia_ibanez.webp', '5', 320.00),
('Martín Herrera', 'Especialista en administración estratégica y crecimiento empresarial.', 'Negocios', 5, 'Imagenes/martin_herrera.webp', '9', 480.00),
('Rosa Delgado', 'Consultora en comercio internacional y negociación efectiva.', 'Negocios', 3, 'Imagenes/rosa_delgado.jpeg', '3', 250.00);

INSERT INTO ver_asesoria (descricionverasesoria, id_pago, asesoria) VALUES
                                                                        ('Aprende desde cero los fundamentos de la programación con Python.', NULL, 1),
                                                                        ('Crea APIs y aplicaciones web usando el framework Spring Boot.', NULL, 2),
                                                                        ('Fortalece tu lógica y aprende estructuras básicas en Java.', NULL, 3),
                                                                        ('Aplica POO y crea programas modulares en distintos lenguajes.', NULL, 4),
                                                                        ('Aprende a construir interfaces modernas con Angular.', NULL, 5),
                                                                        ('Diseña y consulta bases de datos relacionales con MySQL.', NULL, 6),
                                                                        ('Domina la creación de páginas web desde lo más básico.', NULL, 7),
                                                                        ('Aprende a conectar el backend y frontend de tus proyectos.', NULL, 8),
                                                                        ('Crea scripts para automatizar tareas y mejorar tu productividad.', NULL, 9),
                                                                        ('Comprende cómo funcionan las APIs y cómo consumirlas.', NULL, 10),
                                                                        ('Aprende estrategias clave para posicionar tu marca online.', NULL, 11),
                                                                        ('Diseña y gestiona campañas efectivas en Facebook e Instagram.', NULL, 12),
                                                                        ('Optimiza tu sitio para aparecer primero en Google.', NULL, 13),
                                                                        ('Crea campañas efectivas para fidelizar clientes.', NULL, 14),
                                                                        ('Usa Google Analytics y métricas para tomar decisiones.', NULL, 15),
                                                                        ('Aprende a escribir textos que vendan.', NULL, 16),
                                                                        ('Crea tu identidad digital y posiciona tu marca personal.', NULL, 17),
                                                                        ('Diseña y optimiza anuncios con herramientas profesionales.', NULL, 18),
                                                                        ('Comprende el comportamiento del consumidor para mejorar ventas.', NULL, 19),
                                                                        ('Aprende a gestionar comunidades digitales y redes sociales.', NULL, 20),
                                                                        ('Aprende a crear logos e ilustraciones profesionales.', NULL, 21),
                                                                        ('Diseña experiencias digitales centradas en el usuario.', NULL, 22),
                                                                        ('Edita fotos y crea composiciones gráficas con Photoshop.', NULL, 23),
                                                                        ('Crea maquetas interactivas y prototipos de apps o webs.', NULL, 24),
                                                                        ('Crea identidades visuales únicas para marcas.', NULL, 25),
                                                                        ('Aprende teoría del color y principios de diseño.', NULL, 26),
                                                                        ('Maqueta revistas y catálogos con Adobe InDesign.', NULL, 27),
                                                                        ('Construye un portafolio web atractivo con HTML y CSS.', NULL, 28),
                                                                        ('Crea animaciones sencillas con After Effects.', NULL, 29),
                                                                        ('Diseña piezas atractivas para Instagram y TikTok.', NULL, 30),
                                                                        ('Mejora tu fluidez con prácticas guiadas en inglés.', NULL, 31),
                                                                        ('Aprende expresiones y vocabulario para entornos empresariales.', NULL, 32),
                                                                        ('Domina las bases del idioma francés y su pronunciación.', NULL, 33),
                                                                        ('Aprende a mantener conversaciones cotidianas en francés.', NULL, 34),
                                                                        ('Frases y vocabulario útiles para viajar al extranjero.', NULL, 35),
                                                                        ('Curso intensivo para rendir el examen TOEFL con éxito.', NULL, 36),
                                                                        ('Aprende los fundamentos del idioma portugués.', NULL, 37),
                                                                        ('Mejora tu pronunciación y fluidez en portugués.', NULL, 38),
                                                                        ('Domina las frases esenciales y la gramática básica.', NULL, 39),
                                                                        ('Mejora tu comprensión y expresión oral en alemán.', NULL, 40),
                                                                        ('Aprende a manejar tus ingresos y gastos de forma eficiente.', NULL, 41),
                                                                        ('Crea un plan sólido para iniciar tu emprendimiento.', NULL, 42),
                                                                        ('Domina metodologías ágiles como Scrum y Kanban.', NULL, 43),
                                                                        ('Desarrolla habilidades para liderar equipos de trabajo.', NULL, 44),
                                                                        ('Aprende sobre exportaciones, importaciones y tratados.', NULL, 45),
                                                                        ('Mejora tu comunicación y capacidad de negociación.', NULL, 46),
                                                                        ('Comprende los principios económicos de forma sencilla.', NULL, 47),
                                                                        ('Aprende técnicas para organizarte y rendir más.', NULL, 48),
                                                                        ('Conoce los fundamentos contables de una empresa.', NULL, 49),
                                                                        ('Diseña estrategias empresariales a largo plazo.', NULL, 50);



INSERT INTO resenha_asesoria (descripcionresenha, puntajeresenha, fecharesenha, idcliente, id_verasesoria) VALUES
                                                                                                              ('Excelente explicación y muy claro.', 5, '2023-05-16', 1, 1),
                                                                                                              ('Aprendí mucho en poco tiempo.', 4, '2023-05-17', 2, 1),

                                                                                                              ('Muy práctico y fácil de entender.', 5, '2024-03-12', 3, 2),
                                                                                                              ('El profesor resolvió todas mis dudas.', 4, '2024-03-13', 4, 2),

                                                                                                              ('Buena metodología y ejemplos claros.', 4, '2022-11-25', 5, 3),
                                                                                                              ('Aprendí bastante sobre lógica.', 5, '2022-11-26', 1, 3),

                                                                                                              ('Excelente explicación de POO.', 5, '2025-02-14', 2, 4),
                                                                                                              ('Muy completo y detallado.', 4, '2025-02-15', 3, 4),

                                                                                                              ('Angular explicado paso a paso.', 5, '2023-07-19', 4, 5),
                                                                                                              ('Aprendí a crear interfaces modernas.', 4, '2023-07-20', 5, 5),

                                                                                                              ('Muy útil para bases de datos.', 5, '2024-10-05', 1, 6),
                                                                                                              ('Aprendí a consultar correctamente.', 4, '2024-10-06', 2, 6),

                                                                                                              ('HTML y CSS explicado muy bien.', 5, '2022-09-09', 3, 7),
                                                                                                              ('Ahora puedo crear páginas desde cero.', 4, '2022-09-10', 4, 7),

                                                                                                              ('Excelente manejo de backend y frontend.', 5, '2025-01-29', 5, 8),
                                                                                                              ('Muy práctico y aplicable a proyectos reales.', 4, '2025-01-30', 1, 8),

                                                                                                              ('Aprendí a automatizar tareas fácilmente.', 5, '2023-12-22', 2, 9),
                                                                                                              ('Mejoré mi productividad notablemente.', 4, '2023-12-23', 3, 9),

                                                                                                              ('Comprendí perfectamente las APIs.', 5, '2024-06-14', 4, 10),
                                                                                                              ('Excelente explicación y ejemplos.', 4, '2024-06-15', 5, 10),

                                                                                                              ('Muy útil para marketing digital.', 5, '2023-08-06', 1, 11),
                                                                                                              ('Aprendí estrategias efectivas.', 4, '2023-08-07', 2, 11),

                                                                                                              ('Campañas bien explicadas y fáciles de aplicar.', 5, '2025-03-14', 3, 12),
                                                                                                              ('Muy práctico para redes sociales.', 4, '2025-03-15', 4, 12),

                                                                                                              ('SEO explicado de forma clara.', 5, '2024-01-21', 5, 13),
                                                                                                              ('Aprendí a optimizar sitios web.', 4, '2024-01-22', 1, 13),

                                                                                                              ('Fidelización de clientes muy efectiva.', 5, '2022-10-13', 2, 14),
                                                                                                              ('Excelente contenido y ejemplos.', 4, '2022-10-14', 3, 14),

                                                                                                              ('Google Analytics explicado muy bien.', 5, '2024-08-15', 4, 15),
                                                                                                              ('Muy útil para análisis de métricas.', 4, '2024-08-16', 5, 15),

                                                                                                              ('Aprendí a redactar textos que venden.', 5, '2023-11-08', 1, 16),
                                                                                                              ('Contenido muy aplicable.', 4, '2023-11-09', 2, 16),

                                                                                                              ('Identidad digital bien explicada.', 5, '2023-01-01', 3, 17),
                                                                                                              ('Muy útil para posicionamiento personal.', 4, '2023-01-02', 4, 17),

                                                                                                              ('Optimización de anuncios clara y práctica.', 5, '2025-04-18', 5, 18),
                                                                                                              ('Aprendí a usar herramientas profesionales.', 4, '2025-04-19', 1, 18),

                                                                                                              ('Comprendí mejor al consumidor.', 5, '2024-05-10', 2, 19),
                                                                                                              ('Muy útil para ventas.', 4, '2024-05-11', 3, 19),

                                                                                                              ('Gestión de comunidades muy práctica.', 5, '2023-09-20', 4, 20),
                                                                                                              ('Aprendí mucho sobre redes sociales.', 4, '2023-09-21', 5, 20),

                                                                                                              ('Aprendí a crear logos profesionales.', 5, '2022-07-16', 1, 21),
                                                                                                              ('Muy práctico para diseño gráfico.', 4, '2022-07-17', 2, 21),

                                                                                                              ('Diseño centrado en el usuario explicado.', 5, '2024-02-29', 3, 22),
                                                                                                              ('Aprendí a mejorar la experiencia digital.', 4, '2024-03-01', 4, 22),

                                                                                                              ('Photoshop explicado paso a paso.', 5, '2023-04-03', 5, 23),
                                                                                                              ('Muy útil para composiciones gráficas.', 4, '2023-04-04', 1, 23),

                                                                                                              ('Maquetas y prototipos muy claros.', 5, '2025-01-09', 2, 24),
                                                                                                              ('Aprendí a crear prototipos interactivos.', 4, '2025-01-10', 3, 24),

                                                                                                              ('Identidades visuales únicas.', 5, '2024-04-22', 4, 25),
                                                                                                              ('Excelente para branding.', 4, '2024-04-23', 5, 25),

                                                                                                              ('Teoría del color bien explicada.', 5, '2022-08-18', 1, 26),
                                                                                                              ('Aprendí a aplicar principios de diseño.', 4, '2022-08-19', 2, 26),

                                                                                                              ('Maquetación de revistas clara y práctica.', 5, '2023-06-25', 3, 27),
                                                                                                              ('Muy útil para InDesign.', 4, '2023-06-26', 4, 27),

                                                                                                              ('Portafolio web muy bien explicado.', 5, '2024-09-06', 5, 28),
                                                                                                              ('Aprendí a construir portafolios atractivos.', 4, '2024-09-07', 1, 28),

                                                                                                              ('Animaciones con After Effects muy claras.', 5, '2025-03-26', 2, 29),
                                                                                                              ('Muy práctico y creativo.', 4, '2025-03-27', 3, 29),

                                                                                                              ('Diseño para redes sociales explicado.', 5, '2022-10-23', 4, 30),
                                                                                                              ('Aprendí a crear piezas atractivas.', 4, '2022-10-24', 5, 30),

                                                                                                              ('Mejoré mi fluidez en inglés.', 5, '2023-04-16', 1, 31),
                                                                                                              ('Prácticas guiadas muy útiles.', 4, '2023-04-17', 2, 31),

                                                                                                              ('Vocabulario empresarial claro.', 5, '2025-05-13', 3, 32),
                                                                                                              ('Aprendí expresiones útiles.', 4, '2025-05-14', 4, 32),

                                                                                                              ('Francés explicado desde cero.', 5, '2022-09-15', 5, 33),
                                                                                                              ('Aprendí pronunciación y gramática.', 4, '2022-09-16', 1, 33),

                                                                                                              ('Conversación en francés práctica.', 5, '2024-07-01', 2, 34),
                                                                                                              ('Muy útil para hablar en francés.', 4, '2024-07-02', 3, 34),

                                                                                                              ('Vocabulario útil para viajar.', 5, '2023-08-03', 4, 35),
                                                                                                              ('Aprendí frases prácticas.', 4, '2023-08-04', 5, 35),

                                                                                                              ('Curso TOEFL intensivo muy completo.', 5, '2025-02-19', 1, 36),
                                                                                                              ('Aprendí técnicas para el examen.', 4, '2025-02-20', 2, 36),

                                                                                                              ('Fundamentos de portugués claros.', 5, '2022-06-13', 3, 37),
                                                                                                              ('Aprendí gramática y vocabulario.', 4, '2022-06-14', 4, 37),

                                                                                                              ('Pronunciación en portugués muy clara.', 5, '2024-12-07', 5, 38),
                                                                                                              ('Aprendí a hablar con fluidez.', 4, '2024-12-08', 1, 38),

                                                                                                              ('Frases esenciales en portugués.', 5, '2023-02-21', 2, 39),
                                                                                                              ('Gramática básica bien explicada.', 4, '2023-02-22', 3, 39),

                                                                                                              ('Comprensión oral en alemán mejorada.', 5, '2025-05-03', 4, 40),
                                                                                                              ('Excelente práctica de conversación.', 4, '2025-05-04', 5, 40),

                                                                                                              ('Manejo eficiente de ingresos.', 5, '2023-08-14', 1, 41),
                                                                                                              ('Aprendí a organizar mis finanzas.', 4, '2023-08-15', 2, 41),

                                                                                                              ('Plan de emprendimiento sólido.', 5, '2024-05-25', 3, 42),
                                                                                                              ('Muy útil para iniciar negocios.', 4, '2024-05-26', 4, 42),

                                                                                                              ('Metodologías ágiles muy claras.', 5, '2025-02-05', 5, 43),
                                                                                                              ('Aprendí Scrum y Kanban.', 4, '2025-02-06', 1, 43),

                                                                                                              ('Habilidades de liderazgo mejoradas.', 5, '2023-01-18', 2, 44),
                                                                                                              ('Muy práctico y motivador.', 4, '2023-01-19', 3, 44),

                                                                                                              ('Exportaciones y tratados explicados.', 5, '2024-09-01', 4, 45),
                                                                                                              ('Aprendí sobre comercio internacional.', 4, '2024-09-02', 5, 45),

                                                                                                              ('Comunicación y negociación claras.', 5, '2022-10-07', 1, 46),
                                                                                                              ('Excelente para resolver conflictos.', 4, '2022-10-08', 2, 46),

                                                                                                              ('Principios económicos fáciles de entender.', 5, '2023-11-23', 3, 47),
                                                                                                              ('Muy claro y práctico.', 4, '2023-11-24', 4, 47),

                                                                                                              ('Técnicas de organización efectivas.', 5, '2025-03-09', 5, 48),
                                                                                                              ('Aprendí a rendir más.', 4, '2025-03-10', 1, 48),

                                                                                                              ('Fundamentos contables claros.', 5, '2022-09-26', 2, 49),
                                                                                                              ('Muy útil para entender contabilidad.', 4, '2022-09-27', 3, 49),

                                                                                                              ('Estrategias empresariales a largo plazo.', 5, '2024-07-17', 4, 50),
                                                                                                              ('Aprendí a planificar negocios.', 4, '2024-07-18', 5, 50);


INSERT INTO tema_asesoria (nombre_tema, descripcion_tema, idverasesoria) VALUES
-- VerAsesoria 1
('Fundamentos de Python', 'Variables, tipos y operadores', 1),
('Estructuras de control', 'If, else, while, for', 1),
('Funciones y módulos', 'Definición y uso de funciones', 1),
('Manejo de errores', 'Try, except y buenas prácticas', 1),
('Proyectos prácticos', 'Ejercicios integradores', 1),
-- VerAsesoria 2
('Introducción a Spring Boot', 'Configuración y dependencias', 2),
('Controladores y rutas', 'Manejo de endpoints', 2),
('Servicios y lógica de negocio', 'Inyección de dependencias', 2),
('Acceso a bases de datos', 'Spring Data JPA', 2),
('Prácticas con APIs', 'Integración y pruebas', 2),
-- VerAsesoria 3
('Estructuras básicas en Java', 'Arrays y listas', 3),
('Condicionales y bucles', 'If, switch, for, while', 3),
('POO en Java', 'Clases y objetos', 3),
('Colecciones y mapas', 'List, Set, Map', 3),
('Proyectos prácticos', 'Mini aplicaciones', 3),
-- VerAsesoria 4
('POO avanzada', 'Herencia y polimorfismo', 4),
('Interfaces y abstracciones', 'Diseño orientado a objetos', 4),
('Manejo de excepciones', 'Try-catch y finally', 4),
('Paquetes y modularización', 'Organización de código', 4),
('Proyectos prácticos', 'Aplicaciones modulares', 4),
-- VerAsesoria 5
('Angular Básico', 'Componentes y templates', 5),
('Data Binding', 'Interpolation, property y event binding', 5),
('Directivas', 'ngIf, ngFor y personalizadas', 5),
('Servicios y Dependency Injection', 'Inyección de servicios', 5),
('Routing', 'Navegación entre vistas', 5),
-- VerAsesoria 6
('Modelado de bases de datos', 'Tablas, relaciones y normalización', 6),
('Consultas SQL básicas', 'SELECT, WHERE, ORDER BY', 6),
('Consultas avanzadas', 'JOIN, GROUP BY, HAVING', 6),
('Procedimientos y triggers', 'Automatización en MySQL', 6),
('Proyectos prácticos', 'Diseño y consultas integradas', 6),
-- VerAsesoria 7
('HTML básico', 'Estructura de páginas web', 7),
('CSS básico', 'Estilos y selectores', 7),
('Responsive Design', 'Media queries y grids', 7),
('JavaScript básico', 'Eventos y manipulación DOM', 7),
('Proyecto web', 'Página web funcional', 7),
-- VerAsesoria 8
('Integración Backend-Frontend', 'Conexión de servicios', 8),
('APIs REST', 'Consumir y enviar datos', 8),
('Autenticación y seguridad', 'JWT y sesiones', 8),
('Manejo de formularios', 'Validaciones y envío', 8),
('Proyecto Fullstack', 'Aplicación completa', 8),
-- VerAsesoria 9
('Automatización con Python', 'Scripts básicos', 9),
('Manejo de archivos', 'Lectura y escritura', 9),
('Automatización web', 'Requests y Selenium', 9),
('Tareas programadas', 'Cron y schedulers', 9),
('Proyecto práctico', 'Automatización real', 9),
-- VerAsesoria 10
('Consumo de APIs', 'GET, POST, PUT, DELETE', 10),
('JSON y serialización', 'Parseo de datos', 10),
('Autenticación en APIs', 'Tokens y headers', 10),
('Manejo de errores en APIs', 'Respuestas y logs', 10),
('Proyecto práctico', 'Integración de servicios', 10),
-- VerAsesoria 11
('Branding básico', 'Identidad visual y valores', 11),
('Estrategia de contenido', 'Planificación y creación', 11),
('Publicidad online', 'Google Ads y Facebook Ads', 11),
('SEO y posicionamiento', 'Palabras clave y técnicas', 11),
('Analítica digital', 'Métricas y seguimiento', 11),
-- VerAsesoria 12
('Gestión de campañas', 'Facebook e Instagram', 12),
('Segmentación de audiencia', 'Definición y optimización', 12),
('Publicidad pagada', 'Estrategias y presupuestos', 12),
('Análisis de resultados', 'KPI y reportes', 12),
('Proyectos prácticos', 'Simulación de campañas', 12),
-- VerAsesoria 13
('SEO avanzado', 'On-page y Off-page', 13),
('Optimización de contenido', 'Palabras clave y meta tags', 13),
('Link building', 'Backlinks de calidad', 13),
('Herramientas SEO', 'Google Search Console, SEMrush', 13),
('Proyecto práctico', 'Optimización real', 13),
-- VerAsesoria 14
('Fidelización de clientes', 'Programas y recompensas', 14),
('Email marketing', 'Campañas efectivas', 14),
('CRM y gestión de clientes', 'Herramientas y prácticas', 14),
('Analítica y seguimiento', 'Medición de resultados', 14),
('Proyecto práctico', 'Estrategias aplicadas', 14),
-- VerAsesoria 15
('Google Analytics básico', 'Métricas y reportes', 15),
('Interpretación de datos', 'KPIs y decisiones', 15),
('Segmentación y audiencias', 'Filtros y comparaciones', 15),
('Optimización de campañas', 'Estrategias de mejora', 15),
('Proyecto práctico', 'Análisis real', 15),
-- VerAsesoria 16
('Copywriting básico', 'Textos que venden', 16),
('Técnicas persuasivas', 'Storytelling y CTA', 16),
('SEO para contenidos', 'Palabras clave y optimización', 16),
('Redacción para redes', 'Adaptación de tono y formato', 16),
('Proyecto práctico', 'Redacción efectiva', 16),
-- VerAsesoria 17
('Identidad digital', 'Nombre, logo y estilo', 17),
('Redes sociales', 'Perfiles y contenido', 17),
('Portafolio online', 'Exposición de trabajos', 17),
('Estrategia personal', 'Objetivos y posicionamiento', 17),
('Proyecto práctico', 'Construcción de marca', 17),
-- VerAsesoria 18
('Publicidad avanzada', 'Diseño de anuncios', 18),
('Segmentación de mercado', 'Audiencias y nichos', 18),
('Optimización de campañas', 'Análisis y ajustes', 18),
('Herramientas profesionales', 'Canva, Photoshop, Ads', 18),
('Proyecto práctico', 'Campañas aplicadas', 18),
-- VerAsesoria 19
('Comportamiento del consumidor', 'Factores de decisión', 19),
('Psicología de ventas', 'Influencias y motivaciones', 19),
('Estrategias de marketing', 'Ofertas y promociones', 19),
('Analítica de resultados', 'Medición de impacto', 19),
('Proyecto práctico', 'Estudio de caso', 19),
-- VerAsesoria 20
('Gestión de redes sociales', 'Planificación de publicaciones', 20),
('Interacción con la audiencia', 'Mensajes y comentarios', 20),
('Publicidad orgánica', 'Estrategias sin costo', 20),
('Publicidad pagada', 'Anuncios en plataformas', 20),
('Proyecto práctico', 'Simulación de gestión', 20),
-- VerAsesoria 21
('Diseño de logos', 'Elementos y tipografía', 21),
('Ilustración digital', 'Vectores y trazos', 21),
('Composición gráfica', 'Principios visuales', 21),
('Color y contraste', 'Teoría y aplicación', 21),
('Proyecto práctico', 'Diseño de identidad', 21),
-- VerAsesoria 22
('UX Design', 'Experiencia de usuario', 22),
('Wireframes y prototipos', 'Bocetos digitales', 22),
('Interacción y navegación', 'Flujos y usabilidad', 22),
('Evaluación de diseño', 'Test de usuario', 22),
('Proyecto práctico', 'Diseño centrado en usuario', 22),
-- VerAsesoria 23
('Photoshop básico', 'Herramientas y capas', 23),
('Edición de fotos', 'Ajustes y filtros', 23),
('Composición y montaje', 'Combinar imágenes', 23),
('Retoque y corrección', 'Colores y detalles', 23),
('Proyecto práctico', 'Composición final', 23),
-- VerAsesoria 24
('Prototipado interactivo', 'Herramientas y técnicas', 24),
('Maquetas de apps', 'Diseño funcional', 24),
('Animaciones y transiciones', 'Interactividad', 24),
('Testeo de prototipos', 'Feedback y ajustes', 24),
('Proyecto práctico', 'Aplicación real', 24),
-- VerAsesoria 25
('Identidad visual', 'Diseño de marca', 25),
('Manual de marca', 'Guías y tipografía', 25),
('Color y estilo', 'Paleta y coherencia', 25),
('Aplicación de marca', 'Redes y materiales', 25),
('Proyecto práctico', 'Implementación completa', 25);

-- VerAsesoria 26
INSERT INTO tema_asesoria (nombre_tema, descripcion_tema, idverasesoria) VALUES
                                                                          ('Teoría del color', 'Principios y combinaciones', 26),
                                                                          ('Tipografía y legibilidad', 'Selección de fuentes', 26),
                                                                          ('Composición visual', 'Equilibrio y jerarquía', 26),
                                                                          ('Herramientas de diseño', 'Uso de software profesional', 26),
                                                                          ('Proyecto práctico', 'Aplicación de teoría del color', 26),
-- VerAsesoria 27
                                                                          ('Adobe InDesign', 'Herramientas y paneles', 27),
                                                                          ('Maquetación de revistas', 'Columnas y grids', 27),
                                                                          ('Diseño de catálogos', 'Imágenes y textos', 27),
                                                                          ('Exportación y formatos', 'PDF y digital', 27),
                                                                          ('Proyecto práctico', 'Maquetación completa', 27),
-- VerAsesoria 28
                                                                          ('HTML avanzado', 'Estructuras semánticas', 28),
                                                                          ('CSS avanzado', 'Flexbox y Grid', 28),
                                                                          ('Animaciones CSS', 'Transiciones y keyframes', 28),
                                                                          ('Portafolio web', 'Diseño responsivo', 28),
                                                                          ('Proyecto práctico', 'Sitio completo', 28),
-- VerAsesoria 29
                                                                          ('After Effects básico', 'Interfaz y herramientas', 29),
                                                                          ('Animaciones sencillas', 'Keyframes y movimientos', 29),
                                                                          ('Efectos visuales', 'Filtros y capas', 29),
                                                                          ('Exportación de videos', 'Formatos y calidad', 29),
                                                                          ('Proyecto práctico', 'Animación completa', 29),
-- VerAsesoria 30
                                                                          ('Diseño para redes', 'Tamaño y resolución', 30),
                                                                          ('Contenido visual', 'Imágenes y textos', 30),
                                                                          ('Animaciones cortas', 'GIFs y videos', 30),
                                                                          ('Herramientas online', 'Canva y Photoshop', 30),
                                                                          ('Proyecto práctico', 'Post para Instagram/TikTok', 30),
-- VerAsesoria 31
                                                                          ('Práctica de conversación', 'Diálogos guiados', 31),
                                                                          ('Pronunciación y acento', 'Ejercicios prácticos', 31),
                                                                          ('Vocabulario cotidiano', 'Palabras y expresiones', 31),
                                                                          ('Comprensión auditiva', 'Escucha activa', 31),
                                                                          ('Proyecto práctico', 'Role-play en inglés', 31),
-- VerAsesoria 32
                                                                          ('Vocabulario empresarial', 'Términos y expresiones', 32),
                                                                          ('Emails y cartas', 'Redacción profesional', 32),
                                                                          ('Reuniones y presentaciones', 'Frases clave', 32),
                                                                          ('Negociaciones', 'Tono y formalidad', 32),
                                                                          ('Proyecto práctico', 'Simulación empresarial', 32),
-- VerAsesoria 33
                                                                          ('Bases del francés', 'Gramática y vocabulario', 33),
                                                                          ('Pronunciación', 'Sonidos y acentos', 33),
                                                                          ('Conversaciones básicas', 'Saludo y presentación', 33),
                                                                          ('Comprensión escrita', 'Lectura de textos simples', 33),
                                                                          ('Proyecto práctico', 'Diálogos básicos', 33),
-- VerAsesoria 34
                                                                          ('Conversaciones cotidianas', 'Diálogos prácticos', 34),
                                                                          ('Expresiones comunes', 'Frases útiles', 34),
                                                                          ('Pronunciación correcta', 'Ejercicios fonéticos', 34),
                                                                          ('Escucha y comprensión', 'Audios y vídeos', 34),
                                                                          ('Proyecto práctico', 'Role-play en francés', 34),
-- VerAsesoria 35
                                                                          ('Frases para viajar', 'Aeropuerto, hotel, transporte', 35),
                                                                          ('Vocabulario turístico', 'Lugares y comida', 35),
                                                                          ('Conversaciones sencillas', 'Preguntar y responder', 35),
                                                                          ('Cultura y etiqueta', 'Normas básicas', 35),
                                                                          ('Proyecto práctico', 'Simulación de viaje', 35),
-- VerAsesoria 36
                                                                          ('Preparación TOEFL', 'Estrategias y consejos', 36),
                                                                          ('Comprensión lectora', 'Textos académicos', 36),
                                                                          ('Expresión oral', 'Speaking y fluidez', 36),
                                                                          ('Escritura académica', 'Redacción y estructura', 36),
                                                                          ('Proyecto práctico', 'Simulación de examen', 36),
-- VerAsesoria 37
                                                                          ('Fundamentos de portugués', 'Gramática y vocabulario', 37),
                                                                          ('Pronunciación básica', 'Sonidos y acentos', 37),
                                                                          ('Conversaciones simples', 'Diálogos cotidianos', 37),
                                                                          ('Comprensión auditiva', 'Escucha activa', 37),
                                                                          ('Proyecto práctico', 'Diálogos básicos', 37),
-- VerAsesoria 38
                                                                          ('Pronunciación avanzada', 'Fluidez y acento', 38),
                                                                          ('Vocabulario práctico', 'Palabras y expresiones', 38),
                                                                          ('Conversación oral', 'Diálogos complejos', 38),
                                                                          ('Comprensión auditiva', 'Audios y podcasts', 38),
                                                                          ('Proyecto práctico', 'Simulación de conversación', 38),
-- VerAsesoria 39
                                                                          ('Frases esenciales', 'Uso cotidiano', 39),
                                                                          ('Gramática básica', 'Tiempos y conjugaciones', 39),
                                                                          ('Comprensión lectora', 'Textos simples', 39),
                                                                          ('Expresión oral', 'Diálogos prácticos', 39),
                                                                          ('Proyecto práctico', 'Conversación guiada', 39),
-- VerAsesoria 40
                                                                          ('Comprensión oral alemán', 'Escucha activa', 40),
                                                                          ('Expresión oral', 'Diálogos y pronunciación', 40),
                                                                          ('Gramática y estructuras', 'Reglas básicas', 40),
                                                                          ('Vocabulario cotidiano', 'Palabras y frases', 40),
                                                                          ('Proyecto práctico', 'Role-play en alemán', 40),
-- VerAsesoria 41
                                                                          ('Gestión financiera', 'Ingresos y gastos', 41),
                                                                          ('Presupuesto personal', 'Herramientas y seguimiento', 41),
                                                                          ('Ahorro e inversión', 'Conceptos básicos', 41),
                                                                          ('Control de deudas', 'Buenas prácticas', 41),
                                                                          ('Proyecto práctico', 'Simulación financiera', 41),
-- VerAsesoria 42
                                                                          ('Plan de negocio', 'Estructura y objetivos', 42),
                                                                          ('Investigación de mercado', 'Análisis y segmentación', 42),
                                                                          ('Marketing y ventas', 'Estrategias iniciales', 42),
                                                                          ('Finanzas iniciales', 'Proyecciones y costos', 42),
                                                                          ('Proyecto práctico', 'Plan completo', 42),
-- VerAsesoria 43
                                                                          ('Scrum y Kanban', 'Metodologías ágiles', 43),
                                                                          ('Roles y responsabilidades', 'Scrum Master y Product Owner', 43),
                                                                          ('Gestión de proyectos', 'Sprints y backlog', 43),
                                                                          ('Herramientas de seguimiento', 'Jira, Trello', 43),
                                                                          ('Proyecto práctico', 'Simulación ágil', 43),
-- VerAsesoria 44
                                                                          ('Liderazgo', 'Habilidades y estilos', 44),
                                                                          ('Gestión de equipos', 'Roles y dinámicas', 44),
                                                                          ('Comunicación efectiva', 'Reuniones y feedback', 44),
                                                                          ('Resolución de conflictos', 'Estrategias y técnicas', 44),
                                                                          ('Proyecto práctico', 'Caso de estudio', 44),
-- VerAsesoria 45
                                                                          ('Comercio internacional', 'Exportaciones e importaciones', 45),
                                                                          ('Tratados y acuerdos', 'Normativa y ventajas', 45),
                                                                          ('Logística', 'Transporte y almacenamiento', 45),
                                                                          ('Estrategias de negocio', 'Planificación internacional', 45),
                                                                          ('Proyecto práctico', 'Simulación de exportación', 45),
-- VerAsesoria 46
                                                                          ('Comunicación efectiva', 'Habilidades y estrategias', 46),
                                                                          ('Negociación', 'Tácticas y preparación', 46),
                                                                          ('Presentaciones', 'Diseño y exposición', 46),
                                                                          ('Feedback y coaching', 'Mejora continua', 46),
                                                                          ('Proyecto práctico', 'Simulación de negociación', 46),
-- VerAsesoria 47
                                                                          ('Principios económicos', 'Conceptos básicos', 47),
                                                                          ('Oferta y demanda', 'Modelos y ejemplos', 47),
                                                                          ('Inflación y tipos de interés', 'Impacto en negocios', 47),
                                                                          ('Política fiscal y monetaria', 'Conceptos esenciales', 47),
                                                                          ('Proyecto práctico', 'Análisis económico', 47),
-- VerAsesoria 48
                                                                          ('Organización personal', 'Técnicas de planificación', 48),
                                                                          ('Gestión del tiempo', 'Prioridades y objetivos', 48),
                                                                          ('Productividad', 'Métodos y herramientas', 48),
                                                                          ('Automatización de tareas', 'Aplicación práctica', 48),
                                                                          ('Proyecto práctico', 'Simulación de productividad', 48),
-- VerAsesoria 49
                                                                          ('Contabilidad básica', 'Principios contables', 49),
                                                                          ('Registros y libros', 'Diarios y mayores', 49),
                                                                          ('Estados financieros', 'Balance y resultados', 49),
                                                                          ('Análisis financiero', 'Indicadores y ratios', 49),
                                                                          ('Proyecto práctico', 'Caso contable', 49),
-- VerAsesoria 50
                                                                          ('Estrategia empresarial', 'Planificación a largo plazo', 50),
                                                                          ('Gestión de recursos', 'Optimización y control', 50),
                                                                          ('Análisis de mercado', 'Investigación y segmentación', 50),
                                                                          ('Innovación y desarrollo', 'Tendencias y oportunidades', 50),
                                                                          ('Proyecto práctico', 'Aplicación integral', 50);

