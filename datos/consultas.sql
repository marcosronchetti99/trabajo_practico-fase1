SELECT * FROM empleado e INNER JOIN tareas t ON e.legajo = t.legajo_id;
SELECT * FROM empleado e ,tareas t WHERE e.legajo = t.legajo_id; 

SELECT * FROM tareas INNER JOIN proyecto ON tareas.id = proyecto.proyecto_id;
SELECT tareas *, proyecto* FROM tareas,proyecto WHERE tareas.id = proyecto.proyecto_id;

SELECT * FROM proyecto p INNER JOIN cliente c ON p.id = cliente.id;
SELECT p.*, c.* FROM proyecto p,cliente c WHERE p:id = c.id;

SELECT * FROM cliente c INNER JOIN liquidacion_mensual l ON c.id = l.cliente_id;
SELECT  c.*,  l.* FROM cliente c, liquidacion_mensual l WHERE c.id = l.cliente_id;