provinciaBiogeografica(choco, '\tChoco').
provinciaBiogeografica(pacificoEc, '\tPacifico Ecuatorial').
provinciaBiogeografica(andesNor, '\tAndes del Norte').
provinciaBiogeografica(amazoniaNor, '\tAmazonia Noroccidental').

etiquetaProvincia():-writeln('Provincias Biogeograficas: ').

provincias(Cp):-
    provinciaBiogeografica(Cp, Respuesta), writeln(Respuesta).
 

macrorelieve(serrania, '\tserrania').
macrorelieve(valleGlaciar, '\tvalle glaciar').
macrorelieve(valleTectonico, '\tvalle tectonico').
macrorelieve(cordillera, '\tcordillera').
macrorelieve(piedemonte, '\tpiedemonte').
macrorelieve(isla, '\tisla').
macrorelieve(piedemontePeriandino, '\tpiedemonte periandino').
macrorelieve(penillanura, '\tpenillanura').
macrorelieve(llanura, '\tllanura').

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

ombrotipo(seco, '\tseco').
ombrotipo(semiarido, '\tsemiarido').
ombrotipo(desertico, '\tdesertico').
ombrotipo(humedo, '\thumedo').
ombrotipo(subhumedo, '\tsubhumedo').
ombrotipo(hiperhumedo, '\thiperhumedo').
ombrotipo(ultrahumedo, '\tultrahumedo').
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


fenologiaGeneral(siempreverde, '\tsiempreverde').
fenologiaGeneral(siempreverdeEstacional, '\tsiempreverde estacional').
fenologiaGeneral(semideciduo, '\tsemideciduo').
fenologiaGeneral(deciduo, '\tdeciduo').

etiquetaFenologia():-writeln('Fenologia General: ').

fenologias(Cf):-
    fenologiaGeneral(Cf, Respuesta), writeln(Respuesta).

regimenInundacion(inundado, '\tinundado').
regimenInundacion(inundable, '\tinundable').
regimenInundacion(noInundable, '\tno inundable').

etiquetaInundacion():-write('Regimen Inundacion: ').

reInundaciones(Cr):-
    regimenInundacion(Cr, Respuesta), writeln(Respuesta).