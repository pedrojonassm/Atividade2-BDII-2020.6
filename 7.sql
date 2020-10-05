/*
Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de
funcionários de cada departamento. Deve aparecer os departamentos sem gerente e sem funcionários.
Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.
--*/

CREATE OR REPLACE VIEW public."totalFuncionariosDep"
 AS
select d.codigo as codigo, count(f.codigo) as total
from departamento d, funcionario f
where f."codDep" = d.codigo
group by d.codigo;

select d.descricao, f.nome, total.total
from departamento d, funcionario f, "totalFuncionariosDep" total
where d."codGerente" = f.codigo and d.codigo = total.codigo
group by d.codigo, f.nome, total.total
order by d.descricao
;