create table liquidacion_mensual
(
	id int auto_increment
		primary key,
	cliente_id int null,
	proyecto_id int null,
	descripcion varchar(255) null,
	horas decimal null,
	fecha datetime null
);

create index liquidacion_mensual_clientes_id_fk
	on liquidacion_mensual (cliente_id);

    