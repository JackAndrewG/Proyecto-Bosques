sectorBiogeografico(chocoEc,'Choco Ecuatorial').
sectorBiogeografico(jamaZapotillo,'Jama-Zapotillo').
sectorBiogeografico(cordilleraChoco, 'Cordillera Costera del Choco'). 
sectorBiogeografico(cordilleraCosteraEc, 'cordillera Costera del Pacifico Ecuatorial'). 
sectorBiogeografico(cordilleraOccidental, 'Cordillera Occidental'). 
sectorBiogeografico(catamayoAlamor, 'Catamayo Alamor').
sectorBiogeografico(norteCordilleraOriental, 'Norte Cordillera Oriental').
sectorBiogeografico(surCordilleraOriental, 'Sur Cordillera Oriental').
sectorBiogeografico(paramos, 'Paramos'). 
sectorBiogeografico(valles, 'Valles'). 
sectorBiogeografico(aguaricoPutumayoCoqueta, 'Aguarico Putumayo Coqueta').
sectorBiogeografico(napoCuray, 'Napo Curay'). 
sectorBiogeografico(tigrePastaza, 'Tigre Pastaza'). 
sectorBiogeografico(abanicoPastaza, 'Abanico Pastaza'). 
sectorBiogeografico(cordillerasAmazonicas, 'Cordilleras Amazonicas').

etiquetaSector():-writeln('Sector Biogeografico: ').

sBioge(Sb):-
    sectorBiogeografico(Sb, Respuesta),write('\t'),writeln(Respuesta).


termotipo(infratoprical, '\tInfratoprical').
termotipo(termotropical, '\tTermotropical'). 
termotipo(termotropicalSuperior, '\tTermotropical Superior'). 
termotipo(mesotropical, '\tmesotropical').
termotipo(supratropical, '\tSupratropical'). 
termotipo(orotropical, '\tCrotropical').
termotipo(criorotropical, '\tCriorotropical').

etiquetaTermotipo():-writeln('Termotipo: ').

termotipos(Tm):-
    termotipo(Tm, Respuesta),writeln(Respuesta).

tipoTermotipo(bsPn02, termotipos(termotropical)).
tipoTermotipo(bePn02, termotipos(termotropical)).
tipoTermotipo(bmPn01, termotipos(termotropical)).
tipoTermotipo(bdPn01, termotipos(termotropical)).
tipoTermotipo(bsBn05, termotipos(termotropicalSuperior)).
tipoTermotipo(beBn01, termotipos(termotropicalSuperior)).
tipoTermotipo(bmBn01, termotipos(termotropical)).
tipoTermotipo(bdBn01, termotipos(termotropicalSuperior)).
tipoTermotipo(bsMn04, termotipos(mesotropical)).
tipoTermotipo(bsAn04, termotipos(supratropical)).


origenAguasinundacion(riosOrigenAndino, '\tRios de origen andino').
origenAguasinundacion(cordillerasAmazonicas, '\tRios de cordilleras amazonicas').
origenAguasinundacion(riosOrigenAmazonico, '\tRios de origen amazonico').

etiquetaOrigenAgua():-writeln('Origen de Aguas de Inundacion: ').

origenAguas(Oai):-
    origenAguasinundacion(Oai, Respuesta),writeln(Respuesta).
