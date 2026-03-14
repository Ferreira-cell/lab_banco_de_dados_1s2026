use Homework;

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


