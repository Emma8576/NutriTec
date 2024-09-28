:- ['BNF'],[dietas].
:-encoding(utf8).

%Inicio del chat.
main:- inicio.

%Respuesta para entrada esperada.
inicio:-
   leer_entrada(EntradaUsuario), %Toma la entrada y la vuelve una lista para su evaluci�n
   %oracion(EntradaUsuario,[]), %Eval�a  la estructura de la orci�n.
   EntradaUsuario = ['Hola','NutriTec'], %Entrada V�lida para el inicio del chat.
   write('Hola, encantado de verlo mejorar su estilo de vida. Cuénteme ¿en qué lo puedo ayudar?'),nl,continuar. %Respuesta dada

%Si no se optiene la respuesta esperada, el chat no avanza.
inicio:-inicio.
% inicio:-write('Disculpa,no te entendi.'),nl,inicio.Corregir faltas de
% ortografia en el texto enviado al usuario

%Continuar:respuesta v�lida
%Se debe llamar la sentencia que permite la identificacion de respuestas
continuar:-
   leer_entrada(EntradaUsuario),oracion(EntradaUsuario,[]),
   write('Excelente iniciativa. Estamos para asesorarte en todo lo que necesites.'),nl.

%Continuar:respuesta de usuario inv�lida.
continuar:-write('Disculpa,no entendi.�Puedes reeplantear tu respuesta?'),nl,continuar.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SELECCION
% Mediante las respuestas obtenidas del paciente, se realiza una
% seleccion de dieta para el usuario.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%PREGUNTAS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%PADECIMIENTOS
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONSULTAR
%Padecimiento Conocido
consultar_padecimientos(X,_):-know(padecimiento,X),!. %Se detiene la b�squeda.

%Consultar padecimiento
consultar_padecimientos(X):-
  write('Tiene alguna enfermedad por la que has iniciado este proceso?'),nl,
  leer_entrada(EntradaUsuario),
  verificar_padecimientos(X,EntradaUsuario).%Se verifica el padecimiento

%VERIFICAR
%Verifica el padecimiento encontrado.
verificar_padecimientos(X, EntradaUsuario) :-
    oracion(EntradaUsuario, []),
    miembro(X, EntradaUsuario),
    asserta(known(padecimiento, X)),!.%Se detiene si se encuentra un padecimiento

%Manejo del no como respuesta.
verificar_padecimientos([], EntradaUsuario) :-
    oracion(EntradaUsuario,[]),
    miembro(Atom, EntradaUsuario),
    Atom = 'No',
    asserta(known(padecimiento, [])).%Registro de no como padecimiento.

%Entrada no v�lida.
verificar_padecimientos(_, EntradaUsuario) :-
  oracion(EntradaUsuario,[]),
  write('No comprend� lo que indicaste, �puedes volverlo a formular?'),
  leer_entrada(NuevaEntrada), % Se permite una nueva respuesta.
  verificar_padecimientos(_, NuevaEntrada). % Se verifica otra vez

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CALORIAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONSULTAR
%Dato conocido
consultar_calorias(X,_):-know(cant,X),!. %Se detiene la b�squeda.

%Consultar dato
consultar_calorias(X):-
  write('�Tienes pensado una cantidad espec�fica de calor�as diarias por consumir?'),nl,
  leer_entrada(EntradaUsuario),
  verificar_calorias(X,EntradaUsuario).%Se verifica el dato de calorias

%VERIFICAR
%Verifica las calorias.
verificar_calorias(X, EntradaUsuario) :-
    oracion(EntradaUsuario, []),
    miembro(X, EntradaUsuario),
    asserta(known(cant, X)),!.%Se detiene si se encuentran las calorias.

%Manejo del no como respuesta.
verificar_calorias([], EntradaUsuario) :-
    oracion(EntradaUsuario,[]),
    miembro(Atom, EntradaUsuario),
    Atom = 'No',
    asserta(known(cant, [])).%Registro de no como calorias.

