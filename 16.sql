/*
Faça uma consulta que selecione o nome dos responsáveis de projeto
que também são gerentes de departamento ou que ganham mais que
o gerente de seu departamento. Use views se necessário.
*/

select f.nome from funcionario f, departamento d, projeto proj, "gerenteDepartamentos" ge
where f.codigo = d."codGerente" and ((f.codigo = proj."codResp" and d.codigo = proj."codDep") or
(f.salario > ge."salarioGerente" and f."codDep" = ge.dep))
group by f.nome;