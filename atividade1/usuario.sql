create table usuario(
	id_usuario int auto_increment primary key,
    nome varchar(255) not null,
    email varchar(128) not null unique,
    data_cadastro date default(current_date) not null
);
show tables;
