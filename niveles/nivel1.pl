fisionomia(bosque, '\tBosque').
fisionomia(arbustal, '\tArbustal').
fisionomia(herbal, '\tHerbazal').

etiquetaFisionomia():-writeln('Fiosionomia: ').

fisionomias(Cf):-
    fisionomia(Cf, Respuesta), writeln(Respuesta).