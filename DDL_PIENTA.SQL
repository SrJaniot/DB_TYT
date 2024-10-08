--DDL PIENTA TABLAS MAESTRAS PARA LA CREACION DEL SISTEMA ICFES TYT
--CREADO POR EQUIPO PIENTA:

--DROP DE TABLAS----------------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS TAB_GRUPO_MEJORAMIENTO_AREA;
DROP TABLE IF EXISTS TAB_PRUEBA_AREAS;
DROP TABLE IF EXISTS TAB_PRUEBA_RESPUESTAS_ESTUDIANTE;
DROP TABLE IF EXISTS TAB_PRUEBA_ESTUDIANTE;
DROP TABLE IF EXISTS TAB_PRUEBA_PREGUNTAS;
DROP TABLE IF EXISTS TAB_PREGUNTA_TEMAS;
DROP TABLE IF EXISTS TAB_PUNTAJE_PRUEBA_AREA;
DROP TABLE IF EXISTS TAB_PUNTAJE_PRUEBA_GENERAL;

DROP TABLE IF EXISTS TAB_TUTOR;
DROP TABLE IF EXISTS TAB_WINRATE_PREGUNTA;
DROP TABLE IF EXISTS TAB_ESTUDIANTE;
DROP TABLE IF EXISTS TAB_GRUPO_ESTUDIO;
DROP TABLE IF EXISTS TAB_PROGRAMA_ESTUDIO;
DROP TABLE IF EXISTS TAB_AREA_ESTUDIO;
DROP TABLE IF EXISTS TAB_SALON;
DROP TABLE IF EXISTS TAB_SEDE;
DROP TABLE IF EXISTS TAB_OPCIONES_PREGUNTA;
DROP TABLE IF EXISTS TAB_PREGUNTA;
DROP TABLE IF EXISTS TAB_TEMAS_AREAS;
DROP TABLE IF EXISTS TAB_INSTITUCION;
DROP TABLE IF EXISTS TAB_CIUDADES;

DROP TABLE IF EXISTS TAB_DPTOS;
DROP TABLE IF EXISTS TAB_PRUEBA;
DROP TABLE IF EXISTS TAB_CONTEXTO;
DROP TABLE IF EXISTS TAB_AREAS_EVALUAR;

DROP TABLE IF EXISTS TAB_MENSAJES;

--DROP DE FUNCIONES----------------------------------------------------------------------------------------------------------------
DROP FUNCTION IF EXISTS funcion_Retorna_ultmoid;

--CREACION DE TABLAS DEL SISTEMA ------------------------------------------------------------------------------------------------
CREATE TABLE TAB_MENSAJES
(
 id_mensaje		  INTEGER		NOT NULL,
 desc_mensaje		VARCHAR		NOT NULL,
 PRIMARY KEY(id_mensaje)
);


--CREACION DE TABLAS INDEPENDIENTES--------------------------------------------------------------------------------------------



--TABLA AREAS A EVALUAR
CREATE TABLE TAB_AREAS_EVALUAR
(
  ID_AREA_EVALUAR		        INTEGER		    NOT NULL,
  NOM_AREA_EVALUAR	        VARCHAR		    NOT NULL,
  DESCRIPCION_AREA_EVALUAR	VARCHAR		    NOT NULL,
  val_ponderacion           DECIMAL(2,0)	NOT NULL DEFAULT 1,
  PRIMARY KEY(ID_AREA_EVALUAR)
);

--TABLA CONTEXTO
CREATE TABLE TAB_CONTEXTO
(
  ID_CONTEXTO        INTEGER    NOT NULL,
  NOM_CONTEXTO       VARCHAR    NOT NULL,
  DESC_CONTEXTO      TEXT       NOT NULL,
  LINK_MEDIA         VARCHAR,
  AUTOR_CONTEXTO     VARCHAR,
  TIPO_CONTEXTO      VARCHAR    NOT NULL, -- 'TEXTO' o 'IMAGEN'
  PRIMARY KEY(ID_CONTEXTO)
);

--TABLA DEPARTAMENTOS
CREATE TABLE IF NOT EXISTS TAB_DPTOS
(
 id_dpto		CHAR(2)		NOT NULL,
 nom_dpto		VARCHAR		NOT NULL,
 PRIMARY KEY(id_dpto)
);

