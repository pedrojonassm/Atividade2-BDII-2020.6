/*
INSERT INTO public.atividade("Descricao")
	VALUES
	('inserir atividades'), 
	('inserir departamentos'), 
	('inserir funcionários'),
	('inserir projetos'), 
	('inserir atividade-projetos');--*/
/*
INSERT INTO public.funcionario(
	nome, sexo, "DTNasc", salario, "codDep")
	VALUES
	('Pedro', 'M', '2000-10-31', 800, null),
	('Bianca', 'F', '2001-09-13', 1200, null),
	('Jonas', 'M', '2004-08-24', 600, null),
	('Taciano', 'M', '1980-02-17', 2400, null),
	('Pri', 'F', '2002-01-01', 1400, null);--*/
/*
INSERT INTO public.departamento
(descricao, "codGerente")
	VALUES
	('A', 1),
	('B', 2),
	('C', 3),
	('D', 4),
	('E', 5);
UPDATE public.funcionario f
	SET "codDep"=f.codigo;--*/
/*
INSERT INTO public.funcionario(
	nome, sexo, "DTNasc", salario, "codDep")
	VALUES
	('José', 'M', '1998-02-20', 2000, 2),
	('Maria', 'F', '2000-05-20', 1800, 5),
	('Jaine', 'F', '2000-04-20', 1800, 5);--*/
	
/*
INSERT INTO public.projeto(
descricao, "codDep", "codResp", "DataInicio", "DataFim")
	VALUES
	('Fazer efeitos de Instagram', 2, 2, '2020-10-01', null),
	('Preparar evento compila girl', 5, 7, '2020-09-10', null),
	('Fazer um jogo Mobile', 1, 1, '2020-03-10', null);--*/

/*
INSERT INTO public."atividade-projeto"(
	"codProjeto", "codAtividade",
	"codResponsavel", "dataInicio", "dataFim")
	VALUES
	(1, 1, 2, '2020-10-01', null),
	(2, 3, 5, '2020-09-10', null),
	(3, 5, 1, '2020-03-10', null);--*/
