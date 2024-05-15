-- FUNCIONES DE TRANSACCIONES Y INSERCION DE DATOS PARA LA TABLA TAB_DPTOS------------------------------------------------------------------------------------------------------------
-- --FUNCION PARA VALIDAR LOS DATOS A INSERTAR EN LA TABLA DPTOS
CREATE OR REPLACE FUNCTION FUN_VALIDAR_DATOS_DPTOS(wnom_dpto TAB_DPTOS.nom_dpto%TYPE) RETURNS INTEGER AS
$$
    DECLARE
        RETORNO INTEGER;
    BEGIN
        --VALIDACION DEL PARAMETRO wnom_dpto TIENE QUE SER MAYOR A 3 CARACTERES Y NO NULO
        IF LENGTH(wnom_dpto) < 2 OR wnom_dpto IS NULL THEN
            RETORNO := 4001;
            RETURN RETORNO;
        --EVALUAR SI EL DPTO YA EXISTE
        --CONVERTIR EL NOMBRE A MAYUSCULAS
        ELSEIF EXISTS(SELECT * FROM TAB_DPTOS WHERE UPPER(NOM_DPTO) = UPPER(wnom_dpto)) THEN
            RETORNO := 4002;
            RETURN RETORNO;
        ELSE
            RETORNO := 200;
            RETURN RETORNO;
        END IF;        
    END;
$$
LANGUAGE plpgsql;

--FUNCION PARA INSERTAR DATOS EN LA TABLA DPTOS
CREATE OR REPLACE FUNCTION FUN_INSERTAR_DPTOS(wnom_dpto TAB_DPTOS.nom_dpto%TYPE) RETURNS INTEGER AS
$$
    DECLARE
        RETORNO INTEGER;
        VALIDACION INTEGER;
		ULTIMOID INTEGER;
    BEGIN
        --VALIDAR LOS DATOS A INSERTAR
        VALIDACION := FUN_VALIDAR_DATOS_DPTOS(wnom_dpto);
        --SI LA VALIDACION ES CORRECTA INSERTAR LOS DATOS
        IF VALIDACION = 200 THEN
            --GENERAR ID AUTOINCREMENTABLE USANDO LA FUNCION funcion_Retorna_ultmoid
            SELECT INTO ULTIMOID funcion_Retorna_ultmoid('TAB_DPTOS','id_dpto');
            --CONVERTIR EL NOMBRE A MAYUSCULAS
            wnom_dpto := UPPER(wnom_dpto);
            --INSERTAR DATOS EN LA TABLA DPTOS
            INSERT INTO TAB_DPTOS VALUES(ULTIMOID,wnom_dpto);
            IF FOUND THEN
                RETORNO := 200;
                RETURN RETORNO;
            ELSE
                RETORNO := 1;
                RETURN RETORNO;
            END IF;
        ELSE
            RETURN VALIDACION;
        END IF;
    END;
$$
LANGUAGE plpgsql;