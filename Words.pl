%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
%                           Tarea #3: NutriTec
%                           Asly Barahona Maroto
%                           Emmanuel Calvo Mora
%                           Fabian Gutierrez Jimenez
%                           Joaquin Ramirez Sequiera   
%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

%Saludos posibles
saludo([hola|S], S).
saludo([nutriTEC|S], S).
saludo([buenos|S], S).
saludo([dias|S], S).
saludo([buenas|S], S).
saludo([tardes|S], S).
saludo([noches|S], S).
saludo([pura|S], S). 
saludo([vida|S], S).
saludo([saludos|S], S).
saludo([qué|S], S).
saludo([tal|S], S).
saludo([cómo|S], S).
saludo([estás|S], S).
saludo([bien|S], S).
saludo([qué tal|S], S).
saludo([todo|S], S).
saludo([todo bien|S], S).
saludo([hola|S], S).
saludo([hey|S], S).
saludo([saludos|S], S).

%Usado para leer saludo
saludo_inicial(Oracion, S) :-
    lee_saludos(Oracion, S).

lee_saludos(Oracion, S) :-
    saludo(Oracion, Oracion1),
    lee_saludos(Oracion1, S).
lee_saludos(S, S). % caso base: cuando no hay más saludos

%Posibles despedidas
despedida([muchas|S], S).
despedida([gracias|S], S).
despedida([adios|S], S).
despedida([chao|S], S).
despedida([nutriTEC|S], S).
despedida([hasta|S], S).
despedida([luego|S], S).
despedida([hasta luego|S], S).
despedida([hasta pronto|S], S).
despedida([nos vemos|S], S).
despedida([cuídate|S], S).
despedida([que|S], S).
despedida([te|S], S).
despedida([vaya|S], S).
despedida([feliz|S], S).
despedida([día|S], S).
despedida([noche|S], S).
despedida([tarde|S], S).
despedida([chau|S], S).

%Leer despedida
despedida_final(Oracion, S) :-
    lee_despidas(Oracion, S).

lee_despidas(Oracion, S) :-
    despedida(Oracion, Oracion1),
    lee_despidas(Oracion1, S).
lee_despidas(S, S). % caso base: cuando no hay más despedidas

%Tipos de dietas posibles
tipo_dieta(keto, p1).
tipo_dieta(cetogenica, p1).
tipo_dieta(proteica, p2).
tipo_dieta(vegetariana, p3).
tipo_dieta(vegana, p4).
tipo_dieta(ninguno, p5).
tipo_dieta(no, p5).
tipo_dieta(paleo, p6).
tipo_dieta(dash, p7).
tipo_dieta( mediterranea, p8).
tipo_dieta(low_carb, p9).
tipo_dieta(asiatica, p10).
tipo_dieta( Atkins, p11).
tipo_dieta( detox, p12).
tipo_dieta(flexitariana, p13).
tipo_dieta( frutal, p14).
tipo_dieta( Whole30, p15).

%Analizar tipos de dieta

%Lista de preposiciones
preposicion([y|S], S).
preposicion([a|S], S).
preposicion([bajo|S], S).
preposicion([cabe|S], S).
preposicion([con|S], S).
preposicion([de|S], S).
preposicion([desde|S], S).
preposicion([en|S], S).
preposicion([entre|S], S).
preposicion([hacia|S], S).
preposicion([hasta|S], S).
preposicion([para|S], S).
preposicion([por|S], S).
preposicion([según|S], S).
preposicion([son|S], S).
preposicion([sobre|S], S).
preposicion([tras|S], S).
preposicion([durante|S], S).
preposicion([sin|S], S).
preposicion([antes|S], S).
preposicion([después|S], S).
preposicion([junto|S], S).
preposicion([contra|S], S).
preposicion([fuera|S], S).
preposicion([más|S], S).
preposicion([menos|S], S).
preposicion([a través|S], S).

%Verbos más comunes que se pueden usar
verbo([deseo|S], S).
verbo([soy|S], S).
verbo([diagnosticado|S], S).
verbo([llevar|S], S).
verbo([han|S], S).
verbo([había|S], S).
verbo([empezar|S], S).
verbo([corro|S], S).
verbo([gustaría|S], S).
verbo([tengo|S], S).
verbo([llegar|S], S).
verbo([estoy|S], S).
verbo([realizo|S], S).
verbo([practico|S], S).
verbo([hago|S], S).
verbo([quiero|S], S).
verbo([hacer|S], S).
verbo([padezco|S], S).
verbo([padecer|S], S).
verbo([realizar|S], S).
verbo([seguir|S], S).
verbo([comer|S], S).
verbo([beber|S], S).
verbo([cocinar|S], S).
verbo([preparar|S], S).
verbo([controlar|S], S).
verbo([analizar|S], S).
verbo([evaluar|S], S).
verbo([recomendar|S], S).
verbo([aumentar|S], S).
verbo([disminuir|S], S).
verbo([mantener|S], S).
verbo([consultar|S], S).
verbo([informar|S], S).
verbo([planificar|S], S).
verbo([adaptar|S], S).
verbo([organizar|S], S).
verbo([nutrir|S], S).

