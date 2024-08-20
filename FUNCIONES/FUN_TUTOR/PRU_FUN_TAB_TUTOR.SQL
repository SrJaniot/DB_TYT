-- Consultar todos los mensajes
SELECT * FROM TAB_MENSAJES;

-- Consultar mensajes con IDs entre 14000 y 14999
SELECT * FROM TAB_MENSAJES WHERE id_mensaje BETWEEN 14000 Y 14999;

-- Consultar mensajes con IDs entre 1 y 200
SELECT * FROM TAB_MENSAJES WHERE id_mensaje ENTRE 1 Y 200;

-- Consultar un mensaje específico con ID 200
SELECT * FROM TAB_MENSAJES WHERE id_mensaje = 200;

-- Consultar todos los tutores
SELECT * FROM TAB_TUTOR;



-- Validar datos de un tutor
SELECT FUN_VALIDAR_DATOS_TUTOR();

-- Insertar un tutor
SELECT FUN_INSERTAR_TUTOR(
    'nombre', 
    'apellido',
    'direccion',
    'telefono',
    'email',
    1,  -- ID del área a evaluar
    1   -- ID del tutor
);

-- Insertar un tutor y retornar un JSON con el resultado
SELECT FUN_INSERTAR_TUTOR_JSON(
    'Prueba', 
    'Prueba',
    'Prueba',
    '3152901731',
    'esteban@prueba.com',
    1,  -- ID del área a evaluar
    2   -- ID del tutor
);


-- Obtener todos los tutores
SELECT FUN_OBTENER_TUTORES();

-- Obtener un tutor específico por ID
SELECT FUN_OBTENER_TUTOR('1098825372');

-- Actualizar un tutor
SELECT FUN_ACTUALIZAR_TUTOR(
    '1098825372', 
    'TUTOR PRUEBA', 
    'DIRECCION PRUEBA', 
    '3152901731', 
    'PRUEBA@PRUEBA.COM', 
    'CC'
);

-- Otra prueba de actualización de tutor
SELECT FUN_ACTUALIZAR_TUTOR(
    '1098825372', 
    'Juan Pérez', 
    'Calle Falsa 123', 
    '555-1234', 
    'juan.perez@example.com', 
    'DNI'
);


-- Eliminar todos los registros de la tabla TAB_TUTOR
DELETE FROM TAB_TUTOR;
