regionBiogeografica(litoral, '\tLitoral').
regionBiogeografica(andes, '\tAndes').
regionBiogeografica(amazonia, '\tAmazonia').

etiquetaRegion():-writeln('Region Biogeografica: ').

regionBiogeograficas(Crb):-
    regionBiogeografica(Crb, Respuesta), writeln(Respuesta).