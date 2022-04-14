
--invocacion store_procedures liquidacion_m

DELETE FROM liquidacion_mensual 
SELECT * 
FROM liquidacion_mensual 
CALL liquidacion_m (12,2,2,2020,8,@SALIDA);

SELECT @SALIDA

--invocacion store_procedures liquidacion_ajustes 

DELETE FROM liquidacion_mensual 
SELECT * 
FROM liquidacion_mensual 
CALL liquidacion_ajustes (12,2,2,2020,8,@SALIDA);

SELECT @SALIDA 

