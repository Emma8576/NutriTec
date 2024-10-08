:-encoding(utf8).

%En esta sección se definen las dietas que el programa puede recomendar al usuario

%Funcion miembro de una lista
miembro(X,[X|_]). % si el car de la lista es X, true
miembro(X,[_|R]):- miembro(X,R). %Sino, se hace el cdr y se vuelve a revisar por backtracking


% Padecimientos
tipos_padecimientos([diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]).

% Dietas
tipos_dietas([keto, proteina, proteica, vegetariana, vegana,
                  paleo, dash, mediterranea, low_carb, asiatica,
                  'Atkins', detox, flexitariana, frutal, 'Whole30', pescatariana, no, cualquiera]).


tipos_comidas([salchicha, salchichas, fresa, kiwi, 'jamón', pescado, pinto, avena, granola, carne, huevo, huevos,
                 verduras, vegetales,
                 aguacate, leche, 'maní', fruta, frijoles, papa, papas, tortilla, queso, cafe, ensalada,
                 queso, pollo, 'atún', sopa, ensalada, pasta, arroz, garbanzos, papaya, soya, lentejas, 'lácteos']).

frecuencia_actividades([0, 1, 2, 3, 4, 5, 6, 7]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%DIETAS

% Casos donde hay entradas que no calzan para recomendar una dieta coherente

dieta:-
    known(calorias, X), X >= 3000,
    known(actividad, Y), Y > 4,
    write('Es necesario aumentar la actividad física si desea consumir tantas calorías diarias. No puedo recomendar una dieta que cumpla dichas espectativas.'),nl.

dieta:-
    known(calorias, X), X =< 2500,
    known(actividad, Y), Y > 4,
    write('Disculpe, es imposible asignarle una dieta con menos de 2500 calorias si realiza ejercicio tan frecuentemente. Es necesario aumentar las calorias diarias'),nl.


dieta:-
    known(dieta, X), (X = vegana; X = vegetariana),
    known(comida, Y),Y= vegetales,
    write('Disculpe, es imposible asignarle una dieta vegana si no le gustan los vegetales.'),nl.

dieta:-
    known(dieta, X), X = pescatariana,
    known(comida, Y),Y= pescado,
    write('Disculpe, es imposible asignarle una dieta pescatariana si no le gusta el pescado.'),nl.

dieta:-
    known(padecimiento, X), X = sobrepeso,
    known(calorias, Y), Y>=3000,
    write('Disculpe, dado que indico que tiene sobrepeso, es imposible asignarle una dieta con mas de 3000 calorias.'),nl.

dieta:-
    known(padecimiento, X), (X = desnutricion ; X = desnutrido ; X = desnutrida),
    known(calorias, Y), Y<2000,
    write('Disculpe, dado que indico que tiene desnutricion, es imposible asignarle una dieta con menos de 2000 calorias.'),nl.

dieta:-
    known(padecimiento, X), X = anemia,
    known(dieta, Y), (Y = keto ; Y = low_carb ; Y = atkins ; Y = detox ; Y = vegana ; Y = vegetariana),
    write('Disculpe, dado que indico que tiene anemia, es imposible asignarle una dieta del tipo indicado, podria ser contraproducente al no ser balanceado. Se recomiendan las dietas tipo mediterraneo, dash, pescatareana o asiatica.'),nl.


%Casos donde se busca una dieta que cumpla

%%% DIETA 1
dieta:-
  known(dieta,T), miembro(T, [proteina, keto, mediterranea, flexitariana, proteica,  [], no, cualquiera]),
  known(calorias, Cal), (Cal=<4000, Cal>=2900),
  known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, desnutricion,
                        anemia, hipoglucemia, asma, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),

  known( actividad, A), miembro(A, [3, 4, 5, 6, 7]),
  known(comida,C), not(miembro(C, [huevo, verduras, aguacate, leche, 'maní', fruta, papa, carne, tortilla, queso, pollo, 'atún'])),
  dieta1.

%%% DIETA 2
dieta:-
    known(dieta,T), miembro(T, [pescatariana, mediterranes, asiatica, flexitariana,  [], no, cualquiera]),
    known(calorias, Cal), (Cal=<3000, Cal>=2000),
    known(padecimiento, P), miembro(P,[dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        anemia, hipoglucemia,
                        gluten, asma, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no] ),
    known( actividad, A), miembro(A, [0, 1, 2, 3]),
    known(comida,C),  not(miembro(C, [huevo, queso, aguacate, leche,'lácteos', frijoles, fruta, garbanzos, papaya, lentejas, pescado, 'atún', queso, tortilla, verduras, pinto, arroz, ensalada])),
    dieta2.

%%% DIETA 3
dieta:-
    known(dieta,T), miembro(T, [vegana, low_carb, vegetariana, flexitariana, detox, [], no, cualquiera]),
    known(calorias, Cal), (Cal=<2600, Cal>=1200),
    known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
    known( actividad, A), miembro(A, [0, 1, 2, 3, 4, 5]),
    known(comida,C), not(miembro(C, [pinto, verduras, vegetales, garbanzos, avena, frutas, fruta, tortillas, queso, soya])),
    dieta3.

