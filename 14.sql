/*
Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades,
o número de atividades que este funcionário é responsável. Crie e use views na consulta.
*/

CREATE OR REPLACE VIEW public."codigoResponsaveisDeAtividade"
 AS
select atv."codResponsavel" from "atividade-projeto" atv;

select nome, count(f.codigo) from funcionario f
where f.codigo in (
	select * from "codigoResponsaveisDeAtividade"
)
group by f.codigo
;