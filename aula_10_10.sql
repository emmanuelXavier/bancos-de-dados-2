DELIMITER $$
create function saudacao (nome varchar(255)) returns varchar(255)
begin
	declare nomenovo varchar(255);

	select concat('Ola ', nome) into nomenovo;
    
    return nomenovo;
	
end$$

Delimiter ;



DELIMITER $$
create function nome_do_mes (datainicial date) returns varchar(255)
begin
	
    declare nome varchar(255);
    
    SET nome = monthname(datainicial);
    return nome;
	
end$$

Delimiter ;


DELIMITER $$
create function nome_do_mes (datainicial date) returns varchar(255)
begin
	
    declare nome varchar(255);
    declare mes int;
    
    SET mes = month(datainicial);
    
    if (mes = 1) then
		return 'Janeiro';
	ELSEIF (mes = 2) then
		return 'Fevereiro';
	ELSEIF (mes = 3) then
		return 'Marco';
	ELSEIF (mes = 4) then
		return 'Abril';
	ELSEIF (mes = 5) then
		return 'Maio';
	ELSEIF (mes = 6) then
		return 'Junho';
	ELSEIF (mes = 7) then
		return 'Julho';
	ELSEIF (mes = 8) then
		return 'Agosto';
	ELSEIF (mes = 9) then
		return 'Setembro';
	ELSEIF (mes = 10) then
		return 'Outubro';
	ELSEIF (mes = 11) then
		return 'Novembro';
	ELSEIF (mes = 12) then
		return 'Dezembro';
	end if;
end$$

Delimiter ;



CREATE TABLE `bancoCC`.`meses` (
  `id` SMALLINT(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  
DELIMITER $$
create function nome_do_mes (datainicial date) returns varchar(255)
begin
	
    declare nomemes varchar(255);
    declare mes int;
    
    SET mes = month(datainicial);
    
    select nome into nomemes from meses where id = mes;
    
    return nomemes;
    
end$$

Delimiter ;



DELIMITER $$
create function media (id_aluno int) returns double
begin
	
    declare media double;
    declare n1 double;
    declare n2 double;
    declare n3 double;
    declare n4 double;
    
    select nota01 into n1 from alunos where id = id_aluno;
    select nota02 into n2 from alunos where id = id_aluno;
    select nota03 into n3 from alunos where id = id_aluno;
    select nota04 into n4 from alunos where id = id_aluno;
    
    SET media = (n1 + n2+ n3 + n4)/4;
    
    return media;
    
end$$

Delimiter ;



DELIMITER $$
create function media (id_aluno int) returns double
begin
	
    declare media double;
    
    select (nota01 + nota02 + nota03 + nota04)/4 into media from alunos where id = id_aluno;
    
    return media;
    
end$$

Delimiter ;


DELIMITER $$
create function diferenca_maior_venda (valor double) returns double
begin
	
    declare diferenca double;
    declare maior_venda double;
    
    
    select max(total) into maior_venda from vendas;
    
    SET diferenca = maior_venda - valor;
    
    return diferenca;
    
end$$

Delimiter ;
