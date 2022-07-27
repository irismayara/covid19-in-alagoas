USE bdcovid;

CREATE TABLE dmComorbidades(
	idComorbidade int auto_increment,
    comorbidade varchar(45),
    primary key(idComorbidade)
);

CREATE INDEX ix_comorbidade
ON dmcomorbidades(comorbidade);