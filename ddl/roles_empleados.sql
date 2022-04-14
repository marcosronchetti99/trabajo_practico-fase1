create table roles_empleados
(
	id_rol int null,
	legajo_empleado int null,
	constraint roles_empleados_pk
		unique (id_rol, legajo_empleado),
	constraint roles_empleados_empleado_legajo_fk
		foreign key (legajo_empleado) references empleado (legajo),
	constraint roles_empleados_roles_id_fk
		foreign key (id_rol) references roles (id)
);