%Entrada no v�lida.
verificar_calorias(_, EntradaUsuario) :-
  oracion(EntradaUsuario,[]),
  write('No comprend� lo que indicaste, �puedes volverlo a formular?'),
  leer_entrada(NuevaEntrada), % Se permite una nueva respuesta.
  verificar_calorias(_, NuevaEntrada). % Se verifica otra vez

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ACTIVIDAD
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONSULTAR
%Dato conocido
consultar_actividad(X,_):-know(frecuencia,X),!. %Se detiene la b�squeda.

%Consultar frecuencia de actividad fisica.
consultar_actividad(X):-
  write('�Eres activo f�sicamente?'),nl,
  leer_entrada(EntradaUsuario),
  verificar_actividad(X,EntradaUsuario).%Se verifica el dato de calorias.

%VERIFICAR
%Verifica la frecuencia.
verificar_actividad(X, EntradaUsuario) :-
    oracion(EntradaUsuario, []),
    miembro(X, EntradaUsuario),
    asserta(known(frecuencia, X)),!.%Se detiene si se encuentran la frecuencia de actividad fisica.

%Manejo del no como respuesta.
verificar_actividad([], EntradaUsuario) :-
    oracion(EntradaUsuario,[]),
    miembro(Atom, EntradaUsuario),
    Atom = 'No',
    asserta(known(frecuencia, [])).%Registro de no como actividad fisica realizada.

%Entrada no v�lida.
verificar_actividad(_, EntradaUsuario) :-
  oracion(EntradaUsuario,[]),
  write('No comprend� lo que indicaste, �puedes volverlo a formular?'),
  leer_entrada(NuevaEntrada), % Se permite una nueva respuesta.
  verificar_actividad(_, NuevaEntrada). % Se verifica otra vez


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DIETA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONSULTAR
%Dieta conocidas
consultar_dieta(X,_):-know(diet,X),!. %Se detiene la b�squeda.

%Consultar dieta que no se desea llevar
consultar_dieta(X):-
  write('�Tienes un tipo de dieta que no te gustar�a realizar?'),nl,
  leer_entrada(EntradaUsuario),
  verificar_dieta(X,EntradaUsuario).%Se verifica la dieta elegida.

%VERIFICAR
%Verifica la dieta como entrada.
verificar_dieta(X, EntradaUsuario) :-
    oracion(EntradaUsuario, []),
    miembro(X, EntradaUsuario),
    asserta(known(diet, X)),!.%Se detiene si se encuentra ua dieta.

%Manejo del no como respuesta.
verificar_dieta([], EntradaUsuario) :-
    oracion(EntradaUsuario,[]),
    miembro(Atom, EntradaUsuario),
    Atom = 'No',
    asserta(known(diet, [])).%Registro de no como dieta que no se desea llevar.

%Entrada no v�lida.
verificar_dieta(_, EntradaUsuario) :-
  oracion(EntradaUsuario,[]),
  write('No comprend� lo que indicaste, �puedes volverlo a formular?'),
  leer_entrada(NuevaEntrada), % Se permite una nueva respuesta.
  verificar_dieta(_, NuevaEntrada). % Se verifica otra vez

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%COMIDAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CONSULTAR
%Dieta conocidas
consultar_comida(X,_):-know(comida,X),!. %Se detiene la b�squeda.

%Consultar comida que no se desea comsumir
consultar_comida(X):-
  write('�Qu� alimentos preferir�as no consumir?'),nl,
  leer_entrada(EntradaUsuario),
  verificar_comida(X,EntradaUsuario).%Se verifica la comida elegida.

%VERIFICAR
%Verifica la comida como entrada.
verificar_comida(X, EntradaUsuario) :-
    oracion(EntradaUsuario, []),
    miembro(X, EntradaUsuario),
    asserta(known(comida, X)),!.%Se detiene si se encuentra  una comida.

%Manejo del no como respuesta.
verificar_comida([], EntradaUsuario) :-
    oracion(EntradaUsuario,[]),
    miembro(Atom, EntradaUsuario),
    Atom = 'No',
    asserta(known(comida, [])).%Registro de no como comida.

%Entrada no v�lida.
verificar_comida(_, EntradaUsuario) :-
  oracion(EntradaUsuario,[]),
  write('No comprend� lo que indicaste, �puedes volverlo a formular?'),
  leer_entrada(NuevaEntrada), % Se permite una nueva respuesta.
  verificar_comida(_, NuevaEntrada). % Se verifica otra vez















