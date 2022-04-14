create table cliente
(
	id int auto_increment
		primary key,
	nombre varchar(255) null,
	apellido varchar(255) null,
	id_cc int null,
	id_cf int null,
	constraint cliente_centro_costos_id_CC_fk
		foreign key (id_cc) references centro_costos (id_CC),
	constraint cliente_centro_facturacion_id_CF_fk
		foreign key (id_cf) references centro_facturacion (id_CF)
);