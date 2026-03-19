use Homework;

CREATE TABLE usuario(
    id_usuario int primary key auto_increment,
    nome varchar(255) not null,
    senha Varchar(255) not null,
    email varchar(128) not null unique,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT NOT NULL,
    ano_publicacao YEAR NOT NULL,
    lido BOOLEAN DEFAULT FALSE,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
 
    id_usuario INT NOT NULL,
    id_autor INT NOT NULL,
    id_editora INT NOT NULL,
    id_categoria INT NOT NULL,

  
    foreign key (id_usuario) references usuario(id_usuario) ON DELETE CASCADE,
    foreign key (id_autor) references autor(id_autor) ON DELETE RESTRICT,
    foreign key (id_editora) references editora(id_editora) ON DELETE RESTRICT,
    foreign key (id_categoria) references categoria(id_categoria) ON DELETE RESTRICT
);
CREATE TABLE editora(
    id_editora int primary key auto_increment,
    nome varchar(255) not null unique,
    cidade Varchar(64) not null,
    estado Varchar(64) not null,
    pais Varchar(64) not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE categoria(
    id_categoria int primary key auto_increment,
    nome varchar(128) not null unique,
    descricao text not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE categoria(
    id_categoria int primary key auto_increment,
    nome varchar(128) not null unique,
    descricao text not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
show tables;
