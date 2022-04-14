create table empleado
(
	id int,
	nombre varchar(200) null,
	apellido varchar(200) null,
	legajo int not null
		primary key,
	dni int null
);

create index empleado_id_legajo_index
	on empleado (id, legajo);

alter table empleado modify id int auto_increment;