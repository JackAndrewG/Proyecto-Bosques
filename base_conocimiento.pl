saltoLinea():-write('\n').

codigo(bsPn02).
codigo(bePn02).
codigo(bmPn01).
codigo(bdPn01).
codigo(bsBn05).
codigo(beBn01).
codigo(bmBn01).
codigo(bdBn01).
codigo(bsMn04).
codigo(bsAn04).


getNombre(Codigo):- nombre(Codigo, Nombre), write('Nombre del Bosque: \n\t'), write(Nombre), sector, saltoLinea.%busca relacion Codigo-Nombre, escribe Nombre del Bosque: , escribe Nombre, escribe sector

nombre(bsPn02, 'Bosque siempreverde piemontano del ').%ese codigo tiene ese titulo
nombre(bePn02, 'Bosque siempreverde estacional piemontano del ').
nombre(bmPn01, 'Bosque semideciduo piemontano del ').
nombre(bdPn01, 'Bosque deciduo piemontano del ').
nombre(bsBn05, 'Bosque siempreverde montano bajo del ').
nombre(beBn01, 'Bosque siempreverde estacional montano bajo del ').
nombre(bmBn01, 'Bosque semideciduo montano bajo del ').
nombre(bdBn01, 'Bosque deciduo montano bajo del ').
nombre(bsMn04, 'Bosque siempreverde montano del ').
nombre(bsAn04, 'Bosque siempreverde montano alto del ').

listado():-write('bsPn02 - Bosque siempreverde piemontano'),
write('\nbePn02 - Bosque siempreverde estacional piemontano'),
write('\nbmPn01 - Bosque semideciduo piemontano'),
write('\nbdPn01 - Bosque deciduo piemontano'),
write('\nbsBn05 - Bosque siempreverde montano bajo'),
write('\nbeBn01 - Bosque siempreverde estacional montano bajo'),
write('\nbmBn01 - Bosque semideciduo montano bajo'),
write('\nbdBn01 - Bosque deciduo montano bajo '),
write('\nbsMn04 - Bosque siempreverde montano '),
write('\nbsAn04 - Bosque siempreverde montano alto').
% getClasificacion(Codigo):- clasificacion(Codigo, Clasificacion1, Clasificacion2), write('Clasificacion: '), write(Clasificacion1), write(' / '), write(Clasificacion2), saltoLinea.

% clasificacion(
%     bsPn02; bePn02; bmPn01; bdPn01; bsBn05; beBn01; bmBn01; bdBn01; bsMn04; bsAn04,
%     'formacion vegetal',
%     'ecosistema'
% ).

getClasificacion():- write('Clasificacion: \n\t'), vegetal, write(' / '), ecosistema, saltoLinea.

vegetal():-write('formacion vegetal').
ecosistema():-write('ecosistema').


reconocer(Codigo, Reconocedor):- reconocedor(Reconocedor), reconocimiento(Codigo, Reconocedor, Reconocimiento), Reconocimiento, saltoLinea; noReconoce, saltoLinea.

noReconoce():-write('No reconoce').
reconocimientoCeron():-write('sector estribaciones de la cordillera occidental, subregion sur').
reconocimientoValencia():- write("Bosque de neblina montano, sector sur de la Cordillera Occidental, subregion sur").
reconocimientoJosseCES409113():-write("CES409.113 Bosques pluviales piemontanos de los Andes del Norte").
reconocimientoJosseCES409114():-write("CES409.114 Bosques piemontanos pluviestacionales subhúmedo de los Andes del Norte").
reconocimientoJosseCES401307():-write("CES401.307 Bosque tumbesino deciduo premontano").
reconocimientoJosseCES409112():-write("CES409.112 Bosques pluviales montanos bajos de los Andes del Norte").
reconocimientoJosseCES409118():-write("CES409.118 Bosques Siempreverde Estacionales montano bajos de los Andes del Norte").
reconocimientoJosseCES409902():-write("CES409.902 Bosque montano bajo xérico de los Andes del norte").
reconocimientoJosseCES409110():-write("CES409.110 Bosques montanos pluviales de los Andes del Norte").
reconocimientoJosseCES409105():-write("CES409.105 Bosques altimontanos norte-andinos siempreverdes").



