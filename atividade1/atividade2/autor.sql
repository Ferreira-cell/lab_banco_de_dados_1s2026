CREATE TABLE autor(
    id_autor int primary key auto_increment,
    nome varchar(128) not null unique,
    ano_nascimento year not null,
    ano_morte year null, -- Ajustado para opcional
    apresentacao text not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);