USE bdcovid;

CREATE TABLE fatoCovid(
	idPessoa int,
    idTempo int,
    idLocal int,
    idComorbidade int,
    qtdConfirmados int,
    qtdRecuperados int,
    qtdObitos int,
    foreign key(idPessoa) references dmPessoa(idPessoa),
    foreign key(idTempo) references dmTempo(idTempo),
    foreign key(idLocal) references dmLocal(idLocal),
    foreign key(idComorbidade) references dmComorbidades(idComorbidade)
);