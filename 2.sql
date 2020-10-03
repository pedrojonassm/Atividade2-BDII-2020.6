/*
Faça uma consulta que selecione o nome de todos
os funcionários exceto o mais idoso.
*/

select nome
from funcionario
where "DTNasc" != (
	select MIN(f."DTNasc")
	from funcionario f
);