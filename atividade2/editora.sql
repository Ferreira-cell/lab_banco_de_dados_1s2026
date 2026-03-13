CREATE TABLE editora(
    id_editora int primary key auto_increment,
    nome varchar(255) not null unique,
    cidade Varchar(64) not null,
    estado Varchar(64) not null,
    pais Varchar(64) not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);