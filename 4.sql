/*
Faça uma consulta que selecione o nome,
o salário e o departamento dos funcionários
que não são gerentes, ordenando pelo Código
do Departamento.
*/

select nome, salario, "codDep" from funcionario
where codigo not in (
	select "codGerente" from departamento
) order by "codDep";