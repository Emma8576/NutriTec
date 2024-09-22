%En esta sección se definen las dietas que el programa puede recomendar al usuario



% Padecimientos
tipos_padecimientos([diabetes, dislipidemia, hipercolesterolemia, sobrepeso, desnutricion,
                        hipertension, anemia, hipoglucemia, intolerancia_lactosa, 
                        intolerancia_gluten, asma, celiquia, ferropenia, raquitismo,
                        osteoporosis, enfermedad_cardiaca, estres, sindrome_metabolico,
                        desnutrido, desnutrida, ningun, ninguna]).

% Dietas
tipos_dietas([keto, cetogenica, proteina, proteica, vegetariana, vegana, 
                  paleo, dash, mediterranea, low_carb, asiatica, 
                  Atkins, detox, flexitariana, frutal, Whole30]).


tipos_comidas([salchicha, 'jamón', pescado, 'gallo pinto', avena, granola, carne, huevo, verduras,
                 aguacate, leche, 'maní', fruta, papa, tortilla,
                 queso, pollo, 'atún', sopa, ensalada, pasta, arroz]).

frecuencia_actividades([0, 1, 2, 3, 4, 5, 6, 7]).

%MEnsajes de recomendación


%Dietas asignadas

%Dieta 1   
dieta('Su dieta sería:
Desayuno:  1 taza de avena con frutos secos.
  1 taza de leche de almendra.
Merienda Mañana: 1 taza de fresas con chía.
Almuerzo:  Ensalada de lentejas con verduras.
Merienda tarde:  1 taza de café negro.
Cena:  Tofu salteado con espinacas.
') :-

%agregar condiciones necesarias para asignar la dieta
% Tipo: Vegana.
% Calorías: Entre 1200 y 2600.
% Padecimientos: Hipercolesterolemia, sobrepeso, diabetes, dislipidemia o ninguno.
% Actividad física: Entre 0 y 3.
% Comidas prohibidas: No puede consumir gallo pinto, verduras, garbanzos, avena, fruta, tortilla, queso o productos de soya.

%Dieta 2
dieta('Su dieta sería:
Desayuno:  1 taza de avena con arándanos frescos.
  1 cda de semillas de chía.
Merienda Mañana: 1 batido de yogur light con fresas y almendras.
Almuerzo:  1 Filete de salmón a la plancha con ensalada verde.
  ½ taza de quinoa.
Merienda tarde:  1 taza de té de hierbas.
  1 rebanada de pan integral con hummus.
Cena:  Ensalada mixta con aguacate y 1 tortilla de maíz.
') :-

%agregar condiciones necesarias para asignar la dieta
% Tipo: Pescatariana.
% Calorías: Entre 2000 y 3000.
% Padecimientos: Sobrepeso, desnutrición, diabetes, dislipidemia o ninguno.
% Actividad física: Entre 0 y 3.
% Comidas prohibidas: No puede consumir huevo, queso, aguacate, leche, frijoles, fruta, garbanzos, papaya, lentejas, pescado, atún o tortilla.


%Dieta 3
dieta('Su dieta sería:
Desayuno:  3 claras de huevo y 1 taza de espinacas. 
  1 rodaja de aguacate. 
Merienda Mañana: 1 taza de yogur bajo en grasa. 
  1 manzana pequeña.
Almuerzo:  Ensalada de verduras mixtas con 150g de pechuga de pollo a la plancha. 
  ½ taza de arroz integral. 
Merienda tarde:  1 taza de té verde. 
  1 rebanada de pan integral con 1 cda de mantequilla de almendra. 
Cena:  Filet de pescado al horno con brócoli al vapor.
') :-

%agregar condiciones necesarias para asignar la dieta
% Tipo: Proteína o keto.
% Calorías: Entre 2900 y 4000.
% Padecimientos: Desnutrición, diabetes, dislipidemia o ninguno.
% Actividad física: Entre 3 y 7.
% Comidas prohibidas: No puede consumir huevo, verduras, aguacate, leche, maní, fruta, papa, carne, tortilla, queso, pollo o atún.


%Dieta 4 
dieta('Su dieta sería:
Desayuno:  1 taza de avena con almendras.
  1 rodaja de aguacate.
Merienda Mañana: 1 manzana.
Almuerzo:  Ensalada de garbanzos y vegetales.
Merienda tarde:  1 taza de té verde.
  1 granola.
Cena:  1 taza de ensalada con quinoa.
') :-

%agregar condiciones necesarias para asignar la dieta
% Tipo: Vegana, proteína o pescatariana.
% Calorías: Entre 2400 y 3900.
% Padecimientos: Hipercolesterolemia, desnutrición, diabetes, dislipidemia o ninguno.
% Actividad física: Entre 2 y 7.
% Comidas prohibidas: No puede consumir gallo pinto, aguacate, fruta, maní, vegetales, papa, garbanzos o granola.

%Dieta 5 
dieta('Su dieta sería:
Desayuno:  3 claras de huevo con espinacas.
Merienda Mañana: 1 taza de té verde.
Almuerzo:  Ensalada de espinacas con 150g de pollo a la plancha.
Merienda tarde:  1 taza de café negro.
Cena:  Filete de carne magra con ensalada.
') :-

%agregar condiciones necesarias para asignar la dieta
% Tipo: Keto.
% Calorías: Entre 1600 y 2700.
% Padecimientos: Sobrepeso o ninguno.
% Actividad física: Entre 0 y 5.
% Comidas prohibidas: No puede consumir huevo, leche, maní, salchichas, jamón, queso o carne.

% DIETA 6
dieta('Su dieta sería:
Desayuno:  1 taza de yogur con frutas.
Merienda Mañana: 1/2 taza de granola.
Almuerzo:  Ensalada mixta con atún.
Merienda tarde: 1 manzana.
Cena:  Pechuga de pollo a la plancha con brócoli.') :- 
    % Tipo: Mediterranea
    % Calorías: Entre 2000 y 3500
    % Padecimientos: Desnutrido, diabetes o ninguno
    % Actividad física: Entre 1 y 3
    % Comidas prohibidas: No puede consumir yogur, fruta, granola, atún, pollo o brócoli.


% DIETA 7
dieta('Su dieta sería:
Desayuno:  1 batido de frutas.
Merienda Mañana: 1/2 aguacate con sal.
Almuerzo:  1 taza de quinoa con verduras.
Merienda tarde: 1 puñado de nueces.
Cena:  Pescado al horno con espárragos.') :- 
    % Tipo: Paleo
    % Calorías: Entre 1800 y 3200
    % Padecimientos: Hipercolesterolemia, dislipidemia o ninguno
    % Actividad física: Entre 0 y 2
    % Comidas prohibidas: No puede consumir fruta, aguacate, quinoa, verduras, nueces, pescado o espárragos.


% DIETA 8
dieta('Su dieta sería:
Desayuno:  1 taza de avena cocida.
Merienda Mañana: 1 plátano.
Almuerzo:  2 tacos de pollo.
Merienda tarde: 1 taza de gelatina.
Cena:  1 taza de lentejas con espinacas.') :- 
    % Tipo: Flexitariana
    % Calorías: Entre 2200 y 3600
    % Padecimientos: Sobrepeso, desnutrido o ninguno
    % Actividad física: Entre 1 y 4
    % Comidas prohibidas: No puede consumir avena, plátano, pollo, tacos, gelatina, lentejas o espinacas.


% DIETA 9
dieta('Su dieta sería:
Desayuno:  2 tostadas integrales con aguacate.
Merienda Mañana: 1 naranja.
Almuerzo:  1 porción de pasta con salsa de tomate.
Merienda tarde: 1 taza de té verde.
Cena:  Sopa de verduras con tofu.') :- 
    % Tipo: Asiática
    % Calorías: Entre 1800 y 3000
    % Padecimientos: Diabetes, hipercolesterolemia o ninguno
    % Actividad física: Entre 1 y 2
    % Comidas prohibidas: No puede consumir tostadas, aguacate, naranja, pasta, salsa, verduras o tofu.


% DIETA 10
dieta('Su dieta sería:
Desayuno:  Smoothie de espinacas y plátano.
Merienda Mañana: 1 taza de frutos rojos.
Almuerzo:  Wrap de pollo con verduras.
Merienda tarde:  Hummus con zanahorias.
Cena:  1 filete de pescado al vapor con quinoa.') :- 
    % Tipo: Detox
    % Calorías: Entre 1500 y 2800
    % Padecimientos: Sobrepeso, desnutrido o ninguno
    % Actividad física: Entre 1 y 3
    % Comidas prohibidas: No puede consumir espinacas, plátano, frutos, pollo, verduras, hummus, zanahorias, pescado o quinoa.


% DIETA 11
dieta('Su dieta sería:
Desayuno:  2 huevos revueltos con espinacas.
Merienda Mañana: 1 pera.
Almuerzo:  1 taza de cuscús con pollo.
Merienda tarde:  1 puñado de almendras.
Cena:  1 taza de verduras al vapor.') :- 
    % Tipo: Vegetariana
    % Calorías: Entre 1900 y 2900
    % Padecimientos: Diabetes, dislipidemia o ninguno
    % Actividad física: Entre 0 y 2
    % Comidas prohibidas: No puede consumir huevo, espinacas, pera, cuscús, pollo, almendras o verduras.


% DIETA 12
dieta('Su dieta sería:
Desayuno:  1 taza de yogur con semillas.
Merienda Mañana: 1/2 taza de avena.
Almuerzo:  1 porción de arroz integral con frijoles.
Merienda tarde: 1 batido de proteínas.
Cena:  1 filete de carne magra.') :- 
    % Tipo: Proteica
    % Calorías: Entre 2100 y 3500
    % Padecimientos: Sobrepeso, desnutrido o ninguno
    % Actividad física: Entre 1 y 3
    % Comidas prohibidas: No puede consumir yogur, semillas, avena, arroz, frijoles, proteínas o carne.
