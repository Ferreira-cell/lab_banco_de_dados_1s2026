select t2.nome as categoria, 
	   count(t1.id_livro) as qtd
from livro t1
join categoria t2 on (t1.id_categoria = t2.id_categoria)
group by t2.nome;

/**/
create or replace view vw_categoria_livro as(
select t2.nome as categoria, 
	   count(t1.id_livro) as qtd
from livro t1
join categoria t2 on (t1.id_categoria = t2.id_categoria)
group by t2.nome);

select * from vw_categoria_livro;



create or replace view vw_livro_lido as(
select titulo, lido from livro where lido = 1);
select * from vw_livro_lido;

/**/

create or replace view vw_relatorio as(
select t2.nome as categoria,
	   sum(t1.id_livro) as qtd_lido,
	   count(t1.id_livro) as qtd,
       round((sum(t1.lido) / count(t1.id_livro)) *100, 2) as pc_lido
from livro t1
join categoria t2 on (t1.id_categoria = t2.id_categoria)
group by t2.nome);

select * from vw_relatorio;

create or replace view vw_livro_lido as(
select titulo, lido from livro where lido = 1);
select * from vw_livro_lido;

/**/
delimiter $$
create procedure sp_atualizar_relatorio()
begin
	start transaction;
    drop table if exists relatorio;
    create table relatorio (
		categoria varchar (255),
        qtd int,
        qtd_lido int,
        pc_lido decimal);
	insert into relatorio (select * from vw_relatorio);
end$$
commit;
select * from relatorio;
call sp_atualizar_relatorio();





