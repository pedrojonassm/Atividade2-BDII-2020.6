/*
Faça uma consulta que selecione a código e descrição do projeto cujo gerente
do departamento que ele faz parte ganhe mais que os outros gerentes de departamento.
*/

select proj.codigo, proj.descricao from projeto proj, departamento d, "gerenteDepartamentos" ge
where ge.dep = d.codigo and proj."codDep" = d.codigo and ge."idGerente" = proj."codResp" and ge."salarioGerente" >=
(
	select max("salarioGerente") from "gerenteDepartamentos"
);