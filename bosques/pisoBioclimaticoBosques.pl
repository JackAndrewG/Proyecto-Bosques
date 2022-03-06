tipoElevacion(bsPn02,1500).
tipoElevacion(bePn02,1500).
tipoElevacion(bmPn01,1500).
tipoElevacion(bdPn01,1500).
tipoElevacion(bsBn05,2100).
tipoElevacion(beBn01,1700).
tipoElevacion(bmBn01,1700).
tipoElevacion(bdBn01,1700).
tipoElevacion(bsMn04,2500).
tipoElevacion(bsAn04,3000).

elevacion(X, pisos(piemontano)):- X<1600, !.
elevacion(X,pisos(montanoBajo)):- X>1600 | X<2000, !.
elevacion(X,pisos(montano)):- X>1600 | X<2200, !.
elevacion(X,pisos(montanoAlto)):- X>2200 | X<2900, !.
elevacion(X,pisos(montanoAltoSuperior)):- X>2900 | X<3400, !.

piso_bioclimatico(Codigo):-
    write("Piso Bioclimatico: \n"),
    tipoElevacion(Codigo,Elevacion),
    elevacion(Elevacion,Piso),Piso,
    etiquetaTermotipo(),
    tipoTermotipo(Codigo, Tm), 
    Tm.