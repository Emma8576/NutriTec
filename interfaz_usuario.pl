:- ['BNF'].
:- [dietas].

%Inicio del chat.
main:- inicio.

%Respuesta para entrada esperada.
inicio:-
   leer_entrada(entrada_usuario), %Toma la entrada y la vuelve una lista para su evalución
   oracion(entrada_usuario,[]), %Evalúa  la estructura de la orción.
   entrada_usuario = ['Hola','NutriTec'], %Entrada Válida para el inicio del chat.
   write('Hola, encantado de verlo mejorar su estilo de vida. CuÃ©nteme Â¿en quÃ© lo puedo ayudar?'),nl,continuar. %Respuesta dada

%Respuesta dada para entrada incorrecta.
inicio:-write('Disculpa,no te entendi.'),nl,inicio. %Corregir faltas de ortografia en el texto enviado al usuario

%Continuar:respuesta válida
%Se debe llamar la sentencia que permite la identificacion de respuestas
continuar:-leer_entrada(entrada_usuario),write('Excelente iniciativa. Estamos para asesorarte en todo lo que necesites.'),nl.

%Continuar:respuesta de usuario inválida.
continuar:-write('Disculpa,no entendi.¿Puedes reeplantear tu respuesta?'),nl,continuar.


%Consultar padecimiento
%Consultar tipo de dieta
%Consultar comida (restricciones con la misma)
%Consultar frecuencia de actividad fisíca
