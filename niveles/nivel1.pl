fisionomia(bosque, 'bosque').
fisionomia(arbustal, 'arbustal').
fisionomia(herbal, 'herbazal').

etiquetaFisionomia():-writeln('Fiosionomia: ').

fisionomias(Cf):-
    fisionomia(Cf, Respuesta), writeln(Respuesta).