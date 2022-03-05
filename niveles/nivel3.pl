regionBiogeografica(litoral, 'litoral').
regionBiogeografica(andes, 'andes').
regionBiogeografica(amazonia, 'amazonia').

etiquetaRegion():-writeln('Region Biogeografica: ').

regionBiogeograficas(Crb):-
    regionBiogeografica(Crb, Respuesta), writeln(Respuesta).