-- TABLA PRUEBA 
CREATE TABLE TAB_PRUEBA
(
  ID_PRUEBA		        INTEGER		NOT NULL,
  NOM_PRUEBA		    VARCHAR		NOT NULL,
  DESCRIPCION_PRUEBA	TEXT		NOT NULL,
  TIPO_PRUEBA        VARCHAR		NOT NULL, -- 'NORMAL', 'MEJORAMIENTO'
  FECHA_PRUEBA_INICIO		TIMESTAMP		NOT NULL,
  FECHA_PRUEBA_FIN		TIMESTAMP		NOT NULL,
  DURACION_PRUEBA_MINUTOS	INTEGER		NOT NULL,
  PRUEBA_ACTIVA		BOOLEAN 		NOT NULL DEFAULT TRUE,
  NUMERO_PREGUNTAS	INTEGER		NOT NULL,
  PRIMARY KEY(ID_PRUEBA)
);

-- TABLAS DE DEPENDIENTES--------------------------------------------------------------------------------------------

--TABLA CIUDADES
CREATE TABLE IF NOT EXISTS TAB_CIUDADES
(
  id_dpto		CHAR(2)		NOT NULL,
  id_ciudad		CHAR(5)		NOT NULL,
  nom_ciudad		VARCHAR		NOT NULL,
  PRIMARY KEY(id_ciudad),
  FOREIGN KEY(id_dpto)	REFERENCES TAB_DPTOS(id_dpto)
);

-- TABLA INSTITUCION
CREATE TABLE TAB_INSTITUCION
(
  ID_INSTITUCION	INTEGER		NOT NULL,
  NOM_INSTITUCION	VARCHAR		NOT NULL,
  DIR_INSTITUCION	VARCHAR		NOT NULL,
  NOM_REPRESENTANTE	VARCHAR		NOT NULL,
  TEL_INSTITUCION	VARCHAR		NOT NULL,
  EMAIL_INSTITUCION	VARCHAR		NOT NULL,
  id_ciudad		CHAR(5)		NOT NULL,
  PRIMARY KEY(ID_INSTITUCION),
  FOREIGN KEY(id_ciudad) REFERENCES TAB_CIUDADES(id_ciudad)
);

--TABLA TEMAS_AREAS
CREATE TABLE TAB_TEMAS_AREAS
(
  ID_TEMA_AREA		INTEGER		NOT NULL,
  ID_AREA_EVALUAR	INTEGER		NOT NULL,
  NOM_TEMA_AREA		VARCHAR		NOT NULL,
  DESCRIPCION_TEMA_AREA	TEXT		NOT NULL,
  PRIMARY KEY(ID_TEMA_AREA),
  FOREIGN KEY(ID_AREA_EVALUAR) REFERENCES TAB_AREAS_EVALUAR(ID_AREA_EVALUAR)
);

--TABLA PREGUNTA
-- TABLA PREGUNTA
CREATE TABLE TAB_PREGUNTA
(
  ID_PREGUNTA             INTEGER        NOT NULL,
  ID_CONTEXTO             INTEGER        NOT NULL,
  ENUNCIADO_PREGUNTA      TEXT,               -- PUEDE SER IMAGEN O TEXTO POR ESO NOT NULL NO APLICA
  TIPO_PREGUNTA           DECIMAL(1,0)   NOT NULL,   -- 1:OPCION MULTIPLE UNICA RESPUESTA, 2:OPCION MULTIPLE MULTIPLE RESPUESTA, 3:VERDADERO O FALSO, 4:ENSAYO
  PUNTAJE_PREGUNTA        DECIMAL(3,0)   NOT NULL,
  AUTOR_PREGUNTA          VARCHAR        NOT NULL,
  IMAGEN_PREGUNTA         VARCHAR,           -- PUEDE SER IMAGEN O TEXTO POR ESO NOT NULL NO APLICA
  TIPO_PREGUNTA_CONTENIDO VARCHAR        NOT NULL, -- 'TEXTO' o 'IMAGEN'
  LAYOUT_PREGUNTA         VARCHAR        NOT NULL, -- 'DEFAULT', 'DERECHA_IZQUIERDA', 'OTRO_LAYOUT'
  PRIMARY KEY(ID_PREGUNTA),
  FOREIGN KEY(ID_CONTEXTO) REFERENCES TAB_CONTEXTO(ID_CONTEXTO)
);