%%% DIETA 4
dieta:-
    known(dieta,T), miembro(T, [keto,low_carb, proteica, [], no, cualquiera]),
    known(calorias, Cal), (Cal=<2700, Cal>=1600),
    known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
    known( actividad, A), miembro(A, [0, 1, 2, 3, 4, 5]),
    known(comida,C), not(miembro(C, [huevos, huevo, leche, 'maní', salchicha, 'jamón', queso, carne])),
    dieta4.

%%% DIETA 5
dieta :-
    known(dieta,T), miembro(T, [vegana, vegetariana, keto, proteica, mediterranea, pescatariana, [], no, cualquiera]),
    known(calorias, Cal), (Cal=<3900, Cal>=2400),
    known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
    known( actividad, A), miembro(A, [2, 3, 4, 5, 6, 7]),
    known(comida,C), not(miembro(C, [pinto, vegetales, verduras, papas, papa, aguacate, fruta, 'maní', vegetales, papa, garbanzos, granola, fruta])),
    dieta5.

%%% DIETA 6
dieta :-
  known(dieta,T), miembro(T, [vegana, low_carb, detox, vegetariana, keto, [], no, cualquiera]),
  known(calorias, Cal), (Cal=<2500, Cal>=1500),
  known(padecimiento, P), miembro(P, [anemia, hipercolesterolemia, lactosa, sobrepeso, hipertension, desnutrido, desnutrida, desnutricion, osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
  known( actividad, A), miembro(A, [0, 1, 2]),
  known(comida,C), not(miembro(C, [verduras, garbanzos, frutas])),
  dieta6.

%%% DIETA 7
dieta :-
  known(dieta, T), miembro(T, [proteina, mediterranea,flexitariana, detox, vegetariana, keto,   [], cualquiera]),
  known(calorias, Cal), (Cal =< 3500, Cal >= 2500),
  known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
  known(actividad, A), miembro(A, [3, 4, 5]),
  known(comida, C), not(miembro(C, [huevos, huevo, fruta, frutas, frijoles, verduras, 'lácteos'])),
  dieta7.

%%% DIETA 8
dieta :-
  known(dieta, T), miembro(T, [pescatariana, vegetariana, keto, low_carb, [], cualquiera]),
  known(calorias, Cal), (Cal < 2000, Cal >= 3000),
  known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension,hipoglucemia, lactosa,
                        gluten, asma,  ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        ninguno, ningun, ninguna, no]),
  known(actividad, A), miembro(A, [1, 2, 3]),
  known(comida, C), not(miembro(C, [verduras, fruta, frutas, fresas, fresa, pescado])),
  dieta8.

%%% DIETA 9
dieta :-
  known(dieta, T), miembro(T, [mediterranea, low_carb, [], no, cualquiera]),
  known(calorias, Cal), (Cal < 3500, Cal >= 2500),
  known(padecimiento, P), miembro(P, [hipertension, sobrepeso, [], no, ninguna, ninguno]),
  known(actividad, A), miembro(A, [2, 3, 4]),
  known(comida, C), not(miembro(C, [verduras,vegetales, fruta, frutas, pollo, 'lácteos'])),
  dieta9.

%%% DIETA 10
dieta :-
  known(dieta, T), miembro(T, [flexitariana, mediterranea, no, cualquiera, []]),
  known(calorias, Cal), (Cal < 3000, Cal >= 1500),
  known(padecimiento, P), miembro(P,[diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no] ),
  known(actividad, A), miembro(A, [1, 2, 3]),
  known(comida, C), not(miembro(C, [verduras, 'atún', vegetales, arroz, ensalada])),
  dieta10.

%%% DIETA 11
dieta :-
  known(dieta, T), miembro(T, [vegetariana, no, ninguna, []]),
  known(calorias, Cal), (Cal < 2500, Cal >= 1500),
  known(padecimiento, P), miembro(P, [diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, lactosa,
                        gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, lactosa, sindrome_metabolico,
                        desnutrido, desnutrida, desnutricion, ninguno, ningun, ninguna, no]),
  known(actividad, A), miembro(A, [0, 1, 2]),
  known(comida, C), not(miembro(C, [fruta, frutas, verduras, vegetales])),
  dieta11.

%%% DIETA 12
dieta :-
  known(dieta, T), miembro(T, [proteica, mediterranes, keto, no, ninguna, []]),
  known(calorias, Cal), (Cal < 4000, Cal >= 3000),
  known(padecimiento, P), miembro(P, [sobrepeso, desnutrido, []]),
  known(actividad, A), miembro(A, [4, 5, 6]),
  known(comida, C), not(miembro(C, [pollo, verduras, vegetales, carne])),
  dieta12.

dieta:-
    write('Disculpe, no se encontraron dietas adecuadas a las entradas recibidas').

