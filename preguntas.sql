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

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (1, 'Menciona una función básica de la administración');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (1, 'Planeación', 35), (1, 'Organización', 30), (1, 'Dirección', 20), (1, 'Control', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (2, 'Di un área común dentro de una empresa'); 
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (2, 'Finanzas', 40), (2, 'Recursos humanos', 25), (2, 'Ventas', 20), (2, 'Producción', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (3, 'Menciona un recurso empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (3, 'Humano', 30), (3, 'Financiero', 28), (3, 'Material', 22), (3, 'Tecnológico', 20);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (4, 'Algo que hace un administrador');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (4, 'Tomar decisiones', 35), (4, 'Organizar equipos', 30), (4, 'Planear actividades', 20), (4, 'Supervisar procesos', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (5, 'Documento usado en empresas');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (5, 'Reporte', 40), (5, 'Estado financiero', 25), (5, 'Contrato', 20), (5, 'Manual', 13); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (6, 'Habilidad de un líder');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (6, 'Comunicación', 35), (6, 'Responsabilidad', 30), (6, 'Motivación', 20), (6, 'Trabajo en equipo', 18);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (7, 'Objetivo de una empresa');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (7, 'Ganar dinero', 40), (7, 'Crecer', 25), (7, 'Satisfacer clientes', 20), (7, 'Ser eficiente', 19); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (8, 'Algo que se analiza para mejorar una empresa');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (8, 'Costos', 30), (8, 'Procesos', 28), (8, 'Ventas', 22), (8, 'Productividad', 20);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (9, 'Ejemplo de puesto administrativo');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (9, 'Gerente', 35), (9, 'Supervisor', 30), (9, 'Coordinador', 20), (9, 'Director', 19);   

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (10, 'Actividad diaria en oficina');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (10, 'Reuniones', 40), (10, 'Correos', 25), (10, 'Reportes', 20), (10, 'Planeación', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (11, 'Elemento básico en una construcción');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (11, 'Muro', 35), (11, 'Columna', 30), (11, 'Techo', 20), (11, 'Ventana', 13);   

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (12, 'Tipo de plano arquitectónico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (12, 'Planta', 40), (12, 'Fachada', 25), (12, 'Corte', 20), (12, 'Perspectiva', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (13, 'Material común en edificios');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (13, 'Concreto', 30), (13, 'Acero', 28), (13, 'Vidrio', 22), (13, 'Ladrillo', 18); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (14, 'Herramienta de dibujo');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (14, 'Regla', 35), (14, 'Escuadra', 25), (14, 'Compás', 20), (14, 'Lápiz', 20); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (15, 'Espacio dentro de una casa');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (15, 'Sala', 35), (15, 'Cocina', 25), (15, 'Baño', 20), (15, 'Recámara', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (16, 'Software usado por arquitectos');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (16, 'AutoCAD', 30), (16, 'SketchUp', 28), (16, 'Revit', 22), (16, 'Lumion', 20);  

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

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (33, 'Tipo de energía ');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (33, 'Mecánica', 37), (33, 'Térmica', 32), (33, 'Cinética', 21), (33, 'Potencial', 20);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (34, 'Parte de un motor');     
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (34, 'Pistón', 40), (34, 'Cilindro', 32), (34, 'Válvula', 26), (34, 'Eje', 12);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (35, 'Material industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (35, 'Acero', 28), (35, 'Aluminio', 36), (35, 'Cobre', 37), (35, 'Hierro', 9);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (36, 'Concepto físico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (36, 'Fuerza', 38), (36, 'Movimiento', 30), (36, 'Velocidad', 24), (36, 'Aceleracion', 18);    

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (37, 'Sistema mecánico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (37, 'Engranes', 36), (37, 'Bandas', 27), (37, 'Poleas', 30), (37, 'Rodamientos', 17); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (38, 'Proceso mecánico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (38, 'Soldar', 45), (38, 'Cortar', 28), (38, 'Pulir', 20), (38, 'Ensamblar', 17);   

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (39, 'Equipo de seguridad');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (39, 'Casco', 51), (39, 'Guantes', 31), (39,'Lentes', 17), (39, 'Botas', 11);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (40, 'Lugar de trabajo');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (40, 'Taller', 41), (40, 'Fabrica', 36), (40, 'Laboratorio', 23), (40, 'Planta', 10);    

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (41, 'Parte de una computadora');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (41  , 'CPU', 35), (41, 'RAM', 32), (41, 'Disco duro', 24), (41, 'Tarjeta madre', 19);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (42, 'Lenguaje de programación');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (42, 'Python', 47), (42, 'Java', 25), (42, 'C++', 19), (42, 'JavaScript', 19);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (43, 'Dispositivo de entrada');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (43, 'Teclado', 35), (43, 'Mouse', 41), (43, 'Microfono', 20), (43, 'Cámara', 14);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (44, 'Sistema operativo');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (44, 'Windows', 43), (44, 'Linux', 38), (44, 'macOS', 20), (44, 'Android', 9); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (45, 'Software común');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (45, 'Word', 44), (45, 'Excel', 32), (45, 'Chrome', 29), (45, 'Powerpoint', 5);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (46, 'Concepto de programación');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (46, 'Algoritmo', 34), (46, 'Variable', 31), (46, 'Bucle', 27), (46, 'Función', 18);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (47, 'Tipo de red');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (47, 'LAN', 34), (47, 'WAN', 37), (47, 'WiFi', 24), (47, 'Bluetooth', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (48, 'Área de TI');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (48, 'Bases de datos', 42), (48, 'Redes', 36), (48, 'Desarrollo web', 21), (48, 'Ciberseguridad', 11);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (49, 'Dispositivo de salida');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (49, 'Monitor', 16), (49, 'Bocinas', 18), (49, 'Impresora', 19), (49, 'Proyector', 47);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (50, 'Actividad del ingeniero en sistemas');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (50, 'Programar', 29), (50, 'Diseñar', 16), (50, 'Analizar', 25), (50, 'Soporte', 30);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (51, 'Actividad empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (51, 'Planear', 33), (51, 'Organizar', 23), (51, 'Dirigir', 21), (51, 'Controlar', 23);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (52, 'Elemento de proyecto');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (52, 'Tiempo', 31), (52, 'Costo', 16), (52, 'Alcance', 11), (52, 'Recursos', 42);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (53, 'Habilidad profesional');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (53, 'Liderazgo', 28), (53, 'Comunicación', 24), (53, 'Análisis', 18), (53, 'Negociación', 30);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (54, 'Area Empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (54, 'Calidad', 35), (54, 'Logística', 29), (54, 'Finanzas', 21), (54, 'Marketing', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (55, 'Documento empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (55, 'Cronograma', 27), (55, 'Reporte', 33), (55,'Plan', 19), (55, 'Presupuesto', 21);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (56,'Objetivo empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (56, 'Eficiencia', 38), (56, 'Productividad', 29), (56, 'Crecimiento', 22), (56, 'Innovación', 20); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (57, 'Tipo de análisis');        
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (57, 'FODA', 31), (57, 'Costos', 27), (57, 'Mercado', 26), (57, 'Riesgos', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (58, 'Trabajo en equipo implica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (58, 'Comunicación', 35), (58, 'Colaboración', 29), (58, 'Confianza', 24), (58, 'Responsabilidad', 18);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (59, 'Herramienta de gestión');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (59, 'Gantt', 20), (59, 'KPIs', 17), (59, 'Checklist', 27), (59, 'Dashboard', 25);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (60, 'Perfil del gestor');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (60, 'Organizado', 33), (60, 'Analítico', 29), (60, 'Líder', 22), (60, 'Responsable', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (61, 'Recurso natural');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (61, 'Agua', 27), (61, 'Aire', 35), (61, 'Suelo', 22), (61, 'Bosque', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (62, 'Tipo de energía limpia');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (62, 'Solar', 27), (62, 'Eólica', 34), (62, 'Hidráulica', 20), (62, 'Geotérmica', 19);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (63, 'Problema ambiental');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (63, 'Contaminación', 20), (63, 'Deforestación', 17), (63, 'Cambio climático', 22), (63, 'Basura', 41);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (64, 'Acción ecológica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (64, 'Reciclar', 29), (64, 'Reducir', 21), (64, 'Reutilizar', 14), (64, 'Reforestar', 36); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (65, 'Residuo reciclable');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (65, 'Plástico', 38), (65, 'Vidrio', 27), (65, 'Cartón', 21), (65, 'Metal', 14);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (66, 'Área ambiental');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (66, 'Impacto ambiental', 30), (66, 'Tratamiento de agua', 28), (66, 'Energías renovables', 25), (66, 'Gestión de residuos', 17);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (67, 'Fenómeno climático');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (67, 'Sequía', 34), (67, 'Huracán', 28), (67, 'Ola de calor', 22), (67, 'Lluvia intensa', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (68, 'Lugar natural');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (68, 'Río', 30), (68, 'Bosque', 27), (68, 'Montaña', 25), (68, 'Desierto', 18);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (69, 'Medida ecológica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (69, 'Ahorro de agua', 36), (69, 'Separar basura', 29), (69, 'Usar bici', 20), (69, 'Apagar luces', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (70, 'Objetivo ambiental');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (70, 'Sostenibilidad', 33), (70, 'Conservación', 27), (70, 'Equilibrio ecológico', 24), (70, 'Protección natural', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (71, 'Componente electrónico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (71, 'Resistor', 31), (71, 'Capacitor', 26), (71, 'Diodo', 23), (71, 'Transistor', 20);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (72, 'Unidad eléctrica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (72, 'Volt', 35), (72, 'Ampere', 30), (72, 'Ohm', 22), (72, 'Watt', 13);   

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (73, 'Herramienta electrónica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (73, 'Multímetro', 38), (73, 'Osciloscopio', 24), (73, 'Cautín', 22), (73, 'Fuente', 16);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (74, 'Parte de circuito');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (74, 'Cable', 29), (74, 'Interruptor', 27), (74, 'Sensor', 25), (74, 'LED', 19);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (75, 'Tipo de señal');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (75, 'Digital', 34), (75, 'Analógica', 28), (75, 'PWM', 21), (75, 'Binaria', 17);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (76, 'Aplicación electrónica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (76, 'Robótica', 37), (76, 'Domótica', 25), (76, 'Automatización', 23), (76, 'Telecomunicaciones', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (77, 'Equipo electrónico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (77, 'Arduino', 40), (77, 'Raspberry Pi', 26), (77, 'PLC', 20), (77, 'Microcontrolador', 14);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (78, 'Fuente de energía');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (78, 'Batería', 32), (78, 'Fuente DC', 27), (78, 'Panel solar', 25), (78, 'Transformador', 16); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (79, 'Proceso electrónico');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (79, 'Soldar', 30), (79, 'Medir', 28), (79, 'Programar', 26), (79, 'Probar', 16);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (80, 'Uso cotidiano');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (80, 'Celular', 45), (80, 'Televisión', 23), (80, 'Computadora', 20), (80, 'Control remoto', 12); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (81, 'Meta industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (81, 'Reducir costos', 34), (81, 'Mejorar flujo', 26), (81, 'Aumentar calidad', 24), (81, 'Minimizar errores', 16);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (82, 'Sistema productivo');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (82, 'Línea', 31), (82, 'Celda', 27), (82, 'Proyecto', 22), (82, 'Taller', 20);    

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (83, 'Recurso industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (83, 'Tiempo', 33), (83, 'Dinero', 29), (83, 'Personal', 23), (83, 'Maquinaria', 15);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (84, 'Habilidad industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (84, 'Análisis', 36), (84, 'Organización', 28), (84, 'Comunicación', 21), (84, 'Resolución de problemas', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (85, 'Tecnología industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (85, 'Robots', 38), (85, 'Sensores', 27), (85, 'Software', 22), (85, 'Automatización', 13); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (86, 'Tipo de mantenimiento');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (86, 'Preventivo', 30), (86, 'Correctivo', 28), (86, 'Predictivo', 25), (86, 'Autónomo', 17); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (87, 'Flujo industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (87, 'Material', 34), (87, 'Información', 29), (87, 'Personas', 22), (87, 'Energía', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (88, 'Etapa productiva');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (88, 'Diseño', 31), (88, 'Producción', 27), (88, 'Inspección', 24), (88, 'Entrega', 18);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (89, 'Meta empresarial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (89, 'Competitividad', 36), (89, 'Innovación', 28), (89, 'Crecimiento', 21), (89, 'Rentabilidad', 15); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (90, 'Perfil industrial');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (90, 'Analítico', 33), (90, 'Organizado', 29), (90, 'Líder', 22), (90, 'Estratega', 16);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (91, 'Materia básica universitaria');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (91, 'Matemáticas', 30), (91, 'Física', 28), (91, 'Comunicación', 25), (91, 'Ética', 17);  

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (92, 'Habilidad académica');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (92, 'Investigar', 35), (92, 'Leer', 27), (92, 'Escribir', 22), (92, 'Analizar', 16); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (93, 'Herramienta digital');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (93, 'Word', 40), (93, 'Excel', 26), (93, 'PowerPoint', 19), (93, 'Drive', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (94, 'Tipo de aprendizaje');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (94, 'Visual', 33), (94, 'Auditivo', 29), (94, 'Kinestésico', 22), (94, 'Colaborativo', 16);    

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (95, 'Actividad estudiantil');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (95, 'Examen', 31), (95, 'Proyecto', 27), (95, 'Exposición', 24), (95, 'Tarea', 18); 

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (96, 'Valor universitario');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (96, 'Responsabilidad', 36), (96, 'Respeto', 28), (96, 'Honestidad', 21), (96, 'Compromiso', 15);        

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (97, 'Espacio escolar');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (97, 'Aula', 30), (97, 'Laboratorio', 27), (97, 'Biblioteca', 22), (97, 'Cafetería', 18);        

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (98, 'Habilidad profesional');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (98, 'Pensamiento crítico', 35), (98, 'Creatividad', 29), (98, 'Comunicación', 21), (98, 'Trabajo en equipo', 15);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (99, 'Tipo de evaluación');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (99, 'Examen', 38), (99, 'Rubrica', 27), (99, 'Lista de cotejo', 16), (99, 'Proyecto', 20);

INSERT INTO Preguntas (pr_id, pr_pregunta) VALUES (100, 'Objetivo del estudiante');
INSERT INTO Respuestas (pr_id, res_respuesta, res_cantidad) VALUES (100, 'Aprender', 40), (100, 'Graduarse', 26), (100, 'Mejorar habilidades', 12),(100, 'Prepararse profesionalmente', 12);   