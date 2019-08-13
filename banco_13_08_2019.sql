 insert into alunosimperatriz 
 (id,nome,cidade,email,emprestimos,matriculas) 
 select id, nome, cidade,email,emprestimos,matriculas 
 from alunos where cidade = 1;
 
 update alunos set emprestimos = 50 
 where id <> 0 and 
 cidade in (select cidades.id from cidades where uf = 'SP');
 
 delete from alunos 
 where id <> 0 and 
 cidade in (select cidades.id from cidades where uf = 'TO');
 
 select 
	alunos.id,
    alunos.nome,
	coalesce((select sum(emprestimos.valor) from emprestimos where emprestimos.aluno = alunos.id),0) as debito
from alunos;

 select 
	alunos.id,
    alunos.nome,
	(select cidade from cidades where cidades.id = alunos.cidade) as cidade
from alunos;

select * 
from (select 
		alunos.id,
		alunos.nome,
		coalesce((select sum(emprestimos.valor) from emprestimos where emprestimos.aluno = alunos.id),0) as debito
	   from alunos) as fonte
where debito > 100;


select * from alunos
where alunos.cidade = (select cidades.id from cidades where cidade='Imperatriz');
       


 