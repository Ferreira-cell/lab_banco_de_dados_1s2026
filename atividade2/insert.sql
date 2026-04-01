insert into usuario(nome, email, senha)
values("João","joao@gmail.com","123"),
		("Miguel","miguel@gmail.com","1234");
        
insert into autor(nome)
values("Santo Agostinho","1900","2000","aaaaaaaaaaa"),
		("Aristóteles","1900","2000","aaaaaaaaaaaaaa");
        
insert into editora(nome)
values("L&M"),
		("COmpanhia das Letras");
        
insert into categoria(nome)
values("Filosofia"),
		("Ficção");

insert into livro(id_usuario, id_autor, id_editora, id_categoria, titulo, sinopse, ano_publicacao)
values(2, 3, 2, 2, "aaaaaaaaaaaaaaa", "", "2011"),
		(2, 3, 2, 2, "aaaaaaaaaaaaaaa","", "2007");

        
select * from usuario;
select * from autor;
select * from editora;
select * from categoria;
select * from livro;


