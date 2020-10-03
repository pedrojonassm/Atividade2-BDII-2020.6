/*
Faça uma consulta que selecione o nome e a data
de nascimento dos funcionários com idade superior
a 21 anos que não são gerentes.
*/

-- Selecionando os que não são gerentes
/*
select *
from funcionario
where codigo not in (
	select "codGerente" from departamento
);
--*/
-- selecionando os de idade superior a 21 anos
/*
select *
from funcionario
where date_part('year', age("DTNasc")) > 21;--*/

-- juntando os dois

select nome, "DTNasc" from funcionario
where date_part('year', age("DTNasc")) > 21
and codigo not in (
	select "codGerente" from departamento
);