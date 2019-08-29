create view v_alunos_cidades as
select 
 alunos.id,
 alunos.nome,
 coalesce(cidades.cidade,'') as cidade,
 alunos.email,
 alunos.emprestimos,
 alunos.matriculas
from alunos left join cidades on (alunos.cidade = cidades.id);

select 
	matriculas.datacadastro,
    alunos.nome as aluno,
    cursos.nome as curso
from matriculas join alunos on (matriculas.aluno = alunos.id)
join cursos on (matriculas.curso = cursos.id);

select
	emprestimos.dataemprestimo,
    livros.titulo as livro,
    alunos.nome as aluno 
from 
	emprestimos 
	inner join livros on (emprestimos.livro = livros.id)
    inner join matriculas on (emprestimos.aluno = matriculas.id)
    inner join alunos on (matriculas.aluno = alunos.id);
    
select 
	cidades.cidade,
    (select count(*) from alunos 
    where alunos.cidade = cidades.id) as qtd
from cidades;

select 
	cidades.cidade,
	count(alunos.id) as qtd 
from cidades 
	left join alunos on (cidades.id = alunos.cidade) 
    group by cidades.id;
    
select 
	alunos.nome as aluno,
    coalesce((select sum(emprestimos.valor) from emprestimos 
			inner join matriculas on (emprestimos.aluno = matriculas.id)
			  where matriculas.aluno = alunos.id),0) as divida
from 
	alunos;
    
select 
	cidades.cidade,
    coalesce((select sum(emprestimos.valor) from emprestimos 
	join matriculas on (emprestimos.aluno = matriculas.id) 
    join alunos on (matriculas.aluno = alunos.id) 
    where alunos.cidade = cidades.id),0) as divida
from cidades;


