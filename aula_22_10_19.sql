set autocommit = 0;

start transaction;

insert into meses (nome) values ('TESTE2');
insert into meses (nome) values ('TESTE3');

commit;

start transaction;

insert into meses (nome) values ('TESTE2');
insert into meses (nome) values ('TESTE3');

rollback;


start transaction;
try{
 insert into meses (nome) values ('TESTE2');
 insert into meses (nome) values (null);

 commit;
}catch (Exception e){

 rollback;
}


start transaction;

insert into meses (nome) values ('TESTE3');
insert into meses (nome) values ('TESTE4');

savepoint cadastrosiniciais;


insert into meses (nome) values ('TESTE5');
insert into meses (nome) values ('TESTE6');

savepoint cadastrosdois;


insert into meses (nome) values ('TESTE5');
insert into meses (nome) values ('TESTE6');

rollback to savepoint cadastrosiniciais;
commit;


start transaction;
try{
  insert into meses (nome) values ('TESTE3');
  insert into meses (nome) values ('TESTE4');

  savepoint cadastrosiniciais;
}catch (Exception e){
  rollback;
}

try {
insert into meses (nome) values ('TESTE5');
insert into meses (nome) values ('TESTE6');

savepoint cadastrosdois;
}catch (Exception e){
  rollback to savepoint cadastrosiniciais;
}

try{
insert into meses (nome) values ('TESTE5');
insert into meses (nome) values ('TESTE6');
}catch (Exception e){
	rollback to savepoint cadastrosdois;
}

commit;


