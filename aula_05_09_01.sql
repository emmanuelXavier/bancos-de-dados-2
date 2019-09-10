CREATE DEFINER=`root`@`localhost` trigger atualiza_emprestimo 
after insert on emprestimos 
for each row
begin
  update alunos 
  set alunos.emprestimos = alunos.emprestimos + 1 
  where alunos.id = NEW.aluno;
end