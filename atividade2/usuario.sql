CREATE TABLE usuario(
    id_usuario int primary key auto_increment,
    nome varchar(255) not null,
    senha Varchar(255) not null,
    email varchar(128) not null unique,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

show tables;
