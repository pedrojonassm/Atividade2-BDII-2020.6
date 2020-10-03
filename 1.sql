/*
Faça uma consulta que selecione o nome dos
funcionários que recebem salários superiores aos
salários pagos no departamento 5.
*/

select f.nome
from funcionario f
where f.salario > (
select max(f2.salario)
from funcionario f2
where f2."codDep" = 5);