USE bdcovid;

CREATE TABLE dmPessoa(
	idPessoa int auto_increment,
    genero varchar(45),
    faixaetaria varchar(45),
    primary key(idPessoa)
);

CREATE INDEX ix_faixaetaria
ON dmpessoa(faixaetaria);