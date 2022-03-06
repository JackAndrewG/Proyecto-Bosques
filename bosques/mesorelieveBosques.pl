relieve_general():-write('Relieve General:  De montania').

mesorelieve(bsPn02, 'Vertientes, Colinas y Cuestas').
mesorelieve(bePn02, 'Colinas y Cuestas').
mesorelieve(bmPn01, 'Colinas y Cuestas').
mesorelieve(bdPn01, 'Colinas y Cuestas').
mesorelieve(bsBn05, 'Vertientes disectadas').
mesorelieve(beBn01, 'Vertientes disectadas').
mesorelieve(bmBn01, 'Cuesta').
mesorelieve(bdBn01, 'Vertientes disectadas').
mesorelieve(bsMn04, 'Vertientes disectadas').
mesorelieve(bsAn04, 'Vertientes disectadas').

geoforma(Codigo):- 
    write('Geoforma:\n\t'), 
    relieve_general(),
    writeln('\tMacrorelieve: '), 
    tipoMacrorelieve(Codigo,Ma),Ma,
    write('\tMesorelieve: '), 
    mesorelieve(Codigo,Me),writeln(Me).
