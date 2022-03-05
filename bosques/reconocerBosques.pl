reconocer(Codigo, Reconocedor):- reconocedor(Reconocedor), reconocimiento(Codigo, Reconocedor, Reconocimiento), Reconocimiento; noReconoce.

noReconoce():-writeln('No reconoce').
reconocimientoCeron():-writeln('sector estribaciones de la cordillera occidental, subregion sur').
reconocimientoValencia():- writeln("Bosque de neblina montano, sector sur de la Cordillera Occidental, subregion sur").
reconocimientoJosseCES409113():-writeln("CES409.113 Bosques pluviales piemontanos de los Andes del Norte").
reconocimientoJosseCES409114():-writeln("CES409.114 Bosques piemontanos pluviestacionales subhúmedo de los Andes del Norte").
reconocimientoJosseCES401307():-writeln("CES401.307 Bosque tumbesino deciduo premontano").
reconocimientoJosseCES409112():-writeln("CES409.112 Bosques pluviales montanos bajos de los Andes del Norte").
reconocimientoJosseCES409118():-writeln("CES409.118 Bosques Siempreverde Estacionales montano bajos de los Andes del Norte").
reconocimientoJosseCES409902():-writeln("CES409.902 Bosque montano bajo xérico de los Andes del norte").
reconocimientoJosseCES409110():-writeln("CES409.110 Bosques montanos pluviales de los Andes del Norte").
reconocimientoJosseCES409105():-writeln("CES409.105 Bosques altimontanos norte-andinos siempreverdes").


reconocedor(Reconocedor):- Reconocedor == ceron, writeln('Ceron et al. 1999: '); Reconocedor == valencia, writeln('Valencia et al. 1999: '); Reconocedor == josse, writeln('Josse et al. 2003: ').

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