DELIMITER //

CREATE OR REPLACE PROCEDURE liquidacion_ajustes ( in legajo INT, cliente_id INT, proyecto_id INT , anio INT, mes INT, OUT salida VARCHAR(50))
BEGIN
	DECLARE cantidad INT DEFAULT 0;  
	
	SELECT COUNT(*) INTO cantidad  
	FROM liquidacion_mensual l  
	WHERE l.legajo = legajo  AND l.cliente_id = cliente_id AND l.proyecto_id = proyecto_id AND l.anio_liquidacion = anio AND l.mes_liquidacion = mes;

  if cantidad = 0 then
  	CALL liquidacion_m (legajo,cliente_id,proyecto_id,anio ,mes,@salida);
  ELSE 
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
	WHERE e.legajo = legajo  AND c.id = c.id AND p.proyecto_id = p.proyecto_id AND r.anio = r.anio AND r.mes = r.mes AND r.liquidado IS NULL;

  
  	UPDATE rendicion r SET r.LIQUIDADO = 'R'
	WHERE r.anio = anio AND 
			r.mes = mes AND  
			r.liquidado IS NULL; 
  
  END if;
  
SET salida = 'ok';
 
 END;
//

DELIMITER ;

