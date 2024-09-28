:-encoding(utf8).

%En esta sección se definen las dietas que el programa puede recomendar al usuario

%funcion miembro de una lista
miembro(X,[X|_]). % si el car de la lista es X, true
miembro(X,[_|R]):- miembro(X,R). %Sino, se hace el cdr y se vuelve a revisar por backtracking


% Padecimientos
tipos_padecimientos([diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, intolerancia_lactosa, 
                        intolerancia_gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, sindrome_metabolico,
                        desnutrido, desnutrida, ninguno, ningun, ninguna]).

% Dietas
tipos_dietas([keto, proteina, proteica, vegetariana, vegana, 
                  paleo, dash, mediterranea, low_carb, asiatica, 
                  'Atkins', detox, flexitariana, frutal, 'Whole30', pescatariana]).


tipos_comidas(['salchicha', 'jamón', pescado, 'gallo pinto', avena, granola, carne, huevo, verduras,
                 aguacate, leche, 'maní', fruta, papa, tortilla,
                 queso, pollo, 'atún', sopa, ensalada, pasta, arroz, garbanzos, papaya, soya, lentejas, 'lácteos']).

frecuencia_actividades([0, 1, 2, 3, 4, 5, 6, 7]).

%MEnsajes de recomendación
dieta('Es necesario aumentar la actividad física si desea consumir tantas calorías diarias'):-
    calorias(Cal), (Cal >= 3000),
    actividad(A), (A =< 1).
  
dieta('Es imposible asignarle una dieta vegana si no le gustan los vegetales'):-
    tipo(X), X = vegana, comida(C), C = vegetales.
  
dieta('Es imposible asignarle una dieta pescatariana si no le gusta el pescado'):-
    tipo(X), X = pescatariana, comida(C), C = pescado.
  
dieta('Si padece de sobrepeso no debe consumir tantas calorías diarias'):-
    padecimientos(X), X = sobrepeso, calorias(Cal), (Cal >= 3000).
  
dieta('Si está desnutrido debe consumir más calorías diarias'):-
    padecimientos(X), X = desnutrido, calorias(Cal), (Cal < 2000).
  
dieta('Para mantener tanta actividad física debe de consumir más calorías'):-
    calorias(Cal), (Cal =< 2000),
    actividad(A), (A >= 4).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% DIETA 1
