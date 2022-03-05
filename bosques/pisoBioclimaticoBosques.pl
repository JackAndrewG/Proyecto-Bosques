piso(bsPn02, 'Piemontano (400-1600 msnm)').
piso(bePn02, 'Piemontano (400-1600 msnm)').
piso(bmPn01, 'Piemontano (400-1600 msnm)').
piso(bdPn01, 'Piemontano (400-1600 msnm)').
piso(bsBn05, 'Montano (1600-2200 msnm)').
piso(beBn01, 'Montano bajo (1600-2000msnm)').
piso(bmBn01, 'Montano bajo (1600-2200 msnm)').
piso(bdBn01, 'Montano bajo (1600-2200 msnm)').
piso(bsMn04, 'Montano (2200-2900msnm)').
piso(bsAn04, 'Montano alto (2900-3400 msnm)').

piso_bioclimatico(Codigo):-
    piso(Codigo, P),
    write("Piso Bioclimatico: \n\t"),
    writeln(P), 
    tipoTermotipo(Codigo, Tm), 
    Tm.