CREATE USER 'liquidador'@'%' IDENTIFIED BY '123';
SET PASSWORD FOR 'liquidador'@'%' = PASSWORD('123');

GRANT Insert ON tpbasededatosmarcos.liquidacion_mensual TO 'liquidador'@'%';
