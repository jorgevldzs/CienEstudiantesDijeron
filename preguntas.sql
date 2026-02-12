-- Tabla Preguntas
CREATE TABLE Preguntas (
    pr_id INTEGER PRIMARY KEY,
    pr_pregunta VARCHAR(150) NOT NULL
);

-- Tabla Respuestas
CREATE TABLE Respuestas (
    res_id INTEGER PRIMARY KEY,
    pr_id INTEGER NOT NULL,
    res_respuesta VARCHAR(20) NOT NULL,
    res_cantidad INTEGER DEFAULT 0,
    -- Definición de la Llave Foránea
    FOREIGN KEY (pr_id) REFERENCES Preguntas(pr_id) ON DELETE CASCADE
);

-- Inserción de datos: Preguntas y Respuestas
INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (17, 'Factor importante al diseñar');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (17, 'Iluminación', 32), (17, 'Estética', 27), (17, 'Ventilación', 23), (17, 'Funcionalidad', 18);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (18, 'Tipo de maqueta');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (18, 'Digital', 28), (18, 'Estructural', 27), (18, 'Conceptual', 24), (18, 'Volumétrica', 21);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (19, 'Lugar donde trabaja un arquitecto');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (19, 'Oficina', 40), (19, 'Estudio', 24), (19, 'Obra', 21), (19, 'Despacho', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (20, 'Elemento exterior de edificio');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (20, 'Balcón', 37), (20, 'Ventana', 23), (20, 'Fachada', 21), (20, 'Entrada', 19);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (21, 'Capas de la Tierra');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (21, 'Atmósfera', 49), (21, 'Corteza', 18), (21, 'Manto', 17), (21, 'Núcleo', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (22, 'Fenómeno natural');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (22, 'Sismo', 35), (22, 'Volcán', 26), (22, 'Deslizamiento', 23), (22, 'Tsunami', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (23, 'Ciencia relacionada');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (23, 'Geología', 37), (23, 'Hidrología', 28), (23, 'Climatología', 26), (23, 'Oceanografía', 9);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (24, 'Tipo de roca');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (24, 'Volcánica', 30), (24, 'Metamórfica', 28), (24, 'Ígnea', 23), (24, 'Sedimentaria', 19);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (25, 'Herramienta de medición');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (25, 'Brújula', 36), (25, 'Sismógrafo', 28), (25, 'GPS', 19), (25, 'Altímetro', 17);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (26, 'Recurso natural');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (26, 'Petróleo', 50), (26, 'Agua', 25), (26, 'Gas', 13), (26, 'Minerales', 12);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (27, 'Mapa usado en geociencias');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (27, 'Geológico', 39), (27, 'Topográfico', 30), (27, 'Hídrico', 19), (27, 'Climático', 12);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (28, 'Lugar de estudio');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (28, 'Desiertos', 29), (28, 'Montañas', 26), (28, 'Costas', 24), (28, 'Ríos', 21);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (29, 'Riesgo natural');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (29, 'Inundación', 47), (29, 'Terremoto', 27), (29, 'Erupción', 18), (29, 'Sequía', 8);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (30, 'Actividad del geocientífico ');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (30, 'Investigar', 31), (30, 'Analizar', 27), (30, 'Explorar', 21), (30, 'Medir', 21);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (31, 'Máquina simple ');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (31, 'Tornillo', 33), (31, 'Palanca', 29), (31, 'Polea', 28), (31, 'Plano inclinado', 10);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (32, 'Herramienta de taller ');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (32, 'Llave', 28), (32, 'Martillo', 26), (32, 'Destornillador', 26), (32, 'Pinza', 20);