dieta('Su dieta sería:
Desayuno:  4 Huevos picados con verduras. 
  1 de aguacate. 
Merienda Mañana: 1 taza leche. 
  1 taza de fruta. 
1 cdta de mantequilla de maní. 
Almuerzo:  1 taza de vegetales salteados. 
  1 taza de pure de papas. 
1 bistec encebollado (300g) 
Merienda tarde:  1 taza de café o té. 
  2 tortillas del Fogon. 
30g de queso. 
  1 Fruta. 
Cena:  1 taza de ensalada. 
  300g de pollo a la plancha. 
1 lata de atún mediana en agua.') :-
  tipo(T), miembro(T, [proteina, keto, []]),
  calorias(Cal), (Cal=<4000, Cal>=2900), 
  padecimientos(P), miembro(P, [desnutrido, diabetes, dislipidemia, []]), 
  actividad(A), miembro(A, [3, 4, 5, 6, 7]), 
  comida(C), not(miembro(C, [huevo, verduras, aguacate, leche, 'maní', fruta, papa, carne, tortilla, queso, pollo, 'atún'])).

%%% DIETA 2
dieta('Su dieta sería:
Desayuno:  ½ taza de gallo pinto. 
  1 Huevo + rebanada de queso blanco. 
1 cdta de aceite de oliva para preparar el huevo. 
Merienda Mañana: ½ taza de yogurt light. 
  ¼ taza de granola sin azúcar añadida.
1 taza de papaya picada. 
Almuerzo:  2 tazas de ensalada Mixta 
1/3 taza de arroz + ½ taza de frijoles, garbanzos o lentejas. 
  1 Filet de pescado a la plancho 
  Merienda tarde:  1 taza de café o té. 
2 Rebanadas de pan Integral. 
  30g de atún en agua. 
1 cdta de margarina. 
Cena:  2 tazas de ensalada verde mixta. 
  1 tortilla de trigo. 
1 lata de atún mediana en agua. 
  1/8 de aguacate. ') :-
    tipo(T), miembro(T, [pescatariana, []]), 
    calorias(Cal), (Cal<3000, Cal>=2000), 
    padecimientos(P), miembro(P, [sobrepeso, desnutrido, diabetes, dislipidemia, []]), 
    actividad(A), miembro(A, [0, 1, 2, 3]), 
    comida(C), not(miembro(C, [huevo, queso, aguacate, leche, frijoles, fruta, garbanzos, papaya, lenteja, pescado, 'atún', queso, tortilla])).

%%% DIETA 3
dieta('Su dieta sería:
Desayuno:  1 taza de gallo pinto o avena.
Merienda Mañana: 1 taza de frutas con granola.
Almuerzo:  Sopa de garbanzos,
con 1 taza de vegetales.
  Merienda tarde:  1 taza de café o té. 
tortillas con queso de soya.
Cena:  1 taza de ensalada
Pasta con salsa de tomate.') :-
  tipo(T), miembro(T, [vegana, []]), 
  calorias(Cal), (Cal=<2600, Cal>=1200), 
  padecimientos(P), miembro(P, [hipercolesterolemia, sobrepeso, diabetes, dislipidemia, []]), 
  actividad(A), miembro(A, [0, 1, 2, 3]), 
  comida(C), not(miembro(C, ['gallo pinto', verduras, garbanzos, avena, fruta, tortilla, queso, soya])).

%%% DIETA 4
dieta('Su dieta sería:
Desayuno:  3 huevos.
Merienda Mañana: 1 taza leche. 
  1 cdta de mantequilla de maní. 
Almuerzo:  Salchichas con jamón. 
  Merienda tarde: 100g de queso.
Cena: Filet de carne.') :-
  tipo(T), miembro(T, [keto, []]), 
  calorias(Cal),  (Cal<2700, Cal>=1600), 
  padecimientos(P), miembro(P, [sobrepeso, []]), 
  actividad(A), miembro(A, [0, 1, 2, 3, 4, 5]), 
  comida(C), not(miembro(C, [huevo, leche, 'maní', salchicha, 'jamón', queso, carne])).

%%% DIETA 5
dieta('Su dieta sería:
Desayuno:  2 tazas de gallo pinto
1 de aguacate. 
Merienda Mañana: 1 taza de fruta.
  3 cdta de mantequilla de maní. 
Almuerzo:  1 taza de vegetales salteados. 
  1 taza de pure de papas. 
3 tazas de garbanzos.
Merienda tarde:  1 taza de café o té. 
  1 Granola.
1 Fruta. 
Cena:  1 taza de ensalada. 
  2 tazas de garbanzos.
.') :-
  tipo(T), miembro(T, [vegana, proteina, pescatariana, []]), 
  calorias(Cal), (Cal=<3900, Cal>=2400), 
  padecimientos(P), miembro(P, [hipercolesterolemia, desnutrido, diabetes, dislipidemia, []]), 
  actividad(A), miembro(A, [2, 3, 4, 5, 6, 7]), 
  comida(C), not(miembro(C, ['gallo pinto', aguacate, fruta, 'maní', vegetales, papa, garbanzos, granola, fruta])).

%%% DIETA 6
dieta('Su dieta sería:
Desayuno:  1 taza de avena con frutas.
Merienda Mañana: 1 plátano.
Almuerzo:  Ensalada de garbanzos con verduras.
Merienda tarde:  1 taza de té.
Cena:  1 taza de quinoa con verduras.') :-
  tipo(T), miembro(T, [vegana, []]),
  calorias(Cal), (Cal=<2500, Cal>=1500),
  padecimientos(P), miembro(P, [anemia, desnutrido, []]),
  actividad(A), miembro(A, [0, 1, 2]),
  comida(C), not(miembro(C, [carne, pescado, huevo, 'lácteos'])).

%%% DIETA 7
dieta('Su dieta sería:
Desayuno:  2 huevos revueltos con espinacas.
Merienda Mañana: 1 taza de yogur griego.
Almuerzo:  200g de pollo a la plancha con brócoli.
Merienda tarde:  1 manzana.
Cena:  1 taza de arroz integral con frijoles.') :-
  tipo(T), miembro(T, [proteina, []]),
  calorias(Cal), (Cal=<3500, Cal>=2500),
  padecimientos(P), miembro(P, [sobrepeso, []]),
  actividad(A), miembro(A, [3, 4, 5]),
  comida(C), not(miembro(C, ['maní', 'jamón', 'salchicha'])).

%%% DIETA 8
dieta('Su dieta sería:
Desayuno:  1 batido de proteínas con plátano.
Merienda Mañana: 1 taza de fresas.
Almuerzo:  1 taza de lentejas con verduras.
Merienda tarde:  1 puñado de nueces.
Cena:  1 filete de pescado al horno con espárragos.') :-
  tipo(T), miembro(T, [pescatariana, []]),
  calorias(Cal), (Cal<3000, Cal>=2000),
  padecimientos(P), miembro(P, [diabetes, []]),
  actividad(A), miembro(A, [1, 2, 3]),
  comida(C), not(miembro(C, [huevo, 'maní', 'jamón'])).

%%% DIETA 9
dieta('Su dieta sería:
Desayuno:  1 taza de yogur con granola.
Merienda Mañana: 1 naranja.
Almuerzo:  1 taza de quinoa con pollo y verduras.
Merienda tarde:  1 batido de frutas.
Cena:  1 taza de sopa de verduras.') :-
  tipo(T), miembro(T, [mediterranea, []]),
  calorias(Cal), (Cal<3500, Cal>=2500),
  padecimientos(P), miembro(P, [hipertension, []]),
  actividad(A), miembro(A, [2, 3, 4]),
  comida(C), not(miembro(C, ['salchicha', 'jamón', 'queso'])).

%%% DIETA 10
dieta('Su dieta sería:
Desayuno:  1 taza de avena con almendras.
Merienda Mañana: 1 pera.
Almuerzo:  1 taza de ensalada de atún.
Merienda tarde:  1 batido de espinacas.
Cena:  1 taza de arroz con verduras.') :-
  tipo(T), miembro(T, [flexitariana, []]),
  calorias(Cal), (Cal<3000, Cal>=2000),
  padecimientos(P), miembro(P, [anemia, []]),
  actividad(A), miembro(A, [1, 2, 3]),
  comida(C), not(miembro(C, [huevo, 'maní', 'jamón'])).

%%% DIETA 11
dieta('Su dieta sería:
Desayuno:  1 taza de café con leche de almendras.
Merienda Mañana: 1 batido de frutas.
Almuerzo:  1 taza de pasta integral con salsa de tomate.
Merienda tarde:  1 puñado de almendras.
Cena:  1 taza de verduras al vapor.') :-
  tipo(T), miembro(T, [vegetariana, []]),
  calorias(Cal), (Cal<2500, Cal>=1500),
  padecimientos(P), miembro(P, [hipercolesterolemia, []]),
  actividad(A), miembro(A, [0, 1, 2]),
  comida(C), not(miembro(C, [carne, pescado, huevo])).

%%% DIETA 12
dieta('Su dieta sería:
Desayuno:  1 taza de yogur con semillas de chía.
Merienda Mañana: 1 kiwi.
Almuerzo:  1 taza de arroz con pollo y verduras.
Merienda tarde:  1 batido de proteínas.
Cena:  1 filete de ternera con ensalada.') :-
  tipo(T), miembro(T, [proteica, []]),
  calorias(Cal), (Cal<4000, Cal>=3000),
  padecimientos(P), miembro(P, [sobrepeso, desnutrido, []]),
  actividad(A), miembro(A, [4, 5, 6]),
  comida(C), not(miembro(C, ['maní', 'jamón', 'salchicha'])).

%%% DIETA EJEMPLO 1

dieta('Puedes empezar con el siguiente plan alimenticio bajo en grasas.
Desayuno: ½ taza de gallo pinto.
1 Huevo + rebanada de queso blanco.
1 cdta de aceite de oliva para preparar el huevo.
Merienda Mañana: ½ taza de yogurt light.
¼ taza de granola sin azúcar añadida.
1 taza de papaya picada.
Almuerzo: 2 tazas de ensalada Mixta
1/3 taza de arroz + ½ taza de frijoles, garbanzos o lentejas.
1 Filet de pechuga de pollo a la plancho
Merienda tarde: 1 taza de café o té.
2 Rebanadas de pan Integral.
30g de atún en agua.
1 cdta de margarina.
Cena: 2 tazas de ensalada verde mixta.
1 tortilla de trigo.
1 lata de atún mediana en agua.
1/8 de aguacate.'):-

  tipo(T), miembro(T, [proteica, 'Keto', []]),
  calorias(Cal), (Cal<3000, Cal>=1800),
  padecimientos(P), miembro(P, [sobrepeso, desnutrido, dislipidemia, []]),
  actividad(A), miembro(A, [0, 1, 2, 3]),
  comida(C), not(miembro(C, ['maní', 'jamón', 'salchicha'])).
