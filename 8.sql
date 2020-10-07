/*
Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o
número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos.
Crie e use views na consulta, se necessário.
*/
CREATE OR REPLACE VIEW public."totalProjetosDep"
 AS
select count(*) as total, d.codigo as dep
from projeto p, departamento d
where p."codDep" = d.codigo
group by d.codigo;

select d.descricao, f.nome, tot.total
from departamento d
left join funcionario f on f.codigo = d."codGerente"
left join "totalProjetosDep" tot on tot.dep = d.codigo;
