CREATE DEFINER=`root`@`localhost` trigger atualiza_emprestimo_upd 
after UPDATE on emprestimos 
for each row
begin

  update alunos 
  set emprestimos = emprestimos + 1 
  where id = NEW.aluno;
  
  update alunos 
  set emprestimos = emprestimos - 1 
  where id = OLD.aluno;
end