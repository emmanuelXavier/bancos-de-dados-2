DELIMITER $$
create trigger atualiza_emprestimo_upd 
after UPDATE on emprestimos 
for each row
begin
if (NEW.aluno = 1) then
	SIGNAL SQLSTATE '45000';
END if;

  update alunos 
  set emprestimos = emprestimos + 1 
  where id = NEW.aluno;
  
  update alunos 
  set emprestimos = emprestimos - 1 
  where id = OLD.aluno;
end$$

DELIMITER ;