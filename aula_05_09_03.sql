CREATE DEFINER=`root`@`localhost` TRIGGER `atualiza_emprestimo_del` 
AFTER DELETE ON `emprestimos` 
FOR EACH ROW
BEGIN
	update alunos set emprestimos = emprestimos - 1 where id = OLD.aluno;
END