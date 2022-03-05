fenologia(bsPn02, fenologias(siempreverde)).
fenologia(bePn02, fenologias(siempreverdeEstacional)).
fenologia(bmPn01, fenologias(semideciduo)).
fenologia(bdPn01, fenologias(deciduo)).
fenologia(bsBn05, fenologias(siempreverde)).
fenologia(beBn01, fenologias(siempreverdeEstacional)).
fenologia(bmBn01, fenologias(semideciduo)).
fenologia(bdBn01, fenologias(deciduo)).
fenologia(bsMn04, fenologias(siempreverde)).
fenologia(bsAn04, fenologias(siempreverde)).

getFenologia(Codigo):-
    etiquetaFenologia(),
    fenologia(Codigo, Tipo),
    Tipo.
