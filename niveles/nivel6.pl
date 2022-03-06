pisosFloristicos(tierrasBajas, '\tTierras bajas').
pisosFloristicos(piemontano, '\tpiemontano').
pisosFloristicos(montanoBajo, '\tmontano bajo').
pisosFloristicos(montano, '\tmontano').
pisosFloristicos(montanoAlto, '\tmontano alto').
pisosFloristicos(tierrasAltoSuperior, '\ttierras alto superior').
pisosFloristicos(subnival, '\tsubnival').

etiquetaPisos():-writeln('Pisos Floristicos: ').

pisos(Cp):-
    pisosFloristicos(Cp, Respuesta), writeln(Respuesta).

tipoAgua(negra, '\tnegra').
tipoAgua(mixta, '\tmixta').
tipoAgua(solidosDisueltos, '\tpor contenido de solidos disueltos').
tipoAgua(salobre, '\tsalobre').
tipoAgua(dulce, '\tdulce').

etiquetaAgua():-writeln('Tipos de agua por propiedades fisico-quimicas: ').

aguas(Ca):-
    tipoAgua(Ca, Respuesta), writeln(Respuesta).