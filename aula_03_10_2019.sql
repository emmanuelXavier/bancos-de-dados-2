DELIMITER $$
create procedure sp_lista_alunos(in id_aluno int)
begin

select * from alunos where id = id_aluno;


end$$

DELIMITER ;


DELIMITER $$
create procedure sp_lista_alunos(in tipo char)
begin

if (tipo = '') then
	select * from alunos;
    
else
    select * from livros;
end if;


end$$

DELIMITER ;


DELIMITER $$
create procedure sp_lista_alunos
(in op char, in nome_aluno varchar(255), 
in cidade_aluno int, in email_aluno varchar(255),in emp_aluno int, mat_aluno int,
in id_aluno int)
begin

if (op = 'I') then
	insert into alunos 
    (nome,cidade,email,emprestimos,matriculas) 
    values 
    (nome_aluno,cidade_aluno,email_aluno,0,0);
end if;

if (op = 'A') then
	update alunos set nome = nome_aluno, cidade = cidade_aluno,
    email = email_aluno, emprestimos = emp_aluno, 
    matriculas = mat_aluno where id = id_aluno;
end if;
select * from alunos;

end$$

DELIMITER ;


DELIMITER $$
create procedure sp_lista()
begin
select * from alunos;

end$$
DELIMITER ;


DELIMITER $$
create procedure sp_lista_alunos
(in op char, in nome_aluno varchar(255), 
in cidade_aluno int, in email_aluno varchar(255),in emp_aluno int,in mat_aluno int,
in id_aluno int)
begin
if (op = 'I') then
	insert into alunos 
    (nome,cidade,email,emprestimos,matriculas) 
    values 
    (nome_aluno,cidade_aluno,email_aluno,0,0);
end if;
if (op = 'A') then
	update alunos set nome = nome_aluno, cidade = cidade_aluno,
    email = email_aluno, emprestimos = emp_aluno, 
    matriculas = mat_aluno where id = id_aluno;
end if;
if (op = 'D') then
	delete from alunos where id = id_aluno;
end if;

CALL sp_lista();

end$$
DELIMITER ;