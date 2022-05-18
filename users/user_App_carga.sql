CREATE USER 'App_carga'@'%' IDENTIFIED BY '123';
SET PASSWORD FOR 'App_carga'@'%' = PASSWORD('123');

GRANT Insert ON tpbasededatosmarcos.rendicion TO 'App_carga'@'%';