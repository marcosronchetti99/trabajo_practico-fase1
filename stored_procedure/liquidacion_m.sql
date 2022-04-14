DELIMITER //

CREATE OR REPLACE PROCEDURE liquidacion_m ( in legajo INT, cliente_id INT, proyecto_id INT , anio INT, mes INT, OUT salida VARCHAR(50))
begin
  INSERT INTO liquidacion_mensual (   
	cliente_id, 
	proyecto_id, 
	descripcion, 
	horas,
	anio_liquidacion, 
	mes_liquidacion,
	fecha_liquidacion,
	legajo
)
	SELECT c.id,p.proyecto_id,t.id, r.horas,r.anio,r.mes, now(),e.legajo FROM proyecto p 
	INNER JOIN cliente c ON p.cliente_id = c.id
	INNER JOIN tareas t ON p.proyecto_id = t.proyecto_id
	INNER JOIN empleado e ON t.legajo_id = e.legajo
	INNER JOIN rendicion r ON t.id = r.tarea_id
	WHERE e.legajo = legajo  AND c.id = c.id AND p.proyecto_id = p.proyecto_id AND r.anio = r.anio AND r.mes = r.mes AND r.Liquidado IS NULL;
	
	UPDATE rendicion r SET r.LIQUIDADO = 'L'
	WHERE r.anio = anio AND 
			r.mes = mes AND  
			r.liquidado IS NULL; 

 
SET salida = 'ok';
  /*SELECT COUNT(*) INTO param1 FROM t;*/
 END;
//

DELIMITER ;

DELETE FROM liquidacion_mensual 
SELECT * 
FROM liquidacion_mensual 
CALL liquidacion_m (12,2,2,2020,8,@SALIDA);

SELECT @SALIDA
