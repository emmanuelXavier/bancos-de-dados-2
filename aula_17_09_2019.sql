DELIMITER $$
create trigger add_10_emprestimos after insert on alunos
for each row
begin
  declare idEmprestimo int;
  declare novovalor decimal(12,2);
  declare fim int default 0;
  declare empCursor cursor for select id, valor from emprestimos;
  declare continue handler for NOT FOUND SET fim = 1;

  open empCursor;

  repeticao: loop
  fetch empCursor into idEmprestimo, novovalor;
  
  if fim = 1 then
	leave repeticao;
  end if;
  
  SET novovalor = novovalor + 15;
  update emprestimos set valor = novovalor where id = idEmprestimo;
  end loop repeticao;  
end$$
DELIMITER ;


