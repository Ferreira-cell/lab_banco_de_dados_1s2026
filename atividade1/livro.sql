use bibliotaca_usuario_1s2026;
create table livro(
	id_livro int auto_increment primary key,
    titulo varchar(255) not null,
    sinopse varchar(255) not null,
    autos varchar(128) not null,
    editora varchar(128) not null,
    categoria varchar(128) not null,
    ano_publicacao year
);
show tables;
