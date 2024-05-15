--PRUEBAS DE LAS FUNCIONES DE LA TABLA TAB_AREA_ESTUDIO------------------------------------------------------------------------------------------------------------
SELECT * FROM TAB_MENSAJES;
SELECT * FROM TAB_MENSAJES WHERE id_mensaje BETWEEN 11000 AND 11999;
SELECT * FROM TAB_MENSAJES WHERE id_mensaje BETWEEN 1 AND 200;
SELECT * FROM TAB_MENSAJES WHERE id_mensaje = 200;

SELECT * FROM TAB_AREA_ESTUDIO;

-- FUNCIONES DE LA TABLA TAB_AREA_ESTUDIO
SELECT FUN_VALIDAR_DATOS_AREA_ESTUDIO('Area de estudio','Descripcion de area de estudio',1);
SELECT FUN_INSERTAR_AREA_ESTUDIO('Area de estudio','Descripcion de area de estudio',1);
SELECT FUN_INSERTAR_AREA_ESTUDIO_JSON('Area de estudio','Descripcion de area de estudio',1);




--DROPEO DE TODOS LOS REGISTROS DE LA TABLA TAB_AREA_ESTUDIO
DELETE FROM TAB_AREA_ESTUDIO;