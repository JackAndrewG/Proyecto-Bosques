%%%%%%%%%%%%%%%%%%      CODIGOS     %%%%%%%%%%%%%%%%%%
codigo(bsPn02).
codigo(bePn02).
codigo(bmPn01).
codigo(bdPn01).
codigo(bsBn05).
codigo(beBn01).
codigo(bmBn01).
codigo(bdBn01).
codigo(bsMn04).
codigo(bsAn04).

en_codigos(bsPn02, 'Bosque siempreverde piemontano', codigoBosque).
en_codigos(bePn02, 'Bosque siempreverde estacional piemontano', codigoBosque).
en_codigos(bmPn01, 'Bosque semideciduo piemontano', codigoBosque).
en_codigos(bdPn01, 'Bosque deciduo piemontano', codigoBosque).
en_codigos(bsBn05, 'Bosque siempreverde montano bajo',codigoBosque).
en_codigos(beBn01, 'Bosque siempreverde estacional montano bajo', codigoBosque).
en_codigos(bmBn01, 'Bosque semideciduo montano bajo', codigoBosque).
en_codigos(bdBn01, 'Bosque deciduo montano bajo', codigoBosque).
en_codigos(bsMn04, 'Bosque siempreverde montano ', codigoBosque).
en_codigos(bsAn04, 'Bosque siempreverde montano alto', codigoBosque).
en_codigos(nan, '', codigoBosque).

codigos([X, Y]) :- en_codigos(X, Y, codigoBosque).
codigos([X, Y|Xs]) :- en_codigos(X, Y, codigoBosque), codigos(Xs).
%%%%%%%%%%%%%%%%%%      CODIGOS     %%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%      NIVELES     %%%%%%%%%%%%%%%%%%
nivel(1).
nivel(2).
nivel(3).
nivel(4).
nivel(5).
nivel(6).

niveles(Nivel):-
    nivel(Nivel),
    consult('importaciones.pl'),
    writeln('Clasificadores Prescriptivos: '),
    clasificadoresPrescriptivos(Nivel),
    writeln('Clasificadores Opcionales: '), 
    clasificadoresOpcionales(Nivel);
    writeln('\tNinguno').
%%%%%%%%%%%%%%%%%%      NIVELES     %%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%      BOSQUES     %%%%%%%%%%%%%%%%%%
bosque(Codigo):-
    codigo(Codigo),
    consult('importaciones.pl'),
    getNombre(Codigo), 
    getClasificacion(),
    write('\nReconocido por: \n'), 
    reconocer(Codigo, ceron),
    reconocer(Codigo, valencia),
    reconocer(Codigo, josse),
    write('\nFactores Diagnosticos: \n\n'), 
    factoresDiagnostico(Codigo).
%%%%%%%%%%%%%%%%%%      BOSQUES     %%%%%%%%%%%%%%%%%%