CREATE SEQUENCE IF NOT EXISTS public."codigo_atividade"
    INCREMENT 1;
CREATE SEQUENCE IF NOT EXISTS public."codigo_funcionario"
    INCREMENT 1;
CREATE SEQUENCE IF NOT EXISTS public."codigo_departamento"
    INCREMENT 1;
CREATE SEQUENCE IF NOT EXISTS public."codigo_projeto"
    INCREMENT 1;
CREATE SEQUENCE IF NOT EXISTS public."codigo_atividadeprojeto"
    INCREMENT 1;

CREATE TABLE IF NOT EXISTS public."atividade"
(
    codigo integer NOT NULL DEFAULT nextval('codigo_atividade'),
    "Descricao" text,
    PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS public."funcionario"
(
    codigo integer NOT NULL DEFAULT nextval('codigo_funcionario'),
    nome text,
    sexo "char",
    "DTNasc" date,
    salario double precision,
    "codDep" integer NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE IF NOT EXISTS public."departamento"
(
    codigo integer NOT NULL DEFAULT nextval('codigo_departamento'),
    descricao text,
    "codGerente" integer NOT NULL,
    PRIMARY KEY (codigo),
    CONSTRAINT gerenciador FOREIGN KEY ("codGerente")
        REFERENCES funcionario(codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);
/*ALTER TABLE public.funcionario
    ADD CONSTRAINT departamento FOREIGN KEY ("codDep")
    REFERENCES public.departamento (codigo) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
*/
CREATE TABLE IF NOT EXISTS public."projeto"
(
    codigo integer NOT NULL DEFAULT nextval('codigo_projeto'),
    descricao text,
    "codDep" integer NOT NULL,
    "codResp" integer NOT NULL,
    "DataInicio" date NOT NULL,
    "DataFim" date,
    PRIMARY KEY (codigo),
    CONSTRAINT "Depto" FOREIGN KEY ("codDep")
        REFERENCES departamento(codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT resp FOREIGN KEY ("codResp")
        REFERENCES funcionario(codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public."atividade-projeto"
(
    codigo integer NOT NULL DEFAULT nextval('codigo_atividadeprojeto'),
    "codProjeto" integer NOT NULL,
    "codAtividade" integer NOT NULL,
    "codResponsavel" integer NOT NULL,
    "dataInicio" date NOT NULL,
    "dataFim" date,
    PRIMARY KEY (codigo),
    CONSTRAINT projeto FOREIGN KEY ("codProjeto")
        REFERENCES projeto (codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT atividade FOREIGN KEY ("codAtividade")
        REFERENCES atividade (codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT responsavel FOREIGN KEY ("codAtividade")
        REFERENCES funcionario (codigo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);


