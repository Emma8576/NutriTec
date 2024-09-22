%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
%                           Tarea #3: NutriTec
%                           Asly Barahona Maroto
%                           Emmanuel Calvo Mora
%                           Fabian Gutierrez Jimenez
%                           Joaquin Ramirez Sequiera   
%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

%Saludos posibles
saludo(['Hola'|S],S).
saludo(['Buenos','dias'|S],S).
saludo(['Buenas','tardes'|S],S).
saludo(['Buenas','noches'|S],S).
saludo(['hola'|S], S).
saludo(['nutriTEC'|S], S).
saludo(['buenos'|S], S).
saludo(['dias'|S], S).
saludo(['buenas'|S], S).
saludo(['tardes'|S], S).
saludo(['noches'|S], S).
saludo(['pura'|S], S). 
saludo(['vida'|S], S).
saludo(['saludos'|S], S).
saludo(['qué'|S], S).
saludo(['tal'|S], S).
saludo(['cómo'|S], S).
saludo(['estás'|S], S).
saludo(['bien'|S], S).
saludo(['qué tal'|S], S).
saludo(['todo'|S], S).
saludo(['todo bien'|S], S).
saludo(['hola'|S], S).
saludo(['hey'|S], S).
saludo(['saludos'|S], S).

nombreNutriTec(['NutriTec'|S],S).

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
*/


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% VERBOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Verbo infinitivo: es una forma no Personaonal de un verbo que muestra características propias de un sustantivo

verboInfinitivo(['llevar'|S],S).
verboInfinitivo(['ser'|S],S).
verboInfinitivo(['llegar'|S],S).
verboInfinitivo(['comer'|S],S).
verboInfinitivo(['consumir'|S],S).
verboInfinitivo(['a', 'correr'|S],S).
verboInfinitivo(['a', 'nadar'|S],S).
verboInfinitivo(['a', 'caminar'|S],S).
verboInfinitivo(['hacer'|S],S).
verboInfinitivo(['estar'|S],S).
verboInfinitivo(['seguir'|S],S).
verboInfinitivo(['tener'|S],S).
verboInfinitivo(['conseguir'|S],S).
verboInfinitivo(['obtener'|S],S).
verboInfinitivo(['Llevar'|S],S).
verboInfinitivo(['Ser'|S],S).
verboInfinitivo(['Llegar'|S],S).
verboInfinitivo(['Comer'|S],S).
verboInfinitivo(['Consumir'|S],S).
verboInfinitivo(['A', 'correr'|S],S).
verboInfinitivo(['A', 'nadar'|S],S).
verboInfinitivo(['A', 'caminar'|S],S).
verboInfinitivo(['Hacer'|S],S).
verboInfinitivo(['Estar'|S],S).
verboInfinitivo(['Seguir'|S],S).
verboInfinitivo(['Tener'|S],S).
verboInfinitivo(['Conseguir'|S],S).
verboInfinitivo(['Obtener'|S],S).

%Verbos transitivos: verbos conjugados utilizadas en las oraciones

