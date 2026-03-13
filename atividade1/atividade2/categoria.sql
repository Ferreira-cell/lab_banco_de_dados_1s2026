CREATE TABLE categoria(
    id_categoria int primary key auto_increment,
    nome varchar(128) not null unique,
    descricao text not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);