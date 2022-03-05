vegetal():-write('formacion vegetal').
ecosistema():-writeln('ecosistema').

getClasificacion():- 
    write('Clasificacion: \n\t'), 
    vegetal, 
    write(' / '), 
    ecosistema.

 
fisionomia():-
    etiquetaFisionomia(), 
    fisionomias(bosque).



inundabilidad():-
    etiquetaInundacion(),
    reInundaciones(noInundable).

factoresDiagnostico(Codigo):- 
    fisionomia, 
    bioclima(Codigo), 
    biogeografia(), 
    getFenologia(Codigo), 
    piso_bioclimatico(Codigo),
    geoforma(Codigo),
    inundabilidad.
