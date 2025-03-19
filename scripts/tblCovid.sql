CREATE DATABASE bdcovid CHARACTER SET utf8;

USE bdcovid;

CREATE TABLE tblCovid(
	id int,
    dt_atendimento date,
    faixaetaria varchar(45),
    genero varchar(45),
    municipio varchar(45),
    classificacao varchar(45),
    comorbidade varchar(105),
    situacao varchar(45),
    dt_obito date,
    dt_confirmacaoexame date,
    primary key(id)
);

CREATE INDEX ix_faixaetaria
ON tblCovid(faixaetaria);
CREATE INDEX ix_genero
ON tblCovid(genero);
CREATE INDEX ix_municipio
ON tblCovid(municipio);
CREATE INDEX ix_comorbidade
ON tblCovid(comorbidade);
CREATE INDEX ix_situacao
ON tblCovid(situacao);
CREATE INDEX ix_dt_atendimento
ON tblCovid(dt_atendimento);
CREATE INDEX ix_dt_obito
ON tblCovid(dt_obito);
CREATE INDEX ix_dt_confirmacaoexame
ON tblCovid(dt_confirmacaoexame);

ALTER TABLE tblCovid
ADD comorbidades_simplificada varchar(105);

UPDATE tblCovid
SET comorbidades_simplificada = comorbidade;

UPDATE tblCovid
SET comorbidades_simplificada = "MÚLTIPLAS COMORBIDADES"
WHERE LOCATE(",", comorbidade) > 0;