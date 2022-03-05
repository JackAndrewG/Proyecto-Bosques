provinciaBiogeografica(choco, 'Choco').
provinciaBiogeografica(pacificoEc, 'Pacifico Ecuatorial').
provinciaBiogeografica(andesNor, 'Andes del Norte').
provinciaBiogeografica(amazoniaNor, 'Amazonia Noroccidental').

etiquetaProvincia():-writeln('Provincias Biogeograficas: ').

provincias(Cp):-
    provinciaBiogeografica(Cp, Respuesta), writeln(Respuesta).
 

macrorelieve(serrania, 'serrania').
macrorelieve(valleGlaciar, 'valle glaciar').
macrorelieve(valleTectonico, 'valle tectonico').
macrorelieve(cordillera, 'cordillera').
macrorelieve(piedemonte, 'piedemonte').
macrorelieve(isla, 'isla').
macrorelieve(piedemontePeriandino, 'piedemonte periandino').
macrorelieve(penillanura, 'penillanura').
macrorelieve(llanura, 'llanura').

etiquetaMacrorelieve():-writeln('Macrorelieve: ').

macrorelieves(Cp):-
    macrorelieve(Cp, Respuesta), writeln(Respuesta).

tipoMacrorelieve(bsPn02, macrorelieves(cordillera)).
tipoMacrorelieve(bsPn02, macrorelieves(piedemonte)).
tipoMacrorelieve(bePn02, macrorelieves(piedemonte)).
tipoMacrorelieve(bmPn01, macrorelieves(piedemonte)).
tipoMacrorelieve(bdPn01, macrorelieves(piedemonte)).
tipoMacrorelieve(bsBn05, macrorelieves(cordillera)).
tipoMacrorelieve(beBn01, macrorelieves(cordillera)).
tipoMacrorelieve(beBn01, macrorelieves(serrania)).
tipoMacrorelieve(bmBn01, macrorelieves(serrania)).
tipoMacrorelieve(bdBn01, macrorelieves(serrania)).
tipoMacrorelieve(bsMn04, macrorelieves(cordillera)).
tipoMacrorelieve(bsAn04, macrorelieves(cordillera)).

ombrotipo(seco, 'seco').
ombrotipo(semiarido, 'semiarido').
ombrotipo(desertico, 'desertico').
ombrotipo(humedo, 'humedo').
ombrotipo(subhumedo, 'subhumedo').
ombrotipo(hiperhumedo, 'hiperhumedo').
ombrotipo(ultrahumedo, 'ultrahumedo').
ombrotipo(nan, ' ').

etiquetaOmbrotipo():-writeln('Ombrotipo: ').

ombrotipos(Co):-
    ombrotipo(Co, Respuesta), writeln(Respuesta).

tipoOmbrotipo(bsPn02, ombrotipos(humedo), ombrotipos(hiperhumedo)).
tipoOmbrotipo(bePn02, ombrotipos(humedo), ombrotipos(nan)).
tipoOmbrotipo(bmPn01, ombrotipos(subhumedo), ombrotipos(nan)).
tipoOmbrotipo(bdPn01, ombrotipos(seco), ombrotipos(nan)).
tipoOmbrotipo(bsBn05, ombrotipos(humedo), ombrotipos(hiperhumedo)).
tipoOmbrotipo(beBn01, ombrotipos(humedo), ombrotipos(nan)).
tipoOmbrotipo(bmBn01, ombrotipos(subhumedo), ombrotipos(nan)).
tipoOmbrotipo(bdBn01, ombrotipos(seco), ombrotipos(nan)).
tipoOmbrotipo(bsMn04, ombrotipos(humedo), ombrotipos(hiperhumedo)).
tipoOmbrotipo(bsAn04, ombrotipos(humedo), ombrotipos(hiperhumedo)).


fenologiaGeneral(siempreverde, 'siempreverde').
fenologiaGeneral(siempreverdeEstacional, 'siempreverde estacional').
fenologiaGeneral(semideciduo, 'semideciduo').
fenologiaGeneral(deciduo, 'deciduo').

etiquetaFenologia():-writeln('Fenologia General: ').

fenologias(Cf):-
    fenologiaGeneral(Cf, Respuesta), writeln(Respuesta).

regimenInundacion(inundado, 'inundado').
regimenInundacion(inundable, 'inundable').
regimenInundacion(noInundable, 'no inundable').

etiquetaInundacion():-write('Regimen Inundacion: ').

reInundaciones(Cr):-
    regimenInundacion(Cr, Respuesta), writeln(Respuesta).