--TABLA_OPCIONES_PREGUNTA
CREATE TABLE TAB_OPCIONES_PREGUNTA
(
  ID_OPCION       INTEGER        NOT NULL,
  ID_PREGUNTA     INTEGER        NOT NULL,
  TEXTO_OPCION    TEXT,            -- PUEDE SER IMAGEN O TEXTO POR ESO NOT NULL NO APLICA
  ES_CORRECTA     BOOLEAN        NOT NULL,
  IMAGEN_OPCION   VARCHAR,           -- PUEDE SER IMAGEN O TEXTO POR ESO NOT NULL NO APLICA
  TIPO_OPCION     VARCHAR        NOT NULL, -- 'TEXTO' o 'IMAGEN'
  PRIMARY KEY(ID_OPCION),
  FOREIGN KEY(ID_PREGUNTA) REFERENCES TAB_PREGUNTA(ID_PREGUNTA)
);

--TABLA SEDES     EJEMPLO CSET
CREATE TABLE TAB_SEDE
(
  ID_SEDE		INTEGER		NOT NULL,
  ID_INSTITUCION	INTEGER		NOT NULL,
  NOM_SEDE		VARCHAR		NOT NULL,
  DIR_SEDE		VARCHAR		NOT NULL,
  TEL_SEDE		VARCHAR		NOT NULL,
  EMAIL_SEDE	VARCHAR		NOT NULL,
  PRIMARY KEY(ID_SEDE),
  FOREIGN KEY(ID_INSTITUCION) REFERENCES TAB_INSTITUCION(ID_INSTITUCION)
);
--TABLA AREA_ESTUDIO   EJEMPLO RED SISTEMAS
CREATE TABLE TAB_AREA_ESTUDIO
(
  ID_AREA_ESTUDIO	        INTEGER		NOT NULL,
  ID_SEDE		            INTEGER		NOT NULL,
  NOM_AREA_ESTUDIO	        VARCHAR		NOT NULL,
  DESCRIPCION_AREA_ESTUDIO	TEXT		NOT NULL,
  PRIMARY KEY(ID_AREA_ESTUDIO),
  FOREIGN KEY(ID_SEDE) REFERENCES TAB_SEDE(ID_SEDE)
);
--TABLA PROGRAMA_ESTUDIO   EJEMPLO TECNOLOGIA EN ADSO
CREATE TABLE TAB_PROGRAMA_ESTUDIO
(
  ID_PROGRAMA_ESTUDIO	        INTEGER		NOT NULL,
  ID_AREA_ESTUDIO		        INTEGER		NOT NULL,
  NOM_PROGRAMA_ESTUDIO	        VARCHAR		NOT NULL,
  DESCRIPCION_PROGRAMA_ESTUDIO	TEXT		NOT NULL,
  TIPO_FORMACION_PROGRAMA	    VARCHAR		NOT NULL,   --TECNICO, TECNOLOGO, PROFESIONAL
  PRIMARY KEY(ID_PROGRAMA_ESTUDIO),
  FOREIGN KEY(ID_AREA_ESTUDIO) REFERENCES TAB_AREA_ESTUDIO(ID_AREA_ESTUDIO)
);
--TABLA GRUPO_ESTUDIO   EJEMPLO GRUPO 2560215
CREATE TABLE TAB_GRUPO_ESTUDIO
(
  ID_GRUPO_ESTUDIO	            INTEGER		NOT NULL,
  ID_PROGRAMA_ESTUDIO	          INTEGER		NOT NULL,
  NOM_GRUPO_ESTUDIO	            VARCHAR		NOT NULL,
  JORNADA_GRUPO_ESTUDIO	        VARCHAR		NOT NULL,
  DESCRIPCION_GRUPO_ESTUDIO	    TEXT		NOT NULL,
  PRIMARY KEY(ID_GRUPO_ESTUDIO),
  FOREIGN KEY(ID_PROGRAMA_ESTUDIO) REFERENCES TAB_PROGRAMA_ESTUDIO(ID_PROGRAMA_ESTUDIO)
);
--TABLA ESTUDIANTE   EJEMPLO PEPITO PEREZ
CREATE TABLE TAB_ESTUDIANTE
(
  ID_ESTUDIANTE		VARCHAR		NOT NULL,
  ID_GRUPO_ESTUDIO	INTEGER		NOT NULL,
  NOM_ESTUDIANTE	VARCHAR		NOT NULL,
  DIR_ESTUDIANTE	VARCHAR		NOT NULL,
  TEL_ESTUDIANTE	VARCHAR		NOT NULL,
  EMAIL_ESTUDIANTE	VARCHAR		NOT NULL,
  TIPO_DOCUMENTO	VARCHAR		NOT NULL,
  PRIMARY KEY(ID_ESTUDIANTE),
  FOREIGN KEY(ID_GRUPO_ESTUDIO) REFERENCES TAB_GRUPO_ESTUDIO(ID_GRUPO_ESTUDIO)
);
--TABLA WINRATE_PREGUNTA
CREATE TABLE TAB_WINRATE_PREGUNTA
(
  ID_PREGUNTA		INTEGER		NOT NULL,
  WINRATE_PREGUNTA	DECIMAL(5,2)	NOT NULL,
  PRIMARY KEY(ID_PREGUNTA),
  FOREIGN KEY(ID_PREGUNTA) REFERENCES TAB_PREGUNTA(ID_PREGUNTA)
);
--TABLA TUTOR
CREATE TABLE TAB_TUTOR
(
  ID_TUTOR		INTEGER		NOT NULL,
  ID_AREA_EVALUAR	INTEGER		NOT NULL,
  NOM_TUTOR		VARCHAR		NOT NULL,
  APELLIDO_TUTOR	VARCHAR		NOT NULL,
  DIR_TUTOR		VARCHAR		NOT NULL,
  TEL_TUTOR		VARCHAR		NOT NULL,
  EMAIL_TUTOR	VARCHAR		NOT NULL,
  PRIMARY KEY(ID_TUTOR),
  FOREIGN KEY(ID_AREA_EVALUAR) REFERENCES TAB_AREAS_EVALUAR(ID_AREA_EVALUAR)
);
--TABLA SALONE
CREATE TABLE TAB_SALON
(
  ID_SALON		INTEGER		NOT NULL,
  ID_SEDE		INTEGER		NOT NULL,
  NOM_SALON		VARCHAR		NOT NULL,
  CAPACIDAD_SALON	INTEGER		NOT NULL,
  PRIMARY KEY(ID_SALON),
  FOREIGN KEY(ID_SEDE) REFERENCES TAB_SEDE(ID_SEDE)
);



