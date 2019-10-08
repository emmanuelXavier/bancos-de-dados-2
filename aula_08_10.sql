
DELIMITER $$
CREATE PROCEDURE `sp_insere_aluno`(in nome_aluno varchar(255), 
in cidade_aluno int, in email_aluno varchar(255),
OUT qtdalunos int)
begin
insert into alunos 
(nome,cidade,email,emprestimos,matriculas) 
values 
(nome_aluno,cidade_aluno,email_aluno,0,0);
 
select count(*) into qtdalunos from alunos;

end$$

DELIMITER ;


DELIMITER $$
create procedure sp_entrada_saida(inout valor int)
BEGIN
	
    SET valor = valor * 10;



END$$

DELIMITER ;

DELIMITER $$
create procedure sp_continue()
BEGIN
	
    declare CONTINUE HANDLER FOR 1054 
    select 'Coluna inexistente';
		
    
    select francisco;
    
    select chico;
    
    select 'Passou do erro'; 



END$$

DELIMITER ;

DELIMITER $$
create procedure sp_exit()
BEGIN
	
    declare EXIT HANDLER FOR 1054 
    select 'Coluna inexistente';
		
    
    select francisco;
    
    select chico;
    
    select 'Passou do erro'; 



END$$

DELIMITER ;