create table audit_livro(
	acao varchar(255),
    usuario_bd varchar(255),
    id_livro int,
    dados_antigos text,
    dados_novos text,
    data_acao timestamp default current_timestamp
);
delimiter $$
create trigger audit_update_livro
after update on livro
for each row
begin
	insert into audit_livro(acao, usuario_bd, id_livro, dados_antigos, dados_novos)
    values ("UPDATE", user(), old.id_livro, concat("titulo: ", old.titulo,"lido:  ", old.lido),
											concat("titulo: ", new.titulo,"lido:  ", new.lido)
);
end$$
delimiter ;

update id_livro
set lido = 0
where id_livro = 2; 
select * from livro;

select * from audit_livro;

create user "auxiliar_1"@"%" identified by "catolica";