--TABLAS DE RELACION------------------------------------------------------------------------------------------------------------
-- TABLA PREGUNTA_TEMAS
CREATE TABLE TAB_PREGUNTA_TEMAS
(
  ID_PREGUNTA		INTEGER		NOT NULL,
  ID_TEMA_AREA	INTEGER		NOT NULL,
  PRIMARY KEY(ID_PREGUNTA, ID_TEMA_AREA),
  FOREIGN KEY(ID_PREGUNTA) REFERENCES TAB_PREGUNTA(ID_PREGUNTA),
  FOREIGN KEY(ID_TEMA_AREA) REFERENCES TAB_TEMAS_AREAS(ID_TEMA_AREA)
);
--TABLA PRUEBA_PREGUNTAS
CREATE TABLE TAB_PRUEBA_PREGUNTAS
(
  ID_PRUEBA		INTEGER		NOT NULL,
  ID_PREGUNTA	INTEGER		NOT NULL,
  PRIMARY KEY(ID_PRUEBA, ID_PREGUNTA),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_PREGUNTA) REFERENCES TAB_PREGUNTA(ID_PREGUNTA)
);
--TABLA PRUEBA_ESTUDIANTE
CREATE TABLE TAB_PRUEBA_ESTUDIANTE
(
  ID_PRUEBA		INTEGER		NOT NULL,
  ID_ESTUDIANTE	VARCHAR		NOT NULL,
  FECHA_PRUEBA_INICIO_ESTUDIANTE	TIMESTAMP		,
  FECHA_PRUEBA_FIN_ESTUDIANTE	TIMESTAMP		,
  PUNTUACION_PRUEBA_ESTUDIANTE FLOAT,

  PRIMARY KEY(ID_PRUEBA, ID_ESTUDIANTE),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_ESTUDIANTE) REFERENCES TAB_ESTUDIANTE(ID_ESTUDIANTE)
);
--TABLA PRUEBA_RESPUESTAS_ESTUDIANTE
CREATE TABLE TAB_PRUEBA_RESPUESTAS_ESTUDIANTE
(
  ID_PRUEBA		            INTEGER		NOT NULL,
  ID_ESTUDIANTE	          VARCHAR		NOT NULL,
  ID_PREGUNTA	            INTEGER		NOT NULL,
  ID_RESPUESTA_ESTUDIANTE	INTEGER		NOT NULL, 
  PRIMARY KEY(ID_PRUEBA, ID_ESTUDIANTE, ID_PREGUNTA),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_ESTUDIANTE) REFERENCES TAB_ESTUDIANTE(ID_ESTUDIANTE),
  FOREIGN KEY(ID_RESPUESTA_ESTUDIANTE) REFERENCES TAB_OPCIONES_PREGUNTA(ID_OPCION),  
  FOREIGN KEY(ID_PREGUNTA) REFERENCES TAB_PREGUNTA(ID_PREGUNTA)
);
--TABLA PRUEBA_AREAS
CREATE TABLE TAB_PRUEBA_AREAS
(
  ID_PRUEBA		      INTEGER		NOT NULL,
  ID_AREA_EVALUAR	  INTEGER		NOT NULL,
  PRIMARY KEY(ID_PRUEBA, ID_AREA_EVALUAR),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_AREA_EVALUAR) REFERENCES TAB_AREAS_EVALUAR(ID_AREA_EVALUAR)
);
--TABLA GRUPO_MEJORAMIENTO_AREA
CREATE TABLE TAB_GRUPO_MEJORAMIENTO_AREA
(
  ID_GRUPO_MEJORAMIENTO	      INTEGER		NOT NULL,
  ID_AREA_EVALUAR	            INTEGER		NOT NULL,
  ID_TUTOR                    INTEGER		NOT NULL,
  ID_ESTUDIANTE               VARCHAR		NOT NULL,
  ID_SALON                    INTEGER		NOT NULL,
  PRIMARY KEY(ID_GRUPO_MEJORAMIENTO),
  FOREIGN KEY(ID_AREA_EVALUAR) REFERENCES TAB_AREAS_EVALUAR(ID_AREA_EVALUAR),
  FOREIGN KEY(ID_TUTOR) REFERENCES TAB_TUTOR(ID_TUTOR),
  FOREIGN KEY(ID_ESTUDIANTE) REFERENCES TAB_ESTUDIANTE(ID_ESTUDIANTE),
  FOREIGN KEY(ID_SALON) REFERENCES TAB_SALON(ID_SALON)
);
--TABLA PUNTAJE_PRUEBA_GENERAL
CREATE TABLE TAB_PUNTAJE_PRUEBA_GENERAL
(
  ID_PRUEBA		INTEGER		NOT NULL,
  ID_ESTUDIANTE	VARCHAR		NOT NULL,
  PUNTAJE_PRUEBA	DECIMAL(3,0)	NOT NULL,
  PRIMARY KEY(ID_PRUEBA, ID_ESTUDIANTE),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_ESTUDIANTE) REFERENCES TAB_ESTUDIANTE(ID_ESTUDIANTE)
);
--TABLA PUNTAJE_PRUEBA_AREA
CREATE TABLE TAB_PUNTAJE_PRUEBA_AREA
(
  ID_PRUEBA		INTEGER		NOT NULL,
  ID_ESTUDIANTE	VARCHAR		NOT NULL,
  ID_AREA_EVALUAR	INTEGER		NOT NULL,
  PUNTAJE_PRUEBA	DECIMAL(3,0)	NOT NULL,
  PRIMARY KEY(ID_PRUEBA, ID_ESTUDIANTE, ID_AREA_EVALUAR),
  FOREIGN KEY(ID_PRUEBA) REFERENCES TAB_PRUEBA(ID_PRUEBA),
  FOREIGN KEY(ID_ESTUDIANTE) REFERENCES TAB_ESTUDIANTE(ID_ESTUDIANTE),
  FOREIGN KEY(ID_AREA_EVALUAR) REFERENCES TAB_AREAS_EVALUAR(ID_AREA_EVALUAR)
);












