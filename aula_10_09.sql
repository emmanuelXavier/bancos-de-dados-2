Delimiter $$
create trigger ins_atualiza_total_venda 
after insert on itensvendas 
for each row
begin
 	SET @valor = (select valor from livros 
    where id = NEW.livro);
	update vendas 
    set total = total + NEW.quantidade * @valor
    where id = NEW.venda;
end$$
Delimiter ;

create trigger upd_atualiza_total_venda 
after update on itensvendas 
for each row
begin
 	SET @valor = (select valor from livros 
    where id = NEW.livro);
	update vendas 
    set total = total + NEW.quantidade * @valor
    where id = NEW.venda;
    
	SET @valor = (select valor from livros 
    where id = OLD.livro);
	update vendas 
    set total = total - OLD.quantidade * @valor
    where id = OLD.venda;
end$$
Delimiter ;

Delimiter $$
create trigger del_atualiza_total_venda 
after delete on itensvendas 
for each row
begin
 	SET @valor = (select valor from livros 
    where id = OLD.livro);
	update vendas 
    set total = total - OLD.quantidade * @valor
    where id = OLD.venda;
end$$
Delimiter ;
