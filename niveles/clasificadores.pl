clasificadoresPrescriptivos(Nivel):- 
    Nivel =:= 1, 
    etiquetaFisionomia(), 
    fisionomias(bosque), 
    fisionomias(arbustal), 
    fisionomias(herbal)
    ;
    Nivel =:= 2, writeln('\tMacrobioclima: tropical')
    ;
    Nivel =:= 3, 
    etiquetaRegion(), 
    regionBiogeograficas(litoral), 
    regionBiogeograficas(andes), 
    regionBiogeograficas(amazonia)
    ;
    Nivel =:= 4, 
    etiquetaProvincia(), 
    provincias(choco), 
    provincias(pacificoEc), 
    provincias(andesNor), 
    provincias(amazoniaNor), 
    etiquetaMacrorelieve(),
    macrorelieves(serrania), 
    macrorelieves(valleGlaciar), 
    macrorelieves(valleTectonico), 
    macrorelieves(cordillera),
    macrorelieves(piedemonte),
    macrorelieves(isla),
    macrorelieves(piedemontePeriandino),
    macrorelieves(penillanura),
    macrorelieves(llanura),
    etiquetaOmbrotipo(),
    ombrotipos(desertico),
    ombrotipos(semiarido),
    ombrotipos(seco),
    ombrotipos(subhumedo),
    ombrotipos(humedo),
    ombrotipos(hiperhumedo),
    ombrotipos(ultrahumedo),
    etiquetaFenologia(),
    fenologias(siempreverde),
    fenologias(siempreverdeEstacional),
    fenologias(semideciduo),
    fenologias(deciduo),
    etiquetaInundacion(),
    reInundaciones(inundado),
    reInundaciones(inundable),
    reInundaciones(noInundable)
    ;
    Nivel =:= 5,
    etiquetaSector(),
    sBioge(chocoEc), 
    sBioge(jamaZapotillo), 
    sBioge(cordilleraChoco), 
    sBioge(cordilleraCosteraEc), 
    sBioge(cordilleraOccidental), 
    sBioge(catamayoAlamor), 
    sBioge(norteCordilleraOriental), 
    sBioge(surCordilleraOriental), 
    sBioge(paramos), 
    sBioge(valles), 
    sBioge(aguaricoPutumayoCoqueta), 
    sBioge(napoCuray), 
    sBioge(tigrePastaza), 
    sBioge(abanicoPastaza), 
    sBioge(cordillerasAmazonicas),
    etiquetaTermotipo(),
    termotipos(infratoprical), 
    termotipos(termotropical), 
    termotipos(mesotropical), 
    termotipos(supratropical), 
    termotipos(orotropical), 
    termotipos(criorotropical)
    ;
    Nivel =:= 6,
    etiquetaPisos(),
    pisos(tierrasBajas), 
    pisos(piemontano), 
    pisos(montanoBajo), 
    pisos(montano),
    pisos(montanoAlto), 
    pisos(tierrasAltoSuperior), 
    pisos(subnival).
    
    clasificadoresOpcionales(Nivel):-
        Nivel =:= 5,
        etiquetaOrigenAgua(),
        origenAguas(riosOrigenAndino), 
        origenAguas(cordillerasAmazonicas), 
        origenAguas(riosOrigenAmazonico);
        Nivel =:= 6,
        etiquetaAgua(),
        aguas(negra), 
        aguas(mixta), 
        aguas(solidosDisueltos), 
        aguas(salobre), 
        aguas(dulce).
    
    