-- FUNCION IMPORTANTES------------------------------------------------------------------------------------------------------------

--FUNCION IMPORTANTE QUE SE USARA EN TODO LADO: MI AUTO INCREMENTABLE ;)
--FUNCION PRYMARY KEY (CONSECUTIVO) para cualquier tabala solo poniendo el nombre de la 
--tabala en comillas y el atrivuto que hace referencia a la primary key en los parametros de la funcion
--SELECT funcion_Retorna_ultmoid('game','id_game');

CREATE OR REPLACE FUNCTION funcion_Retorna_ultmoid(wnom_tabla VARCHAR,wnom_columna_id VARCHAR)RETURNS INTEGER AS

$$ DECLARE ULTIMOID INTEGER;
	BEGIN
		  EXECUTE 'SELECT MAX  ('||wnom_columna_id||')  FROM ' || wnom_tabla INTO ULTIMOID ;
		
		--RAISE NOTICE '%',ULTIMOID;
		IF ULTIMOID IS NULL  THEN
			ULTIMOID=1;
			--RAISE NOTICE '%',ULTIMOID;
			RETURN ULTIMOID;	
		ELSE
		ULTIMOID=ULTIMOID+1;
		--RAISE NOTICE '%',ULTIMOID
		RETURN ULTIMOID;
		
		END IF ;
	END;

$$
LANGUAGE PLPGSQL;








