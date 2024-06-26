--FUNCIONES TRANSACCIONALES Y DE INGRESO DE DATOS PARA LA TABLA TAB_AREA_ESTUDIO----------------------------------------------------------------------------------------------------------
--FUNCION PARA VALIDAR LOS DATOS A INSERTAR EN LA TABLA TAB_AREA_ESTUDIO
CREATE OR REPLACE FUNCTION FUN_VALIDAR_DATOS_AREA_ESTUDIO(wNOM_AREA_ESTUDIO TAB_AREA_ESTUDIO.NOM_AREA_ESTUDIO%TYPE,
                            wDESCRIPCION_AREA_ESTUDIO TAB_AREA_ESTUDIO.DESCRIPCION_AREA_ESTUDIO%TYPE,
                            wID_SEDE TAB_AREA_ESTUDIO.ID_SEDE%TYPE) RETURNS INTEGER AS
$$
    DECLARE
        RETORNO INTEGER;
    BEGIN
        --VALIDACION DEL PARAMETRO NOM_AREA_ESTUDIO TIENE QUE SER MAYOR A 3 CARACTERES Y NO NULO
        IF LENGTH(wNOM_AREA_ESTUDIO) < 3 OR wNOM_AREA_ESTUDIO IS NULL THEN
            RETORNO := 11001;
            RETURN RETORNO;
        --VALIDACION DEL PARAMETRO DESCRIPCION_AREA_ESTUDIO TIENE QUE SER MAYOR A 3 CARACTERES Y NO NULO
        ELSIF LENGTH(wDESCRIPCION_AREA_ESTUDIO) < 3 OR wDESCRIPCION_AREA_ESTUDIO IS NULL THEN
            RETORNO := 11002;
            RETURN RETORNO;
        --VALIDACION DEL PARAMETRO ID_SEDE TIENE QUE SER MAYOR A 0 Y NO NULO
        ELSIF wID_SEDE <= 0 OR wID_SEDE IS NULL THEN
            RETORNO := 11003;
            RETURN RETORNO;
        --VALIDACION DEL PARAMETRO ID_SEDE EXISTA
        ELSIF NOT EXISTS(SELECT 1 FROM TAB_SEDE WHERE ID_SEDE = wID_SEDE) THEN
            RETORNO := 11004;
            RETURN RETORNO;
        --VALIDAR SI EL AREA DE ESTUDIO YA EXISTE
        --CONVERTIR EL NOMBRE DEL AREA DE ESTUDIO A MAYUSCULAS
        ELSEIF EXISTS(SELECT 1 FROM TAB_AREA_ESTUDIO WHERE UPPER(NOM_AREA_ESTUDIO) = UPPER(wNOM_AREA_ESTUDIO)) THEN
            RETORNO := 11005;
            RETURN RETORNO;
        ELSE
            RETORNO := 200;
            RETURN RETORNO;
        END IF;
    END;
$$
LANGUAGE plpgsql;


--FUNCION PARA INSERTAR UN AREA DE ESTUDIO
CREATE OR REPLACE FUNCTION FUN_INSERTAR_AREA_ESTUDIO(wNOM_AREA_ESTUDIO TAB_AREA_ESTUDIO.NOM_AREA_ESTUDIO%TYPE,
                            wDESCRIPCION_AREA_ESTUDIO TAB_AREA_ESTUDIO.DESCRIPCION_AREA_ESTUDIO%TYPE,
                            wID_SEDE TAB_AREA_ESTUDIO.ID_SEDE%TYPE) RETURNS INTEGER AS
$$
    DECLARE
        RETORNO INTEGER;
        wVALIDAR INTEGER;
        ULTIMOID INTEGER;
    BEGIN
        --VALIDACION DE LOS DATOS A INSERTAR
        wVALIDAR := FUN_VALIDAR_DATOS_AREA_ESTUDIO(wNOM_AREA_ESTUDIO,wDESCRIPCION_AREA_ESTUDIO,wID_SEDE);
        --SI LA VALIDACION ES CORRECTA SE INSERTA EL AREA DE ESTUDIO
        IF wVALIDAR = 200 THEN
            INSERT INTO TAB_AREA_ESTUDIO(NOM_AREA_ESTUDIO,DESCRIPCION_AREA_ESTUDIO,ID_SEDE) VALUES(wNOM_AREA_ESTUDIO,wDESCRIPCION_AREA_ESTUDIO,wID_SEDE) RETURNING ID_AREA_ESTUDIO INTO ULTIMOID;
            RETORNO := ULTIMOID;
            RETURN RETORNO;
        ELSE
            RETURN wVALIDAR;
        END IF;
    END;
$$
LANGUAGE plpgsql;


--FUNCION PARA INSERTAR UN AREA DE ESTUDIO Y QUE RETORNE UN JSON CON EL RESULTADO, MENSAJE Y ID DEL AREA DE ESTUDIO
CREATE OR REPLACE FUNCTION FUN_INSERTAR_AREA_ESTUDIO_JSON(wNOM_AREA_ESTUDIO TAB_AREA_ESTUDIO.NOM_AREA_ESTUDIO%TYPE,
                            wDESCRIPCION_AREA_ESTUDIO TAB_AREA_ESTUDIO.DESCRIPCION_AREA_ESTUDIO%TYPE,
                            wID_SEDE TAB_AREA_ESTUDIO.ID_SEDE%TYPE) RETURNS JSON AS
$$
    DECLARE
        RETORNO JSON;
        wVALIDAR INTEGER;
        ULTIMOID INTEGER;
    BEGIN
        --VALIDACION DE LOS DATOS A INSERTAR
        wVALIDAR := FUN_VALIDAR_DATOS_AREA_ESTUDIO(wNOM_AREA_ESTUDIO, wDESCRIPCION_AREA_ESTUDIO, wID_SEDE);
        IF wVALIDAR <> 200 THEN
            RETORNO := json_build_object('CODIGO',wVALIDAR,'MENSAJE',(SELECT desc_mensaje FROM TAB_MENSAJES WHERE id_mensaje = wVALIDAR));
            RETURN RETORNO;
        ELSE
            --INSERCION DE LOS DATOS
            --OBTENER EL ULTIMO ID DE LA TABLA AREA_ESTUDIO
            SELECT INTO ULTIMOID funcion_Retorna_ultmoid('TAB_AREA_ESTUDIO','ID_AREA_ESTUDIO');
            INSERT INTO TAB_AREA_ESTUDIO(ID_AREA_ESTUDIO, NOM_AREA_ESTUDIO, DESCRIPCION_AREA_ESTUDIO, ID_SEDE)
            VALUES(ULTIMOID, wNOM_AREA_ESTUDIO, wDESCRIPCION_AREA_ESTUDIO, wID_SEDE);
            --VERIFICAR SI SE REALIZO LA INSERCION
            IF FOUND THEN
                RETORNO := json_build_object('CODIGO',200,'MENSAJE',(SELECT desc_mensaje FROM TAB_MENSAJES WHERE id_mensaje = 200),'DATOS',json_build_object('ID_AREA_ESTUDIO',ULTIMOID));
                RETURN RETORNO;
            ELSE
                RETORNO := json_build_object('CODIGO', 1,'MENSAJE',(SELECT desc_mensaje FROM TAB_MENSAJES WHERE id_mensaje = 1)); 
                RETURN RETORNO;
            END IF;
        END IF;
    END;
$$
LANGUAGE plpgsql;

