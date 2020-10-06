/*
Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto,
o nome da atividade do projeto, data de início e fim da atividade.
*/
select proj.descricao as "nome do projeto", proj."DataInicio" "inicio do projeto", proj."DataFim" as "fim do projeto",
atv."dataInicio" as "Inicio da Atividade", atv."dataFim" as "limite da atividade"
from projeto proj left join "atividade-projeto" atv
on atv."codProjeto" = proj.codigo
;