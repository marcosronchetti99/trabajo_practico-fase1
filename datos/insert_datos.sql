INSERT INTO centro_costos (id_cc,cc_descripcion) VALUES (1, 'sector publico');
INSERT INTO centro_costos (id_cc,cc_descripcion) VALUES (2, 'sector privado');
INSERT INTO centro_costos (id_cc,cc_descripcion) VALUES (3, 'sector publico');
INSERT INTO centro_costos (id_cc,cc_descripcion) VALUES (4, 'sector privado');


INSERT INTO centro_facturacion (id_cf,cf_descripcion) VALUES (1, 'buenos aires ');
INSERT INTO centro_facturacion (id_cf,cf_descripcion) VALUES (2, 'rio negro');
INSERT INTO centro_facturacion (id_cf,cf_descripcion) VALUES (3, 'mendoza');
INSERT INTO centro_facturacion (id_cf,cf_descripcion) VALUES (4, 'salta');

INSERT INTO roles (id, descripcion_rol) VALUES (1,'Project Manager');
INSERT INTO roles (id, descripcion_rol) VALUES (2,'Desarrollador');
INSERT INTO roles (id, descripcion_rol) VALUES (3,'Tester');
INSERT INTO roles (id, descripcion_rol) VALUES (4,'Administrador');
INSERT INTO roles (id, descripcion_rol) VALUES (5,'Tester');

INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (1,'marcos','ronchetti',12,42021710);
INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (2,'juan','perez ',14,42021723);
INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (3,'tomas','miguel',16,420214374);
INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (4,'facu','folis',19,42021558);
INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (5,'lusia','flores',34,42045558);
INSERT INTO empleado (id,nombre,apellido,legajo,dni) VALUES (4,'mia','josefina',24,42341558);


INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (1,12);
INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (2,14);
INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (3,16);
INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (4,19);
INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (5,34);
INSERT INTO roles_empleados (id_rol,legajo_empleado) VALUES (6,24); 

INSERT INTO cliente (id,razon_social,id_cc,id_cf) VALUES (1,'coca_cola',1,2);
INSERT INTO cliente (id,razon_social,id_cc,id_cf) VALUES (2,'smartwater',2,1);
INSERT INTO cliente (id,razon_social,id_cc,id_cf) VALUES (3,'samsung',3,3);
INSERT INTO cliente (id,razon_social,id_cc,id_cf) VALUES (4,'astro',4,4);

DELETE FROM proyecto; 
INSERT INTO proyecto (proyecto_id,descripcion,cliente_id,estado) VALUES (1,'actualizacion',1,'T');
INSERT INTO proyecto (proyecto_id,descripcion,cliente_id,estado) VALUES (2,'reparacion',2,'I');
INSERT INTO proyecto (proyecto_id,descripcion,cliente_id,estado) VALUES (3,'eliminado',1,'P');
INSERT INTO proyecto (proyecto_id,descripcion,cliente_id,estado) VALUES (4,'reparacion',3,'I');
INSERT INTO proyecto (proyecto_id,descripcion,cliente_id,estado) VALUES (5,'reparacion',4,'t');

INSERT INTO tareas (id,descripcion,legajo_id,estado,proyecto_id,fecha_inicio,fecha_final) 
VALUES (1,'inicio de proyecto',12,'T',2,'1999-07-02','1999-10-23');

INSERT INTO tareas (id,descripcion,legajo_id,estado,proyecto_id,fecha_inicio,fecha_final) 
VALUES (2,'final de proyecto',16,'F',3,'2015-08-10','2015-10-10');

INSERT INTO tareas (id,descripcion,legajo_id,estado,proyecto_id,fecha_inicio,fecha_final) 
VALUES (3,'final de proyecto',19,'F',4,'2015-07-10','2015-19-10');

INSERT INTO tareas (id,descripcion,legajo_id,estado,proyecto_id,fecha_inicio,fecha_final) 
VALUES (4,'inicio de de proyecto',34,'T',5,'2016-08-8','2017-10-10');


INSERT INTO rendicion (id,horas,tipo_rendicion,tarea_id) VALUES (1,8,'H',1);
INSERT INTO rendicion (id,horas,tipo_rendicion,tarea_id) VALUES (2,10,'s',2);
INSERT INTO rendicion (id,horas,tipo_rendicion,tarea_id) VALUES (3,6,'H',3);
INSERT INTO rendicion (id,horas,tipo_rendicion,tarea_id) VALUES (4,3,'s',4);


INSERT into tarea_rendicion (id_tarea,id_rendicion) VALUES (1,2);
INSERT into tarea_rendicion (id_tarea,id_rendicion) VALUES (2,1);
INSERT into tarea_rendicion (id_tarea,id_rendicion) VALUES (3,3);
INSERT into tarea_rendicion (id_tarea,id_rendicion) VALUES (4,4);