pisosFloristicos(tierrasBajas, 'tierras bajas').
pisosFloristicos(piemontano, 'piemontano').
pisosFloristicos(montanoBajo, 'montano bajo').
pisosFloristicos(montano, 'montano').
pisosFloristicos(montanoAlto, 'montano alto').
pisosFloristicos(tierrasAltoSuperior, 'tierras alto superior').
pisosFloristicos(subnival, 'subnival').

etiquetaPisos():-writeln('Pisos Floristicos: ').

pisos(Cp):-
    pisosFloristicos(Cp, Respuesta), writeln(Respuesta).

tipoAgua(negra, 'negra').
tipoAgua(mixta, 'mixta').
tipoAgua(solidosDisueltos, 'por contenido de solidos disueltos').
tipoAgua(salobre, 'salobre').
tipoAgua(dulce, 'dulce').

etiquetaAgua():-writeln('Tipos de agua por propiedades fisico-quimicas: ').

aguas(Ca):-
    tipoAgua(Ca, Respuesta), writeln(Respuesta).