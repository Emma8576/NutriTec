:- ['BNF'],[dietas].
:-encoding(utf8).

:- dynamic known/2.

limpiar_known :-
    retractall(known(comida, _)),
    retractall(known(cactividad, _)),
    retractall(known(padecimiento, _)),
    retractall(known(calorias, _)),
    retractall(known(dieta, _)).


% Inicio del chat.
main:- inicio.

%Respuesta para entrada esperada.
inicio:-
   limpiar_known, % asegurarse que no hay registros anteriores
   leer_entrada(EntradaUsuario), %Toma la entrada y la vuelve una lista para su evalucion
   EntradaUsuario = ['Hola','NutriTec'], %Entrada valida para el inicio del chat.
   write('Hola, encantado de verlo mejorar su estilo de vida. Cuénteme, ¿En qué lo puedo ayudar?'),nl,continuar. %Respuesta dada si se inicia el chat correctamente

inicio:-inicio.%Si no se optiene la respuesta esperada, el chat no avanza.

%Continuar: pregunta por el objetivo del usuario
continuar:-
   leer_entrada(EntradaUsuario),
   oracion(EntradaUsuario,[]), %%%%%%FALTAN ESTAS ORACIONES
   write('Excelente iniciativa. Estamos para asesorarlo en todo lo que necesite.'),nl,
   write(' ¿Tiene alguna enfermedad que debamos considerar para este proceso?'),nl,
   preguntar_padecimiento.

continuar:- %caso respuesta invalida
   write('Disculpe,no entendi su objetivo ¿Puede reeplantear su respuesta?'),nl, continuar.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PADECIMIENTOS

% Preguntar padecimiento: pide y verifica si tiene un padecimiento conocido por el bnf
preguntar_padecimiento:-
   leer_entrada(EntradaUsuario),
   verificar_padecimientos(EntradaUsuario),
   write('Lo tendremos en cuenta ¿Tiene pensado una cantidad especifica de calorias diarias por consumir? '),nl,
   preguntar_calorias.

preguntar_padecimiento:-
   write('¿Tienes pensado una cantidad especifica de calorias diarias por consumir? '),nl,
   asserta(known(padecimiento, [])),
   preguntar_calorias.%caso donde la enfermedad no esta registrada


% Verificar si hay algun padecimiento en la entrada del usuario
verificar_padecimientos(List) :- %falta tratar con enfermedades compuestas (mas de dos palabras.)
    tipos_padecimientos(Padecimientos),
    member(Padecimiento, List),
    member(Padecimiento, Padecimientos),
    asserta(known(padecimiento, Padecimiento)), !.  % Guarda si se encontro un padecimiento


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CALORIAS

% Preguntar padecimiento: pide y verifica si tiene un padecimiento conocido por el bnf
preguntar_calorias:-
   leer_entrada(EntradaUsuario),
   verificar_calorias(EntradaUsuario),
   write('Lo tendremos en cuenta ¿Es activo fisicamente? '),nl, preguntar_actividad.

preguntar_calorias:-
   write('Disculpe,no entendi la cantidad de calorias diarias a consumir ¿Puede reeplantear su respuesta?'),nl, preguntar_calorias.%caso de respuesta invalida

% Verificar si hay algun numero (calorias) en la entrada del usuario
verificar_calorias([Palabra | Resto]) :-
    atom_number(Palabra, Numero), % Convierte cada palabra a un numero
    integer(Numero),
    asserta(known(calorias, Numero)), !. % Almacena las calor�as encontrada

verificar_calorias([Palabra|_]) :-
    Palabra = no,
    asserta(known(calorias, 2500)), !.

verificar_calorias([_ | Resto]) :-
    verificar_calorias(Resto). % Revisa el resto de la lista (de la entrada)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ACTIVIDAD

% Preguntar actividad: pide y verifica si realiza actividad, revisa la oracion con el bnf
preguntar_actividad:-
   leer_entrada(EntradaUsuario),
   oracion(EntradaUsuario,[]), %%FALTA GUARDAR ESTE DATO PARA LA SELECCION
   verificar_actividad(EntradaUsuario),
   write('Lo tendremos en cuenta ¿Que tipo de dieta le gustaria realizar? '),nl, preguntar_dieta.

preguntar_actividad:-
   write('Disculpe,no entendi sus habitos de actividad fisica ¿Puede reeplantear su respuesta?'),nl, preguntar_actividad.%caso de respuesta invalida

verificar_actividad(EntradaUsuario) :-
    ( prim_num(EntradaUsuario, Num) ->
        asserta(known(actividad, Num))
    ; % De lo contrario
        asserta(known(actividad, 1))  % asume la actividad como 1
    ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DIETA

% Preguntar dieta: pide y verifica si tiene una preferencia por una dieta y si es conocida por el bnf
preguntar_dieta:-
   leer_entrada(EntradaUsuario),
   verificar_dieta(EntradaUsuario),
   write('Lo tendremos en cuenta ¿Que alimentos no le gustaria consumir? '),nl,
   preguntar_comida.

preguntar_dieta:-
   write('Disculpe,no entendi su preferencia de dieta ¿Puede reeplantear su respuesta? Considere las dietas tipo keto, proteica, vegetariana, vegana, mpaleo, dash, mediterranea, low_carb, asiatica, Atkins, detox, flexitariana, frutal, Whole30 y pescatariana, o cualquiera de ellas. '),nl, preguntar_dieta.%caso donde la dieta indicada no esta registrada (no hay dietas de ese tipo)

% Verificar si hay algun tipo de dieta valida en la entrada del usuario
verificar_dieta(List) :-
    tipos_dietas(Dietas),
    member(Dieta, List),
    member(Dieta,  Dietas),
    asserta(known(dieta, Dieta)), !.  % Guarda si se encontro un padecimiento


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%COMIDAS QUE NO

% Preguntar comidas: pide y verifica si tiene una preferencia por no comer cierta comida y si es conocida por el bnf
preguntar_comida:-
   leer_entrada(EntradaUsuario),
   verificar_comida(EntradaUsuario),
   write('Ok, lo tendremos en cuenta.'),nl,
   dieta,
   nl,
   leer_entrada(EntradaUsuario),
   write('Con mucho gusto').

preguntar_comida:-
   asserta(known(comida, [])),
   write('Ok.'),nl,
   dieta,
   nl,
   leer_entrada(EntradaUsuario),
   write('Con mucho gusto').
                               %caso donde la comida indicada no esta registrada

% Verificar si hay algun tipo de dieta valida en la entrada del usuario
verificar_comida(List) :-
    tipos_comidas(Comidas),
    member(Comida, List),
    member(Comida,  Comidas),
    asserta(known(comida, Comida)), !.