reconocedor(Reconocedor):- Reconocedor == ceron, write('Ceron et al. 1999: '); Reconocedor == valencia, write('Valencia et al. 1999: '); Reconocedor == josse, write('Josse et al. 2003: ').

reconocimiento(bsPn02, ceron, reconocimientoCeron).
reconocimiento(bsPn02, josse, reconocimientoJosseCES409113).
reconocimiento(bmPn01, ceron, reconocimientoCeron).
reconocimiento(bmPn01, josse, reconocimientoJosseCES409114).
reconocimiento(bdPn01, josse, reconocimientoJosseCES401307).
reconocimiento(bsBn05, josse, reconocimientoJosseCES409112).
reconocimiento(beBn01, josse, reconocimientoJosseCES409118).
reconocimiento(bdBn01, josse, reconocimientoJosseCES409902).
reconocimiento(bsMn04, valencia, reconocimientoValencia).
reconocimiento(bsMn04, josse, reconocimientoJosseCES409110).
reconocimiento(bsAn04, josse, reconocimientoJosseCES409105).



josse(codigo):- write("No reconoce").%
josse(codigo):- write("Bosque tumbesino deciduo premontano").%CES401.307
josse(codigo):- write("Bosques altimontanos norte-andinos siempreverdes").%CES409.105
josse(codigo):- write("Bosques montanos pluviales de los Andes del Norte").%CES409.110
josse(codigo):- write("Bosques pluviales montanos bajos de los Andes del Norte").%CES409.112
josse(codigo):- write("Bosques pluviales piemontanos de los Andes del Norte").%CES409.113
josse(codigo):- write("Bosques piemontanos pluviestacionales subhúmedo de los Andes del Norte").%CES409.114
josse(codigo):- write("Bosques Siempreverde Estacionales montano bajos de los Andes del Norte").%CES409.118
josse(codigo):- write("Bosque montano bajo xérico de los Andes del Norte").%CES409.902

fisionomia():-write('Fisionomia: '), write('Bosque'), saltoLinea.

bioclimaPluvial():- write("pluvial").
bioclimaPluviestacional():- write("pluviestacional").
bioclimaXerico():- write("xerico").

tipoBioclima(bsPn02, bioclimaPluvial).
tipoBioclima(bePn02, bioclimaPluviestacional).
tipoBioclima(bmPn01, bioclimaPluviestacional).
tipoBioclima(bdPn01, bioclimaXerico).
tipoBioclima(bsBn05, bioclimaPluvial).
tipoBioclima(beBn01, bioclimaPluviestacional).
tipoBioclima(bmBn01, bioclimaPluviestacional).
tipoBioclima(bdBn01, bioclimaXerico).
tipoBioclima(bsMn04, bioclimaPluvial).
tipoBioclima(bsAn04, bioclimaPluvial).

tipoOmbrotipo(bsPn02, ombrotipoHumedo, ombrotipoHiperhumedo).
tipoOmbrotipo(bePn02, ombrotipoHumedo, ombrotipoNaN).
tipoOmbrotipo(bmPn01, ombrotipoSubhumedo, ombrotipoNaN).
tipoOmbrotipo(bdPn01, ombrotipoSeco, ombrotipoNaN).
tipoOmbrotipo(bsBn05, ombrotipoHumedo, ombrotipoHiperhumedo).
tipoOmbrotipo(beBn01, ombrotipoHumedo, ombrotipoNaN).
tipoOmbrotipo(bmBn01, ombrotipoSubhumedo, ombrotipoNaN).
tipoOmbrotipo(bdBn01, ombrotipoSeco, ombrotipoNaN).
% tipoOmbrotipo(bsMn04, ombrotipoHumedo, ombrotipoHiperhumedo).
% tipoOmbrotipo(bsAn04, ombrotipoHumedo, ombrotipoHiperhumedo).

bioclima(Codigo):- write('Bioclima: \n\t'), tipoBioclima(Codigo, Bioclima), Bioclima, write(' Ombrotipo: '), tipoOmbrotipo(Codigo, Tipo1, Tipo2), Tipo1, Tipo2, saltoLinea.
% bioclima(Codigo):- tipoBioclima(Codigo),.
% bioclima(Codigo):- tipoBioclima(Codigo),.


