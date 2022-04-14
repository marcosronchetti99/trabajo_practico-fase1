create table tarea_rendicion
(
	id_tarea int null,
	id_rendicion int null,
	constraint tarea_rendicion_rendicion_id_fk
		foreign key (id_rendicion) references rendicion (id),
	constraint tarea_rendicion_tareas_id_fk
		foreign key (id_tarea) references tareas (id)
);

create index tarea_rendicion_id_tarea_id_rendicion_index
	on tarea_rendicion (id_tarea, id_rendicion);
	