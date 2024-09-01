 --DML DE LA TABLA TAB_MENSAJES------------------------------------------------------------------------------------------------------------
--DROP DE TODOS LOS REGISTROS DE LA TABLA TAB_MENSAJES
    --     DELETE FROM TAB_MENSAJES;
--CONSULTA DE TODOS LOS REGISTROS DE LA TABLA TAB_MENSAJES
    --     SELECT * FROM TAB_MENSAJES;
--CODIGOS GENERALES ---------------------------------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(200,'Operacion Exitosa');
INSERT INTO TAB_MENSAJES VALUES(1,'ERROR POSTGRES en la operacion . VARIABLE: FOUND de la funcion INSERT FALLIDA'); 
INSERT INTO TAB_MENSAJES VALUES(100,'ERROR POSTGRES No se encontro ningun registro en la tabla'); 


--CODIGO DE MENSAJES DE LA TABLA TAB_AREAS_EVALUAR  (1000,1999)--------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(1001,'ERROR INSERTAR, El nombre del area a evaluar debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(1002,'ERROR INSERTAR, La descripcion del area a evaluar debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(1003,'ERROR INSERTAR, La ponderacion del area a evaluar debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(1004,'ERROR INSERTAR, El nombre del area a evaluar ya existe');

--CODIGO DE MENSAJES DE LA TABLA TAB_CONTEXTO  (2000,2999)--------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(2001,'ERROR INSERTAR, El nombre del contexto debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(2002,'ERROR INSERTAR, La descripcion del contexto debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(2003,'ERROR INSERTAR, El link de la archivo del contexto debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(2004,'ERROR INSERTAR, El nombre del contexto ya existe');
INSERT INTO TAB_MENSAJES VALUES(2005,'ERROR INSERTAR, El autor del contexto debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(2006,'ERROR INSERTAR, El ID_CONTEXTO TIENE QUE SER MAYOR A 0 Y NO PUEDE SER NULO');
INSERT INTO TAB_MENSAJES VALUES(2007,'ERROR INSERTAR, El EL REGISTRO NO EXISTE EN LA TABLA CONTEXTO');
INSERT INTO TAB_MENSAJES VALUES(2008,'ERROR ELIMINAR, EL CONTEXTO TIENE PREGUNTAS ASOCIADAS');
INSERT INTO TAB_MENSAJES VALUES(2009,'ERROR ELIMINAR, EL CONTEXTO NO EXISTE');
--CODIGO DE MENSAJES DE LA TABLA TAB_DPTOS  (4000,4999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(4001,'ERROR INSERTAR, El nombre del departamento debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(4002,'ERROR INSERTAR, El nombre del departamento ya existe');

--CODIGO DE MENSAJES DE LA TABLA TAB_PRUEBA  (5000,5999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(5001,'ERROR INSERTAR, El nombre de la prueba debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(5002,'ERROR INSERTAR, La descripcion de la prueba debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(5003,'ERROR INSERTAR, nombre de la prueba ya existe');
INSERT INTO TAB_MENSAJES VALUES(5010,'ERROR INSERTAR, LA FECHA FIN NO PUEDE SER MENOR A LA FECHA INICIO');

--CODIGO DE MENSAJES DE LA TABLA TAB_INSTITUCION  (6000,6999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(6001,'ERROR INSERTAR, El nombre de la institucion debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6002,'ERROR INSERTAR, La direccion de la institucion debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6003,'ERROR INSERTAR, El nombre representante de la institucion debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6004,'ERROR INSERTAR, El telefono de la institucion solo debe contener numeros y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6005,'ERROR INSERTAR, El telefono de la institucion debe ser valido y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6006,'ERROR INSERTAR, El email de la institucion debe ser valido y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6007,'ERROR INSERTAR, La ciudad de la institucion debe ser valida y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(6008,'ERROR INSERTAR, El nombre de la institucion ya existe');
INSERT INTO TAB_MENSAJES VALUES(6009,'ERROR INSERTAR, La ciudad de la institucion no existe');

--CODIGO DE MENSAJES DE LA TABLA TAB_TEMAS_AREAS (7000,7999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(7001,'ERROR INSERTAR, El ID_AREA_EVALUAR debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(7002,'ERROR INSERTAR, El NOMBRE del tema debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(7003,'ERROR INSERTAR, La descripcion del tema debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(7004,'ERROR INSERTAR, El nombre del tema ya existe');
INSERT INTO TAB_MENSAJES VALUES(7005,'ERROR INSERTAR, El ID_AREA_EVALUAR no existe');

--CODIGO DE MENSAJE DE LA TABLA TAB_PREGUNTA (8000,8999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(8001,'ERROR INSERTAR, El ID_CONTEXTO debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(8002,'ERROR INSERTAR, El ID_CONTEXTO no existe');
INSERT INTO TAB_MENSAJES VALUES(8003,'ERROR INSERTAR, El enunciado de la pregunta debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(8004,'ERROR INSERTAR, El tipo de pregunta debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(8005,'ERROR INSERTAR, El puntaje de la pregunta debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(8006,'ERROR INSERTAR, La pregunta ya existe en el contexto');
INSERT INTO TAB_MENSAJES VALUES(8007,'ERROR INSERTAR, El autor de la pregunta debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(8008,'ERROR ACTUALIZAR, EL ID PREGUNTA NO EXISTE');
INSERT INTO TAB_MENSAJES VALUES(8009,'ERROR ELIMINAR, EL ID CONTEXTO NO EXISTE');
INSERT INTO TAB_MENSAJES VALUES(8010,'ERROR ELIMINAR, EL REGISTRO TIENE DEPENDENCIAS ASOCIADAS EN TAB_PRUEBA_PREGUNTAS ES DECIR EXISTE UNA PRUEBA ASOCIADA A LA PREGUNTA');
INSERT INTO TAB_MENSAJES VALUES(8011,'ERROR ELIMINAR, EL REGISTRO TIENE DEPENDENCIAS ASOCIADAS EN TAB_PREGUNTA_TEMAS ES DECIR EXISTE UNA TEMA ASOCIADA A LA PREGUNTA');
INSERT INTO TAB_MENSAJES VALUES(8012,'ERROR ELIMINAR, EL REGISTRO TIENE DEPENDENCIAS ASOCIADAS EN TAB_PRUEBA_RESPUESTAS_ESTUDIANTE ES DECIR EXISTE UNA RESPUESTA ASOCIADA A LA PREGUNTA');
INSERT INTO TAB_MENSAJES VALUES(8013,'ERROR ELIMINAR, EL REGISTRO TIENE DEPENDENCIAS ASOCIADAS EN TAB_OPCIONES_PREGUNTA ES DECIR EXISTE UNA OPCION ASOCIADA A LA PREGUNTA');
--CODIGO DE MENSAJE DE LA TABLA TAB_OPCIONES_PREGUNTA (9000,9999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(9001,'ERROR INSERTAR, El ID_PREGUNTA debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(9002,'ERROR INSERTAR, El ID_PREGUNTA no existe');
INSERT INTO TAB_MENSAJES VALUES(9003,'ERROR INSERTAR, El texto de la opcion debe tener mas de 0 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(9004,'ERROR INSERTAR, El valor de la opcion debe ser booleano y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(9005,'ERROR INSERTAR, La opcion ya existe en la pregunta');
INSERT INTO TAB_MENSAJES VALUES(9006,'ERROR INSERTAR, El ID_OPCION NO EXISTE');
INSERT INTO TAB_MENSAJES VALUES(9007,'ERROR CONSULTA, NO EXISTEN OPCIONES PARA LA PREGUNTA');

--CODIGO DE MENSAJE DE LA TABLA TAB_SEDE (10000,10999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(10001,'ERROR INSERTAR, El nombre de la sede debe tener mas de 2 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10002,'ERROR INSERTAR, La direccion de la sede debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10003,'ERROR INSERTAR, El telefono de la sede solo debe contener numeros y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10004,'ERROR INSERTAR, El telefono de la sede debe ser valido y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10005,'ERROR INSERTAR, El email de la sede debe ser valido y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10006,'ERROR INSERTAR, El ID_INSTITUCION debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(10007,'ERROR INSERTAR, El nombre de la sede ya existe');
INSERT INTO TAB_MENSAJES VALUES(10008,'ERROR INSERTAR, El ID_INSTITUCION no existe en la tabla institucion');
INSERT INTO TAB_MENSAJES VALUES(10009,'ERROR INSERTAR, El ID_SEDE no existe');

--CODIGO DE MENSAJE DE LA TABLA TAB_AREA_ESTUDIO (11000,11999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(11001,'ERROR INSERTAR, El nombre del area de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(11002,'ERROR INSERTAR, La descripcion del area de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(11003,'ERROR INSERTAR, El ID_SEDE debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(11004,'ERROR INSERTAR, El ID_SEDE no existe');
INSERT INTO TAB_MENSAJES VALUES(11005,'ERROR INSERTAR, El area de estudio ya existe');
INSERT INTO TAB_MENSAJES VALUES(11000,'ERROR UPDATE, El ID_AREA_ESTUDIO no existe');

--CODIGO DE MENSAJE DE LA TABLA TAB_PROGRAMAS_ESTUDIO (12000,12999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(12001,'ERROR INSERTAR, El nombre del programa de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(12002,'ERROR INSERTAR, La descripcion del programa de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(12003,'ERROR INSERTAR, El tipo de formacion del programa de estudio debe tener mas de 2 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(12004,'ERROR INSERTAR, El ID_AREA_ESTUDIO debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(12005,'ERROR INSERTAR, El ID_AREA_ESTUDIO no existe');
INSERT INTO TAB_MENSAJES VALUES(12006,'ERROR INSERTAR, El programa de estudio ya existe');
INSERT INTO TAB_MENSAJES VALUES(12000,'ERROR UPDATE, El ID_PROGRAMA_ESTUDIO no existe');

--CODIGO DE MENSAJE DE LA TABLA TAB_GRUPO_ESTUDIO (13000,13999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(13001,'ERROR INSERTAR, El nombre del grupo de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(13002,'ERROR INSERTAR, La descripcion del grupo de estudio debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(13003,'ERROR INSERTAR, La jornada del grupo de estudio debe tener mas de 2 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(13004,'ERROR INSERTAR, El ID_PROGRAMA_ESTUDIO debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(13005,'ERROR INSERTAR, El ID_PROGRAMA_ESTUDIO no existe');
INSERT INTO TAB_MENSAJES VALUES(13006,'ERROR INSERTAR, El grupo de estudio ya existe');
INSERT INTO TAB_MENSAJES VALUES(13007,'ERROR INSERTAR, El ID_GRUPO_ESTUDIO debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(13008,'ERROR INSERTAR, El ID_GRUPO_ESTUDIO ya existe');

--CODIGO DE MENSAJE DE LA TABLA TAB_ESTUDIANTE (14000,14999)-------------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(14001,'ERROR INSERTAR, El nombre del estudiante debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(14002,'ERROR INSERTAR, La direccion del estudiante debe tener mas de 3 caracteres y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(14003,'ERROR INSERTAR, El telefono del estudiante debe ser un numero celular valido');
INSERT INTO TAB_MENSAJES VALUES(14004,'ERROR INSERTAR, El telefono del estudiante debe ser valido');
INSERT INTO TAB_MENSAJES VALUES(14005,'ERROR INSERTAR, El email del estudiante debe ser valido');
INSERT INTO TAB_MENSAJES VALUES(14006,'ERROR INSERTAR, El ID_GRUPO_ESTUDIO debe ser mayor a 0 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(14007,'ERROR INSERTAR, El ID_GRUPO_ESTUDIO no existe');
INSERT INTO TAB_MENSAJES VALUES(14008,'ERROR INSERTAR, El ID_ESTUDIANTE debe ser mayor a 3 y no puede ser nulo');
INSERT INTO TAB_MENSAJES VALUES(14009,'ERROR INSERTAR, El ID_ESTUDIANTE ya existe en la tabla estudiante');


--CODIGO DE MENSAJES DE LA TABLA TAB_PREGUNTA_TEMAS  (15000,15999)--------------------------------------------------------------------------------------
INSERT INTO TAB_MENSAJES VALUES(15001,'ERROR INSERTAR, El ID_PREGUNTA debe existir en la tabla pregunta');
INSERT INTO TAB_MENSAJES VALUES(15002,'ERROR INSERTAR, El ID_TEMA_AREA debe existir en la tabla tema_area');
INSERT INTO TAB_MENSAJES VALUES(15003,'ERROR INSERTAR, El ID_PREGUNTA y el ID_TEMA_AREA ya existen en la tabla pregunta_temas ES DECIR EL REGISTRO YA EXISTE');
INSERT INTO TAB_MENSAJES VALUES(15004,'ERROR ACTUALIZAR, El ID_PREGUNTA y el ID_TEMA_AREA NO EXISTEN en la tabla pregunta_temas ES DECIR EL REGISTRO NO EXISTE');






