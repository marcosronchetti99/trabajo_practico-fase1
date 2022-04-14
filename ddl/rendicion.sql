create table rendicion
(
	id int auto_increment
		primary key,
	horas decimal null,
	tipo_rendicion char null,
	tarea_id int null,
	constraint rendicion_tareas_id_fk
		foreign key (tarea_id) references tareas (id)
);