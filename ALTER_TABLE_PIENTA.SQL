--ESTOS ALTER SON MIENTRAS SE DESARROLLA EL PROYECTO, CUANDO ESTE FINALIZADO EL DDL YA DEBE ESTAR CORRECTO






ALTER TABLE TAB_PRUEBA
ADD COLUMN TIPO_PRUEBA VARCHAR NOT NULL,
ADD COLUMN FECHA_PRUEBA_INICIO TIMESTAMP NOT NULL,
ADD COLUMN FECHA_PRUEBA_FIN TIMESTAMP NOT NULL,
ADD COLUMN DURACION_PRUEBA_MINUTOS	INTEGER		NOT NULL,
ADD COLUMN PRUEBA_ACTIVA BOOLEAN NOT NULL DEFAULT TRUE,
ADD NUMERO_PREGUNTAS INTEGER NOT NULL DEFAULT 0;
--SELECT * FROM TAB_PRUEBA;


--QUITAR NOT NULL DE LA COLUMNA FECHA_PRUEBA DE LA TABLA TAB_PRUEBA_ESTUDIANTE
ALTER TABLE TAB_PRUEBA_ESTUDIANTE
ALTER COLUMN FECHA_PRUEBA DROP NOT NULL;



--CAMBIOS PARA EL DIA 13/9/2024----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CAMBIAR EL TIPO DE DATO Y NOMBRE DE LA COLUMNA FECHA_PRUEBA DE LA TABLA TAB_PRUEBA_ESTUDIANTE
ALTER TABLE TAB_PRUEBA_ESTUDIANTE
ALTER COLUMN FECHA_PRUEBA TYPE TIMESTAMP;

ALTER TABLE TAB_PRUEBA_ESTUDIANTE
RENAME COLUMN FECHA_PRUEBA TO FECHA_PRUEBA_INICIO_ESTUDIANTE;

-- AGREGAR COLUMNA FECHA_PRUEBA_FIN_ESTUDIANTE A LA TABLA TAB_PRUEBA_ESTUDIANTE
ALTER TABLE TAB_PRUEBA_ESTUDIANTE
ADD COLUMN FECHA_PRUEBA_FIN_ESTUDIANTE TIMESTAMP;



--CAMBIOS PARA EL DIA 24/9/2024----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--AGREGAR UNA NUEVA COLUMNA PARA LA TABLA TAB_PRUEBA_ESTUDIANTE
ALTER TABLE TAB_PRUEBA_ESTUDIANTE
ADD COLUMN PUNTUACION_PRUEBA_ESTUDIANTE FLOAT;

