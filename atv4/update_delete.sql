select * from autor;
select * from livro where id_autor = 8;

select * from categoria;
SELECT * from livro where id_categoria = 6;

UPDATE categoria SET nome = 'Censurado' WHERE nome = 'Filosofia';

DELETE FROM livro WHERE id_categoria = 6;
SELECT id_categoria FROM categoria WHERE nome = 'Censurado';
SELECT * FROM categoria WHERE nome = 'Censurado';
SELECT * FROM livro WHERE id_categoria = 6;
SELECT * FROM livro;











