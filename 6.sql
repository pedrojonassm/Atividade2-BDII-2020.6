/*
Faça uma consulta que selecione o nome, o salário dos funcionário e a
descrição do departamento, mesmo que eles não tenham departamentos associados.
--*/

select f.nome, f.salario, d.descricao
from funcionario f, departamento d
where f."codDep" = d.codigo or f."codDep" = null;