%pronombres primera persona
pronombre([yo|S], S).
pronombre([mi|S], S).
pronombre([me|S], S).
pronombre([mis|S], S).

%Lista de enfermedades
padecimiento(hipertensión, hipertensión).
padecimiento(anemia, anemia).
padecimiento(hipoglucemia, hipoglucemia).
padecimiento(intolerancia_lactosa, intolerancia_lactosa).
padecimiento(intolerancia_gluten, celiaquía).
padecimiento(asma, asma).
padecimiento(diabetes, diabetes).
padecimiento(dislipidemia, dislipidemia).
padecimiento(hiperlipidemia, dislipidemia).
padecimiento(hipercolesterolemia, dislipidemia).
padecimiento(obesidad, obesidad).
padecimiento(sobrepeso, obesidad).
padecimiento(gordura, obesidad).
padecimiento(gordo, obesidad).
padecimiento(gorda, obesidad).
padecimiento(celiaquía, celiaquía).
padecimiento(celiaco, celiaquía).
padecimiento(celiaca, celiaquía).
padecimiento(ninguno, no).
padecimiento(no, no).
padecimiento(enfermedad_cardiaca, enfermedad_cardiaca).
padecimiento(estrés, estrés).
padecimiento(síndrome_metabólico, síndrome_metabólico).
padecimiento(ferropenia, anemia).
padecimiento(raquitismo, raquitismo).
padecimiento(osteoporosis, osteoporosis).

%Analizar tipos de padecimientos

%palabras de ayuda
ayuda([estilo|S], S).
ayuda([vida|S], S).
ayuda([saludable|S], S).
ayuda([peso|S], S).
ayuda([normal|S], S).
ayuda([mejorar|S], S).
ayuda([salud|S], S).
ayuda([sobrepeso|S], S).
ayuda([diabetes|S], S).
ayuda([dislipidemia|S], S).
ayuda([hiperlipidemia|S], S).
ayuda([hipercolesterolemia|S], S).
ayuda([obesidad|S], S).
ayuda([gordura|S], S).
ayuda([gordo|S], S).
ayuda([gorda|S], S).
ayuda([celiaquía|S], S).
ayuda([celiaco|S], S).
ayuda([celiaca|S], S).
ayuda([gracias|S], S).
ayuda([nutrición|S], S).
ayuda([dieta|S], S).
ayuda([recomendación|S], S).
ayuda([control|S], S).
ayuda([calorías|S], S).
ayuda([micronutrientes|S], S).
ayuda([macronutrientes|S], S).
ayuda([ejercicio|S], S).
ayuda([actividad|S], S).
ayuda([recuperar|S], S).
ayuda([equilibrar|S], S).
ayuda([plan|S], S).
ayuda([metas|S], S).
ayuda([asistir|S], S).
ayuda([orientación|S], S).
ayuda([evaluación|S], S).
ayuda([diagnóstico|S], S).

%Analisis de oracion de ayuda a usuario
oracion_ayuda(Oracion, S) :-
    lee_ayuda(Oracion, S).

lee_ayuda(Oracion, S) :-
    sintagma_nominal(Oracion, Oracion1),
    sintagma_verbal(Oracion1, Oracion2),
    ayuda(Oracion2, Oracion3),
    lee_ayuda(Oracion3, S).
lee_ayuda(Oracion, S) :-
    ayuda(Oracion, S). % caso base: ayuda directa

lee_ayuda(Oracion, S) :-
    sintagma_verbal(Oracion, Oracion1),
    preposicion(Oracion1, Oracion2),
    ayuda(Oracion2, Oracion3),
    lee_ayuda(Oracion3, S).

lee_ayuda(Oracion, S) :-
    sintagma_nominal(Oracion, Oracion1),
    sintagma_verbal(Oracion1, Oracion2),
    determinante(Oracion2, Oracion3),
    ayuda(Oracion3, Oracion4),
    lee_ayuda(Oracion4, S).
    

%incluir sintagmas nominales y verbal