USE bdcovid;

CREATE TABLE dmTempo(
	idTempo int auto_increment,
    dt_data date,
    dia_semana varchar(15),
    dia_mes int,
    dia_ano int,
    num_mes int,
    num_semana int,
    nom_mes varchar(15),
    num_ano int,
    num_semestre int,
    nom_semestre varchar(15),
    fim_semana varchar(15),
    primary key(idTempo)
);

CREATE INDEX ix_data
ON dmtempo(dt_data);