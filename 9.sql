/*
Faça uma consulta que selecione o nome dos funcionários responsáveis por projetos,
o número de projetos que este funcionário é responsável e seus salários, mas apenas
os funcionários que ganhem mais que o gerente do seu departamento. Crie e use views na consulta.
*/

CREATE OR REPLACE VIEW public."gerenteDepartamentos"
 AS
select f.codigo as "idGerente", f.salario as "salarioGerente", d.codigo as dep
from funcionario f, departamento d
where d."codGerente" = f.codigo;

CREATE OR REPLACE VIEW public."totalProjetosFuncionario"
 AS
select count(*) as total, f.codigo as fu from funcionario f, projeto proj
where f.codigo = proj."codResp"
group by f.codigo;


select f.nome, tot.total, f.salario
from funcionario f, projeto proj, "totalProjetosFuncionario" tot, "gerenteDepartamentos" ge
where f.codigo = proj."codResp" and ge."salarioGerente" < f.salario and ge.dep = proj."codDep"
group by f.nome, tot.total, f.salario;

--select * from "gerenteDepartamentos";