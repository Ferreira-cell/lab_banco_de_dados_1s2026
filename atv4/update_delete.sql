select * from autor;
select * from livro where id_autor = 8;
select * from livro;
select * from categoria;
SELECT * from livro where id_categoria = 6;

UPDATE categoria SET nome = 'Censurado' WHERE nome = 'Filosofia';

DELETE FROM livro WHERE id_categoria = 6;
SELECT id_categoria FROM categoria WHERE nome = 'Censurado';
SELECT * FROM categoria WHERE nome = 'Censurado';
SELECT * FROM livro WHERE id_categoria = 6;
SELECT * FROM livro;

/* Carrega livro e nome do autor*/
select 
			t4.nome as nome_usuario,
			t2.nome as nome_autor,
			t1.titulo,
            t3.nome as nome_cateogoria,
            
            t5.nome as nome_editora
    from 
			livro t1
	join 
		autor t2 on (t1.id_autor = t2.id_autor)
	join
		categoria t3 on (t1.id_categoria = t3.id_categoria)
	join
		usuario t4 on (t1.id_usuario = t4.id_usuario)
	join
		editora t5 on (t1.id_editora = t5.id_editora);

/* qntd de livro*/

select count(*) from livro where id_usuario = 1;
select count(*) from livro where id_usuario = 2;
select count(*) from livro where id_usuario = 3;

select count(*) from livro group by id_usuario;


select 
	t1.id_usuario, 
	t2.nome as ususario, 
	t1.id_categoria,
    t3.nome as categoria,
	count(t1.id_usuario) 
as 
	qtd_livro 
from 
	livro t1
join 
	usuario t2 on (t1.id_usuario = t2.id_usuario) 
join 
	categoria t3 on (t1.id_categoria = t3.id_categoria) 

group by 
	t1.id_usuario, t2.nome, t1.id_categoria, t3.nome
    
order by t3.nome, qtd_livro desc;

