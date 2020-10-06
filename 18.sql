/*
Faça uma consulta que selecione o nome dos funcionários com maior
salário de seu departamento, mesmo que não tenha departamento associado,
e o nome dos respectivos departamentos. Exiba em ordem crescente de acordo com o salário.
*/

select f.nome, d.descricao from funcionario f, departamento d
where f.salario in (
	select MAX(f.salario)
	from funcionario f left join departamento d
	on f."codDep" = d.codigo group by d.codigo
) and f."codDep" = d.codigo
group by f.salario, f.nome, d.descricao
order by f.salario
;