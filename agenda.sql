create database agenda;
	SHOW DATABASES;
	uses agenda;
	create table persona
	(
		dni integer,
		nombre varchar,
		apellido varchar,
		f_nac date,
		constraint pk_persona primary key (dni)

	);
	create table mail
	(
		mail varchar,
		dni integer,
		observacion varchar(500),
		constraint pk_mail primary key (mail),
		constraint fk_mail_persona foreign key (dni),
		references persona (dni)
	); 
	create table telefono 
	(
		cod_area integer,
		num_tel integer,
		observacion varchar(500),
		dni integer,
		constraint pk_telefono primary key (cod_area, num_tel),
		constraint fk_telefono_persona foreign key (dni),
		references persona (dni),
	);
	create table direccion
	(
		direccion serial,
		calle varchar,
		num varchar,
		locacion varchar,
		provincia varchar,
		pais varchar,
		cod_postal varchar,
		dni integer,
		constraint pk_direccion primary key (direccion),
		constraint fk_direccion_persona foreign key (dni),
		references persona (dni),
	);	 