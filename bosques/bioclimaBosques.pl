bioclimaPluvial():- write('Pluvial').
bioclimaPluviestacional():- write('Pluviestacional').
bioclimaXerico():- write('Xerico').

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


bioclima(Codigo):- 
    write('Bioclima: \n\t'), 
    tipoBioclima(Codigo, Bioclima), 
    Bioclima, 
    etiquetaOmbrotipo(),
    tipoOmbrotipo(Codigo, Tipo1, Tipo2), 
    Tipo1, 
    Tipo2,write('\n').
