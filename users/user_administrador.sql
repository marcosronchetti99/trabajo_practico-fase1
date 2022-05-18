CREATE USER 'administrador'@'%' IDENTIFIED BY '123';
SET PASSWORD FOR 'administrador'@'%' = PASSWORD('123');

GRANT Alter ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Create ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Delete ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Drop ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Index ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Insert ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Select ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Trigger ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Update ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Alter routine ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Create routine ON tpbasededatosmarcos.* TO 'administrador'@'%';
GRANT Execute ON tpbasededatosmarcos.* TO 'administrador'@'%';