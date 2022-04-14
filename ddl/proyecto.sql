create table proyecto
(
	proyecto_id int auto_increment
		primary key,
	descripcion varchar(255) null,
	cliente_id int null,
	estado char default 'A' null,
	constraint proyecto_cliente_id_fk
		foreign key (cliente_id) references cliente (id)
);