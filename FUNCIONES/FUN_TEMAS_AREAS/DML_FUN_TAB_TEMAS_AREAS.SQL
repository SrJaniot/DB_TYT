--DML PARA LA INSERCION DE LOS REGISTROS DE LA TABLA TAB_TEMAS_AREAS ------------------------------------------------------------------------------------------------------------------------------------
--ESTOS TEMAS SON BASADOS EN LAS INFOGRAFIAS DEL ICFES PARA PRUEBAS TYT
-- SELECT * FROM TAB_TEMAS_AREAS;

-- FUNCIONES DE INSERCION LA TABLA TAB_TEMAS_AREAS ------------------------------------------------------------------------------------------------------------
-- RAZONAMIENTO CUANTITATIVO (TEMAS EL ID DE LA AREA ES 1)--------------------------------------------------------------------------------------------------------------
    --ALGEBRA Y CALCULO
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Fracciones, razones, números con decimales y porcentajes.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ALGEBRA Y CALCULO.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Uso de las propiedades básicas de las operaciones aritméticas.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ALGEBRA Y CALCULO.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Relaciones lineales y afines.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ALGEBRA Y CALCULO.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Razones de cambio.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ALGEBRA Y CALCULO.');
    --GEOMETRIA
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Triángulos, círculos,paralelogramos, esferas,paralelepípedos rectos,cilindros y sus medidas.','Estos temas hacen parte del grupo de razonamiento cuantitativo en GEOMETRIA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Relaciones de paralelismo y ortogonalidad entre rectas','Estos temas hacen parte del grupo de razonamiento cuantitativo en GEOMETRIA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Desigualdad triangular.','Estos temas hacen parte del grupo de razonamiento cuantitativo en GEOMETRIA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Sistema de coordenadas cartesianas.','Estos temas hacen parte del grupo de razonamiento cuantitativo en GEOMETRIA.');
    --ESTADISTICA
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Tipos de representación de datos (tablas y gráficos).','Estos temas hacen parte del grupo de razonamiento cuantitativo en ESTADISTICA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Intersección, unión y contenencia de conjuntos.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ESTADISTICA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Azar, probabilidad, promedio y rango estadístico.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ESTADISTICA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(1,'Población/muestra, nociones de inferencia muestral, error de estimación.','Estos temas hacen parte del grupo de razonamiento cuantitativo en ESTADISTICA.');

-- LECTURA CRITICA (TEMAS EL ID DE LA AREA ES 2)------------------------------------------------------------------------------------------------------------
    --COMPRESION DE TEXTOS DISCONTINUOS
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de infografías','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS DISCONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de cómics','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS DISCONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de tablas','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS DISCONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de gráficos','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS DISCONTINUOS.');
    --COMPRESION DE TEXTOS CONTINUOS
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de  ensayos','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS CONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de  novelas','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS CONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de  artículos de prensa','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS CONTINUOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(2,'Identificación de  textos científicos','Estos temas hacen parte del grupo de lectura crítica en COMPRESION DE TEXTOS CONTINUOS.');

-- COMPETENCIAS CIUDADANAS (TEMAS EL ID DE LA AREA ES 3)------------------------------------------------------------------------------------------------------------
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Derechos humanos','Estos temas hacen parte del grupo de competencias ciudadanas en DERECHOS HUMANOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Democracia','Estos temas hacen parte del grupo de competencias ciudadanas en DEMOCRACIA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Participación ciudadana','Estos temas hacen parte del grupo de competencias ciudadanas en PARTICIPACION CIUDADANA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Cultura política','Estos temas hacen parte del grupo de competencias ciudadanas en CULTURA POLITICA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Convivencia','Estos temas hacen parte del grupo de competencias ciudadanas en CONVIVENCIA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Resolución de conflictos','Estos temas hacen parte del grupo de competencias ciudadanas en RESOLUCION DE CONFLICTOS.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Cultura ciudadana','Estos temas hacen parte del grupo de competencias ciudadanas en CULTURA CIUDADANA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Participación política','Estos temas hacen parte del grupo de competencias ciudadanas en PARTICIPACION POLITICA.');
SELECT FUN_INSERTAR_TEMAS_AREAS(3,'Cultura democrática','Estos temas hacen parte del grupo de competencias ciudadanas en CULTURA DEMOCRATICA.');


-- INGLES (TEMAS EL ID DE LA AREA ES 4)------------------------------------------------------------------------------------------------------------
    --PARTE 1
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Vocabulario básico','Estos temas hacen parte del grupo de ingles en PARTE 1.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Relacionamiento de palabras','Estos temas hacen parte del grupo de ingles en PARTE 1.');
    --PARTE 2
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Avisos informativos','Estos temas hacen parte del grupo de ingles en PARTE 2.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Cartas generales','Estos temas hacen parte del grupo de ingles en PARTE 2.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Descripciones ','Estos temas hacen parte del grupo de ingles en PARTE 2.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Ubicaciones en diferentes lugares','Estos temas hacen parte del grupo de ingles en PARTE 2.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Situaciones cotidianas','Estos temas hacen parte del grupo de ingles en PARTE 2.');
    --PARTE 3
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Conversaciones cortas','Estos temas hacen parte del grupo de ingles en PARTE 3.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Ubicación espacial','Estos temas hacen parte del grupo de ingles en PARTE 3.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Preguntas y respuestas','Estos temas hacen parte del grupo de ingles en PARTE 3.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Enunciados','Estos temas hacen parte del grupo de ingles en PARTE 3.');
    --PARTE 4
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Texto con espacios','Estos temas hacen parte del grupo de ingles en PARTE 4.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Estructura gramatical','Estos temas hacen parte del grupo de ingles en PARTE 4.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Tiempo verbales','Estos temas hacen parte del grupo de ingles en PARTE 4.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Preposiciones','Estos temas hacen parte del grupo de ingles en PARTE 4.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Articulos','Estos temas hacen parte del grupo de ingles en PARTE 4.');
    --PARTE 5
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Comprensión de lectura avanzada','Estos temas hacen parte del grupo de ingles en PARTE 5.');
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'WH questions','Estos temas hacen parte del grupo de ingles en PARTE 5.');
    --PARTE 6
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Textos Literarios','Estos temas hacen parte del grupo de ingles en PARTE 6.');
    --PARTE 7
SELECT FUN_INSERTAR_TEMAS_AREAS(4,'Textos cientificos','Estos temas hacen parte del grupo de ingles en PARTE 7.');
    