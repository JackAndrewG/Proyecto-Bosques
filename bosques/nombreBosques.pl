%Relacion entre codigo y nombre
nombre(bsPn02, 'Bosque siempreverde piemontano del ').
nombre(bePn02, 'Bosque siempreverde estacional piemontano del ').
nombre(bmPn01, 'Bosque semideciduo piemontano del ').
nombre(bdPn01, 'Bosque deciduo piemontano del ').
nombre(bsBn05, 'Bosque siempreverde montano bajo del ').
nombre(beBn01, 'Bosque siempreverde estacional montano bajo del ').
nombre(bmBn01, 'Bosque semideciduo montano bajo del ').
nombre(bdBn01, 'Bosque deciduo montano bajo del ').
nombre(bsMn04, 'Bosque siempreverde montano del ').
nombre(bsAn04, 'Bosque siempreverde montano alto del ').

%busca relacion Codigo-Nombre, escribe Nombre del Bosque: , escribe Nombre, escribe sector
getNombre(Codigo):- 
    nombre(Codigo, Nombre), 
    write('Nombre del Bosque: \n\t'), 
    write(Nombre),
    sBioge(catamayoAlamor).