verboTransitivo(p,s,['salgo'|S],S).
verboTransitivo(p,s,['corro'|S],S).
verboTransitivo(p,s,['corro'|S],S).
verboTransitivo(p,s,['deseo'|S],S).
verboTransitivo(p,s,['deseo'|S],S).
verboTransitivo(p,s,['tengo'|S],S).
verboTransitivo(t,s,['quiere'|S],S).
verboTransitivo(p,s,['quiero'|S],S).
verboTransitivo(p,s,['estoy'|S],S).
verboTransitivo(t,s,['diagnosticaron'|S],S).
verboTransitivo(t,s,['han','diagnosticado'|S],S).
verboTransitivo(t,s,['recomendaron'|S],S).
verboTransitivo(t,s,['han','recomendado'|S],S).
verboTransitivo(p,s,['habia','pensado'|S],S).
verboTransitivo(p,s,['habia','calculado'|S],S).
verboTransitivo(p,s,['prefiero'|S],S).
verboTransitivo(p,s,['hago'|S],S).
verboTransitivo(t,s,['gusta'|S],S).
verboTransitivo(p,s,['deseo'|S],S).
verboTransitivo(p,s,['soy'|S],S).
verboTransitivo(p,s,['diagnosticado'|S],S).
verboTransitivo(p,s,['llevar'|S],S).
verboTransitivo(p,s,['han'|S],S).
verboTransitivo(p,s,['había'|S],S).
verboTransitivo(p,s,['empezar'|S],S).
verboTransitivo(p,s,['corro'|S],S).
verboTransitivo(t,s,['gustaría'|S],S).
verboTransitivo(p,s,['tengo'|S],S).
verboTransitivo(p,s,['llegar'|S],S).
verboTransitivo(p,s,['estoy'|S],S).
verboTransitivo(p,s,['realizo'|S],S).
verboTransitivo(p,s,['practico'|S],S).
verboTransitivo(p,s,['hago'|S],S).
verboTransitivo(p,s,['quiero'|S],S).
verboTransitivo(p,s,['hacer'|S],S).
verboTransitivo(p,s,['padezco'|S],S).
verboTransitivo(p,s,['padecer'|S],S).
verboTransitivo(p,s,['realizar'|S],S).
verboTransitivo(p,s,['seguir'|S],S).
verboTransitivo(p,s,['comer'|S],S).
verboTransitivo(p,s,['beber'|S],S).   
verboTransitivo(p,s,['cocinar'|S],S).
verboTransitivo(p,s,['preparar'|S],S).
verboTransitivo(p,s,['controlar'|S],S).
verboTransitivo(p,s,['analizar'|S],S).
verboTransitivo(p,s,['evaluar'|S],S).
verboTransitivo(p,s,['recomendar'|S],S).
verboTransitivo(p,s,['aumentar'|S],S).
verboTransitivo(p,s,['disminuir'|S],S).
verboTransitivo(p,s,['mantener'|S],S).
verboTransitivo(p,s,['consultar'|S],S).
verboTransitivo(p,s,['informar'|S],S).
verboTransitivo(p,s,['planificar'|S],S).
verboTransitivo(p,s,['adaptar'|S],S).
verboTransitivo(p,s,['organizar'|S],S).
verboTransitivo(p,s,['nutrir'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PRONOMBRES primera Personaona
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pronombre(p,s,n,['Yo'|S],S).
pronombre(p,s,n,['yo'|S],S).
pronombre(p,s,n,['Me'|S],S).
pronombre(p,s,n,['me'|S],S).
pronombre(t,s,n,['Me'|S],S).
pronombre(t,s,n,['me'|S],S).
pronombre(p,s,n,['Mi'|S],S).
pronombre(p,s,n,['mi'|S],S).
pronombre(t,p,n,['Mis'|S],S).
pronombre(t,p,n,['mis'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NOMBRE: nombres que pueden estar dados por un complemento directo o sujeto
% Estructura: nombre(Personaona[primera, segunda o tercera], numeroero[plural o singular], Genero[masculino o femenino], ['nombre'|S], S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%SubLista de nombres, lista de enfermedades
nombre(t,s,f,['hipertensión'|S],S).
nombre(t,s,f,['anemia'|S],S).
nombre(t,s,f,['hipoglucemia'|S],S).
nombre(t,s,f,['intolerancia_lactosa'|S],S).
nombre(t,s,f,['intolerancia_gluten'|S],S).
nombre(t,s,m,['asma'|S],S).
nombre(t,s,f,['diabetes'|S],S).
nombre(t,s,f,['con','diabetes'|S],S).
nombre(t,s,f,['dislipidemia'|S],S).
nombre(t,s,f,['con','dislipidemia'|S],S).
nombre(t,s,f,['hipercolosterolemia'|S],S).
nombre(t,s,f,['con','hipercolosterolemia'|S],S).
nombre(t,s,m,['sobrepeso'|S],S).
nombre(t,s,m,['con','sobrepeso'|S],S).
nombre(t,s,m,['desnutricion'|S],S).
nombre(t,s,m,['con','desnutricion'|S],S).
nombre(t,s,m,['desnutrido'|S],S).
nombre(t,s,f,['desnutrida'|S],S).
nombre(t,s,f,['celiaquía'|S],S).
nombre(t,s,f,['con','celiaquía'|S],S).
nombre(t,s,m,['celiaco'|S],S).
nombre(t,s,f,['celiaca'|S],S).
nombre(t,s,f,['ferropenia'|S],S).
nombre(t,s,f,['con','ferropenia'|S],S).
nombre(t,s,m,['raquitismo'|S],S).
nombre(t,s,f,['con','raquitismo'|S],S).
nombre(t,s,f,['osteoporosis'|S],S).
nombre(t,s,f,['con','osteoporosis'|S],S).
nombre(t,s,f,['enfermedad_cardiaca'|S],S).
nombre(t,s,m,['con','enfermedad_cardiaca'|S],S).
nombre(t,s,m,['estrés'|S],S).
nombre(t,s,m,['con','estrés'|S],S).
nombre(t,s,m,['síndrome_metabólico'|S],S).
nombre(t,s,f,['con','síndrome_metabólico'|S],S).
nombre(t,s,m,['no'|S],S).
nombre(t,s,m,['ninguno'|S],S).
nombre(t,s,f,['ninguna'|S],S).

% Resto de nombres
nombre(t,p,m,['mariscos'|S],S).
nombre(t,s,f,['avena'|S],S).
nombre(t,s,m,['peso'|S],S).
nombre(t,s,f,['granola'|S],S).
nombre(t,s,f,['salchicha'|S],S).
nombre(t,s,m,['jamon'|S],S).
nombre(t,s,m,['pescado'|S],S).
nombre(t,s,m,['huevo'|S],S).
nombre(t,p,f,['verduras'|S],S).
nombre(t,s,f,['leche'|S],S).
nombre(t,s,f,['fruta'|S],S).
nombre(t,s,f,['tortilla'|S],S).
nombre(t,s,m,['queso'|S],S).
nombre(t,s,m,['pollo'|S],S).
nombre(t,s,m,['atun'|S],S).
nombre(t,s,m,['mani'|S],S).
nombre(t,s,f,['carne'|S],S).
nombre(t,s,m,['estilo','de','vida'|S],S).
nombre(t,s,f,['vida'|S],S).
nombre(t,s,f,['dieta'|S],S).
nombre(t,s,f,['preferencia'|S],S).
nombre(t,s,m,['ciclismo'|S],S).
nombre(t,s,f,['natacion'|S],S).
nombre(t,s,m,['deporte'|S],S).
nombre(t,p,f,['prefrencias'|S],S).
nombre(t,p,f,[_NumeroCalorias,'calorias'|S],S).
nombre(t,s,m,['activo'|S],S).
nombre(t,p,f,[_NumeroVeces,'veces','a','la','semana'|S],S).

%palabras de ayuda
/*
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
    sintagmaNominal(Oracion, Oracion1),
    sintagmaVerbal(Oracion1, Oracion2),
    ayuda(Oracion2, Oracion3),
    lee_ayuda(Oracion3, S).
lee_ayuda(Oracion, S) :-
    ayuda(Oracion, S). % caso base: ayuda directa

lee_ayuda(Oracion, S) :-
    sintagmaVerbal(Oracion, Oracion1),
    preposicion(Oracion1, Oracion2),
    ayuda(Oracion2, Oracion3),
    lee_ayuda(Oracion3, S).

lee_ayuda(Oracion, S) :-
    sintagmaNominal(Oracion, Oracion1),
    sintagmaVerbal(Oracion1, Oracion2),
    determinante(Oracion2, Oracion3),
    ayuda(Oracion3, Oracion4),
    lee_ayuda(Oracion4, S).
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADJETIVOS : descripciones de los nombres
% Estructura: adjetivo(numeroero[singular o plural], Genero[masculino o femenino], ['adjetivo'|S], S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SubLista de adjetivos, lista de dietas
adjetivo(s,f,['keto'|S],S).
adjetivo(s,f,['cetogenica'|S],S).
adjetivo(s,f,['proteina'|S],S).
adjetivo(s,f,['proteica'|S],S).
adjetivo(s,f,['vegetariana'|S],S).
adjetivo(s,f,['vegana'|S],S).
adjetivo(s,f,['paleo'|S],S).
adjetivo(s,f,['dash'|S],S).
adjetivo(s,f,['mediterranea'|S],S).
adjetivo(s,f,['low_carb'|S],S).
adjetivo(s,f,['asiatica'|S],S).
adjetivo(s,f,['Atkins'|S],S).
adjetivo(s,f,['detox'|S],S).
adjetivo(s,f,['flexitariana'|S],S).
adjetivo(s,f,['frutal'|S],S).
adjetivo(s,f,['Whole30'|S],S).

%Resto de adjetivos
adjetivo(s,m,['saludable'|S],S).
adjetivo(s,f,['saludable'|S],S).
adjetivo(p,m,['saludables'|S],S).
adjetivo(p,f,['saludables'|S],S).
adjetivo(s,m,['sano'|S],S).
adjetivo(p,m,['sanos'|S],S).
adjetivo(s,f,['sana'|S],S).
adjetivo(p,f,['sanas'|S],S).
adjetivo(s,f,['normal'|S],S).
adjetivo(s,m,['normal'|S],S).
adjetivo(s,m,[_NumeroVeces,'veces','a','la','semana'|S],S).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DETERMINANTE: son palabras que definen la cantidad de un sustantivo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

determinante(s,m,['El'|S],S).
determinante(s,m,['Al'|S],S).
determinante(p,m,['Los'|S],S).
determinante(p,m,['A','los'|S],S).
determinante(s,f,['La'|S],S).
determinante(s,f,['A','la'|S],S).
determinante(p,f,['Las'|S],S).
determinante(p,f,['A','las'|S],S).
determinante(s,m,['Un'|S],S).
determinante(s,m,['A','un'|S],S).
determinante(p,m,['Unos'|S],S).
determinante(p,m,['A','unos'|S],S).
determinante(s,f,['Una'|S],S).
determinante(s,f,['A','una'|S],S).
determinante(p,f,['Unas'|S],S).
determinante(p,f,['A','unas'|S],S).

determinante(s,m,['el'|S],S).
determinante(s,m,['al'|S],S).
determinante(p,m,['los'|S],S).
determinante(p,m,['a','los'|S],S).
determinante(s,f,['la'|S],S).
determinante(s,f,['a','la'|S],S).
determinante(p,f,['las'|S],S).
determinante(p,f,['a','las'|S],S).
determinante(s,m,['un'|S],S).
determinante(s,m,['a','un'|S],S).
determinante(p,m,['unos'|S],S).
determinante(p,m,['a','unos'|S],S).
determinante(s,f,['una'|S],S).
determinante(s,f,['a','una'|S],S).
determinante(p,f,['unas'|S],S).
determinante(p,f,['a','unas'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMIENTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

agradecimiento(['Gracias,'|S],S).
agradecimiento(['gracias,'|S],S).
agradecimiento(['Muchas','Gracias,'|S],S).
agradecimiento(['Muchas','gracias,'|S],S).
agradecimiento(['muchas','gracias'|S],S).
agradecimiento(['Gracias,'|S],S).
agradecimiento(['gracias,'|S],S).
agradecimiento(['Muchas','Gracias,'|S],S).
agradecimiento(['Muchas','gracias,'|S],S).
agradecimiento(['muchas','gracias'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADVERBIO NEGACION AFIRMACION
% Estructura: adverbioNegAf(['adverbioNegAf'|S],S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adverbioNegAf(['si'|S],S).
adverbioNegAf(['Si'|S],S).
adverbioNegAf(['si,'|S],S).
adverbioNegAf(['Si,'|S],S).
adverbioNegAf(['no'|S],S).
adverbioNegAf(['No'|S],S).
adverbioNegAf(['no,'|S],S).
adverbioNegAf(['No,'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ORACION
% BNF que divide a los distintos sintagmas y elementos de las oraciones, verifica si una oracion es valida o no
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
oracion(S0,S):-agradecimiento(S0,S1),sintagmaNominal(Persona,Numero,_Genero,S1,S2),sintagmaVerbal(Persona,Numero,S2,S).
oracion(S0,S):-agradecimiento(S0,S1),adverbioNegAf(S1,S2),sintagmaNominal(Persona,Numero,_Genero,S2,S3),sintagmaVerbal(Persona,Numero,S3,S).
oracion(S0,S):-sintagmaNominal(Persona,Numero,_Genero,S0,S1),sintagmaVerbal(Persona,Numero,S1,S).
oracion(S0,S):-adverbioNegAf(S0,S1),sintagmaNominal(Persona,Numero,_Genero,S1,S2),sintagmaVerbal(Persona,Numero,S2,S).
oracion(S0,S):-sintagmaVerbal(_Persona,_Numero,S0,S).
oracion(S0,S):-sintagmaNominal(_Persona,_Numero,_Genero,S0,S).
oracion(S0,S):-agradecimiento(S0,S).
oracion(S0,S):-saludo(S0,S).
oracion(S0,S):-adverbioNegAf(S0,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SINTAGMA NOMINAL 
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un sustantivo y sus modificadores
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sintagmaNominal(Persona,Numero,Genero,S0,S):-pronombre(Persona,Numero,Genero,S0,S).
sintagmaNominal(Persona,Numero,Genero,S0,S):-complementoDirecto(Persona,Numero,Genero,S0,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SINTAGMA VERBAL
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un verbo y sus complementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sintagmaVerbal(Persona,Numero,S0,S):-verboTransitivo(Persona,Numero,S0,S).
sintagmaVerbal(Persona,Numero,S0,S):-verboTransitivo(Persona,Numero,S0,S1),complementoDirecto(_Persona2,_Numero2,_Genero2,S1,S).
sintagmaVerbal(Persona,Numero,S0,S):-verboTransitivo(Persona,Numero,S0,S1),verboInfinitivo(S1,S).
sintagmaVerbal(Persona,Numero,S0,S):-verboTransitivo(Persona,Numero,S0,S1),verboInfinitivo(S1,S2),complementoDirecto(_Persona2,_Numero2,_Genero2,S2,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMPLEMENTO DIRECTO 
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un verbo y sus complementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

complementoDirecto(Persona,Numero,Genero,S0,S):-nombre(Persona,Numero,Genero,S0,S).
complementoDirecto(_Persona,Numero,Genero,S0,S):-adjetivo(Numero,Genero,S0,S).
complementoDirecto(Persona,Numero,Genero,S0,S):-nombre(Persona,Numero,Genero,S0,S1),adjetivo(Numero,Genero,S1,S).
complementoDirecto(Persona,Numero,Genero,S0,S):-determinante(Numero,Genero,S0,S1),nombre(Persona,Numero,Genero,S1,S).
complementoDirecto(Persona,Numero,Genero,S0,S):-determinante(Numero,Genero,S0,S1),nombre(Persona,Numero,Genero,S1,S2),adjetivo(Numero,Genero,S2,S).