show databases;
use biblioteca_pessoal_at4_3;

create user "auxiliar_3"@"%" identified by "catolica";
create user "auxiliar_4"@"%" identified by "catolica";

grant select, update on biblioteca_pessoal_at4_3.livro
to"auxiliar_3"@"%";
grant select,delete, update on biblioteca_pessoal_at4_3.livro
to"auxiliar_4"@"%";

revoke update on biblioteca_pessoal_at4_3.livro
from "auxiliar_3"@"%";


select * from audit_livro;

delimiter $$
create trigger audit_delete_livro 
after delete on livro
for each row
begin
	insert into audit_livro
    (acao, usuario_bd, id_livro, dados_antigos, dados_novos)
    values
		("DELETE", user(), old.id_livro,
        concat("Titulo ", old.titulo, "lido ", old.lido),null);
        
end$$
delimiter ;
drop trigger audit_delete_livro;