% !
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dieta1:-
     write('Su dieta sería:
Desayuno:
  4 Huevos picados con verduras.
  1 de aguacate.
Merienda Mañana:
  1 taza leche.
  1 taza de fruta.
  1 cdta de mantequilla de maní.
Almuerzo:
  1 taza de vegetales salteados.
  1 taza de pure de papas.
  1 bistec encebollado (300g)
Merienda tarde:
  1 taza de café o té.
  2 tortillas del Fogon.
  30g de queso.
  1 Fruta.
Cena:
  1 taza de ensalada.
  300g de pollo a la plancha.
  1 lata de atún mediana en agua.').

dieta2:-
    write('Su dieta sería:
Desayuno:
  ½ taza de gallo pinto.
  1 Huevo + rebanada de queso blanco.
  1 cdta de aceite de oliva para preparar el huevo.
Merienda Mañana:
  ½ taza de yogurt light.
  ¼ taza de granola sin azúcar añadida.
  1 taza de papaya picada.
Almuerzo:
  2 tazas de ensalada Mixta
  1/3 taza de arroz + ½ taza de frijoles, garbanzos o lentejas.
  1 Filet de pescado a la plancho
Merienda tarde:
  1 taza de café o té.
  2 Rebanadas de pan Integral.
  30g de atún en agua.
  1 cdta de margarina.
Cena:
  2 tazas de ensalada verde mixta.
  1 tortilla de trigo.
  1 lata de atún mediana en agua.
  1/8 de aguacate. ').

dieta3:-
    write('Su dieta sería:
Desayuno:
  1 taza de gallo pinto o avena.
Merienda Mañana:
  1 taza de frutas con granola.
Almuerzo:
  Sopa de garbanzos,con 1 taza de vegetales.
Merienda tarde:
  1 taza de café o té.
  Tortillas con queso de soya.
Cena:
  1 taza de ensalada
  Pasta con salsa de tomate.').

dieta4:-
    write('Su dieta sería:
Desayuno:
  3 huevos.
Merienda Mañana:
  1 taza leche.
  1 cdta de mantequilla de maní.
Almuerzo:
  Salchichas con jamón.
Merienda tarde:
  100g de queso.
Cena:
  Filet de carne.').

dieta5:-
    write('Su dieta sería:
Desayuno:
  2 tazas de gallo pinto
  1 de aguacate.
Merienda Mañana:
  1 taza de fruta.
  3 cdta de mantequilla de maní.
Almuerzo:
  1 taza de vegetales salteados.
  1 taza de pure de papas.
  3 tazas de garbanzos.
Merienda tarde:
  1 taza de café o té.
  1 Granola.
  1 Fruta.
Cena:
  1 taza de ensalada.
  2 tazas de garbanzos.').

dieta6:-
    write('Su dieta sería:
Desayuno:
  1 taza de avena con frutas.
Merienda Mañana:
  1 plátano.
Almuerzo:
  Ensalada de garbanzos con verduras.
Merienda tarde:
  1 taza de té.
Cena:
  1 taza de quinoa con verduras.').

dieta7 :-
  write('Su dieta sería:
Desayuno:
   2 huevos revueltos con espinacas.
Merienda Mañana::
   1 taza de yogur griego.
Almuerzo:
   200g de pollo a la plancha con brócoli.
Merienda tarde:
   1 manzana.
Cena:
   1 taza de arroz integral con frijoles.').

dieta8 :-
  write('Su dieta sería:
Desayuno:
   1 batido de proteínas con plátano.
Merienda Mañana:
   1 taza de fresas.
Almuerzo:
   1 taza de lentejas con verduras.
Merienda tarde:
   1 puñado de nueces.
Cena:
   1 filete de pescado al horno con espárragos.').

dieta9 :-
  write('Su dieta sería:
Desayuno:
   1 taza de yogur con granola.
Merienda Mañana:
   1 naranja.
Almuerzo:
   1 taza de quinoa con pollo y verduras.
Merienda tarde:
   1 batido de frutas.
Cena:
   1 taza de sopa de verduras.').

dieta10 :-
  write('Su dieta sería::
Desayuno:
   1 taza de avena con almendras.
Merienda Mañana:
   1 pera.
Almuerzo:
   1 taza de ensalada de atún.
Merienda tarde:
   1 batido de espinacas.
Cena:
   1 taza de arroz con verduras.').

dieta11 :-
  write('Su dieta sería::
Desayuno:
   1 taza de café  con leche de almendras.
Merienda Mañana:
   1 batido de frutas.
Almuerzo:
   1 taza de pasta integral con salsa de tomate.
Merienda tarde:
   1 puñado de almendras.
Cena:
   1 taza de verduras al vapor.').

dieta12 :-
  write('Su dieta sería::
Desayuno:
   1 taza de yogur con semillas de chía.
Merienda Mañana:
   1 kiwi.
Almuerzo:
   1 taza de arroz con pollo y verduras.
Merienda tarde:
   1 batido de proteínas.
Cena:
   1 filete de ternera con ensalada.').