ombrotipoSeco():-write('seco ').
ombrotipoHumedo():-write('humedo ').
ombrotipoSubhumedo():-write('subhumedo ').
ombrotipoHiperhumedo():-write('hiperhumedo ').
ombrotipoNaN():-write(' ').



region():- write("Andes").
provincia():- write("Andes del Norte").
% sector(catamayo_alamor).
sector():-  write("Catamayo - Alamor").%podemos reutilizar esto para los titulos pq se repite

biogeografia():- write("Biogeografia: \n\tRegion: "),region(),write(", \n\tProvincia: "), provincia(),write(", \n\tSector: "), sector(), saltoLinea.


getFenologia(Codigo):-fenologia(Codigo, Tipo), write('Fenologia: '), write(Tipo), saltoLinea.

fenologia(bsPn02, 'Siempreverde').
fenologia(bePn02, 'Siempreverde estacional').
fenologia(bmPn01, 'Semideciduo').
fenologia(bdPn01, 'Deciduo').
fenologia(bsBn05, 'Siempreverde').
fenologia(beBn01, 'Siempreverde estacional').
fenologia(bmBn01, 'Semideciduo').
fenologia(bdBn01, 'Decidua').
fenologia(bsMn04, 'Siempreverde').
fenologia(bsAn04, 'Siempreverde').


piso(bsPn02, 'Piemontano (400-1600 msnm)').
piso(bePn02, 'Piemontano (400-1600 msnm)').
piso(bmPn01, 'Piemontano (400-1600 msnm)').
piso(bdPn01, 'Piemontano (400-1600 msnm)').
piso(bsBn05, 'Montano (1600-2200 msnm)').
piso(beBn01, 'Montano bajo (1600-2000msnm)').
piso(bmBn01, 'Montano bajo (1600-2200 msnm)').
piso(bdBn01, 'Montano bajo (1600-2200 msnm)').
piso(bsMn04, 'Montano (2200-2900msnm)').
piso(bsAn04, 'Montano alto (2900-3400 msnm)').


termotipo(bsPn02, 'Termotropical').
termotipo(bePn02, 'Termotropical').
termotipo(bmPn01, 'Termotropical').
termotipo(bdPn01, 'Termotropical').
termotipo(bsBn05, 'Termotropical Superior').
termotipo(beBn01, 'Termotropical Superior').
termotipo(bmBn01, 'Termotropical').
termotipo(bdBn01, 'Termotropical Superior').
termotipo(bsMn04, 'Mesotropical').
termotipo(bsAn04, 'Supratropical').


piso_bioclimatico(Codigo):-piso(Codigo, P),write("Piso Bioclimatico: \n\t"),write(P), termotipo(Codigo, Term),write(", \n\tTermotipo: "),write(Term).


relieve_general():-write('Relieve General:  De montania').

macrorelieve(bsPn02, 'Cordillera, Piedemonte').
macrorelieve(bePn02, 'Piedemonte').
macrorelieve(bmPn01, 'Piedemonte').
macrorelieve(bdPn01, 'Piedemonte').
macrorelieve(bsBn05, 'Cordillera').
macrorelieve(beBn01, 'Cordillera, Serranía').
macrorelieve(bmBn01, 'Serranía').
macrorelieve(bdBn01, 'Serranía').
macrorelieve(bsMn04, 'Cordillera').
macrorelieve(bsAn04, 'Cordillera').

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

geoforma(Codigo):-write('\nGeoforma:\n\t'), relieve_general(),write('\n\tMacrorelieve: '), macrorelieve(Codigo,Ma),write(Ma),write('\n\tMesorelieve: '), mesorelieve(Codigo,Me),write(Me).


inundabilidad():-write('\nInundabilidad General: \n\tRegimen de Inundacion: No inundable').

factoresDiagnostico(Codigo):- fisionomia, bioclima(Codigo), biogeografia(), getFenologia(Codigo), piso_bioclimatico(Codigo),geoforma(Codigo),inundabilidad.

bosque(Codigo):-
codigo(Codigo), getNombre(Codigo), getClasificacion(),write('\nReconocido por: \n'), reconocer(Codigo, ceron),reconocer(Codigo, valencia),
reconocer(Codigo, josse),write('\nFactores Diagnosticos: \n\n'), factoresDiagnostico(Codigo). %, valencia(codigo), josse(codigo), factores_diagnostico(codigo).