/*
Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto,
o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.
*/

select proj.descricao as "nome do projeto", d.descricao as "departamento do projeto",
f.nome "nome do responsavel", d2.descricao "departamento do funcionario"
from projeto proj left join departamento d
on proj."codDep" = d.codigo
left join funcionario f
on f.codigo = proj."codResp"
left join departamento d2
on f."codDep" = d2.codigo;