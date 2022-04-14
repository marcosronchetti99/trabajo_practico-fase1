create table tareas
(
	id int auto_increment
		primary key,
	descripcion varchar(255) null,
	legajo_id int null,
	estado char default 'A' null,
	proyecto_id int null,
	fini date null,
	ffin datetime null,
	constraint tareas_empleado_legajo_fk
		foreign key (legajo_id) references empleado (legajo),
	constraint tareas_proyecto_proyecto_id_fk
		foreign key (proyecto_id) references proyecto (proyecto_id)
);