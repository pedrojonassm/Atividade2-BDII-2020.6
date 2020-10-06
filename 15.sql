/*
Faça uma consulta que selecione o nome dos projetos e o nome dos funcionários responsáveis por esses
projetos, a quantidade de atividades do projeto e a quantidade de responsáveis pela atividades
(os responsável por atividades só devem ser contados uma única vez no projeto). Crie e use views na consulta.
*/

CREATE OR REPLACE VIEW public."totalAtividadesProjeto"
 AS
select proj.codigo as pr, count(proj.codigo) as total from projeto proj, "atividade-projeto" atv
where atv."codProjeto" = proj.codigo
group by proj.codigo;

select proj.descricao, f.nome, tot.total from funcionario f, projeto proj, "totalAtividadesProjeto" tot
where f.codigo = proj."codResp" and tot.pr = proj.codigo;