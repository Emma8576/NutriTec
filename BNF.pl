%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
%                           Tarea #3: NutriTec
%                           Asly Barahona Maroto
%                           Emmanuel Calvo Mora
%                           Fabian Gutierrez Jimenez
%                           Joaquin Ramirez Sequiera
%""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:-encoding(utf8).

nombreNutriTec(['NutriTec'|S],S).

%Saludos posibles
saludo(['Hola'|S],S).
saludo(['Buenos','dias'|S],S).
saludo(['Buenas','tardes'|S],S).
saludo(['Buenas','noches'|S],S).

saludoGeneral(S0,S):-saludo(S0,S1),nombreNutriTec(S1,S).

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
verboInfinitivo(['realizar'|S],S).

%Verbos transitivos: verbos conjugados utilizadas en las oraciones

verboTransitivo(p,s,['salgo'|S],S).
verboTransitivo(p,s,['corro'|S],S).
verboTransitivo(p,s,['corro'|S],S).
verboTransitivo(p,s,['deseo'|S],S).
verboTransitivo(p,s,['deseo'|S],S).
verboTransitivo(p,s,['tengo'|S],S).
verboTransitivo(p,s,['Tengo'|S],S).
verboTransitivo(t,s,['quiere'|S],S).
verboTransitivo(p,s,['quiero'|S],S).
verboTransitivo(p,s,['estoy'|S],S).
verboTransitivo(t,s,['diagnosticaron'|S],S).
verboTransitivo(t,s,['han','diagnosticado'|S],S).
verboTransitivo(t,s,['recomendaron'|S],S).
verboTransitivo(t,s,['han','recomendado'|S],S).
verboTransitivo(p,s,['había','pensado'|S],S).
verboTransitivo(p,s,['había','calculado'|S],S).
verboTransitivo(p,s,['habia','pensado'|S],S).
verboTransitivo(p,s,['habia','calculado'|S],S).
verboTransitivo(p,s,['tenía pensado'|S],S).
verboTransitivo(p,s,['tenía calculado'|S],S).
verboTransitivo(p,s,['tenia pensado'|S],S).
verboTransitivo(p,s,['tenia calculado'|S],S).
verboTransitivo(p,s,['prefiero'|S],S).
verboTransitivo(p,s,['hago'|S],S).
verboTransitivo(p,s,['practico'|S],S).
verboTransitivo(t,s,['gusta'|S],S).
verboTransitivo(t,s,['gustaría'|S],S).

verboTransitivo(p,s,['Salgo'|S],S).
verboTransitivo(p,s,['Corro'|S],S).
verboTransitivo(p,s,['Corro'|S],S).
verboTransitivo(p,s,['Deseo'|S],S).
verboTransitivo(p,s,['Deseo'|S],S).
verboTransitivo(p,s,['Tengo'|S],S).
verboTransitivo(p,s,['Tengo'|S],S).
verboTransitivo(t,s,['Quiere'|S],S).
verboTransitivo(p,s,['Quiero'|S],S).
verboTransitivo(p,s,['Estoy'|S],S).
verboTransitivo(t,s,['Diagnosticaron'|S],S).
verboTransitivo(t,s,['Han','diagnosticado'|S],S).
verboTransitivo(t,s,['Recomendaron'|S],S).
verboTransitivo(t,s,['Han','recomendado'|S],S).
verboTransitivo(p,s,['Había','pensado'|S],S).
verboTransitivo(p,s,['Había','calculado'|S],S).
verboTransitivo(p,s,['Habia','pensado'|S],S).
verboTransitivo(p,s,['Habia','calculado'|S],S).
verboTransitivo(p,s,['Tenía','pensado'|S],S).
verboTransitivo(p,s,['Tenía','calculado'|S],S).
verboTransitivo(p,s,['Tenia','pensado'|S],S).
verboTransitivo(p,s,['Tenia','calculado'|S],S).
verboTransitivo(p,s,['Prefiero'|S],S).
verboTransitivo(p,s,['Hago'|S],S).
verboTransitivo(p,s,['Practico'|S],S).
verboTransitivo(t,s,['Gusta'|S],S).
verboTransitivo(t,s,['Gustaría'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PRONOMBRES primera persona
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

nombre(t,p,m,['Salchicha'|S],S).
nombre(t,s,m,['salchicha'|S],S).
nombre(t,s,m,['Jamón'|S],S).
nombre(t,s,m,['jamón'|S],S).
nombre(t,s,m,['Pescado'|S],S).
nombre(t,s,m,['pescado'|S],S).
nombre(t,s,m,['Gallo pinto'|S],S).
nombre(t,s,m,['gallo pinto'|S],S).
nombre(t,s,f,['Avena'|S],S).
nombre(t,s,f,['avena'|S],S).
nombre(t,s,f,['Granola'|S],S).
nombre(t,s,f,['granola'|S],S).
nombre(t,s,f,['Carne'|S],S).
nombre(t,s,f,['carne'|S],S).
nombre(t,s,m,['Huevo'|S],S).
nombre(t,s,m,['huevo'|S],S).
nombre(t,p,f,['Verduras'|S],S).
nombre(t,p,f,['verduras'|S],S).
nombre(t,s,f,['Aguacate'|S],S).
nombre(t,s,f,['aguacate'|S],S).
nombre(t,s,f,['Leche'|S],S).
nombre(t,s,f,['leche'|S],S).
nombre(t,s,f,['Maní'|S],S).
nombre(t,s,m,['maní'|S],S).
nombre(t,s,f,['Fruta'|S],S).
nombre(t,s,f,['fruta'|S],S).
nombre(t,s,m,['Papa'|S],S).
nombre(t,s,f,['papa'|S],S).
nombre(t,s,f,['Tortilla'|S],S).
nombre(t,s,f,['tortilla'|S],S).
nombre(t,s,m,['Queso'|S],S).
nombre(t,s,m,['queso'|S],S).
nombre(t,s,m,['Pollo'|S],S).
nombre(t,s,m,['pollo'|S],S).
nombre(t,s,m,['Atún'|S],S).
nombre(t,s,m,['atún'|S],S).
nombre(t,s,m,['Sopa'|S],S).
nombre(t,s,f,['sopa'|S],S).
nombre(t,s,f,['Ensalada'|S],S).
nombre(t,s,f,['ensalada'|S],S).
nombre(t,s,f,['Pasta'|S],S).
nombre(t,s,f,['pasta'|S],S).
nombre(t,s,f,['Arroz'|S],S).
nombre(t,s,m,['arroz'|S],S).
nombre(t,s,m,['Garbanzos'|S],S).
nombre(t,s,m,['garbanzos'|S],S).
nombre(t,s,f,['Papaya'|S],S).
nombre(t,s,f,['papaya'|S],S).
nombre(t,s,m,['Soya'|S],S).
nombre(t,s,f,['soya'|S],S).
nombre(t,s,m,['Lentejas'|S],S).
nombre(t,s,f,['lentejas'|S],S).
nombre(t,p,f,['Lácteos'|S],S).
nombre(t,p,f,['lácteos'|S],S).

nombre(t,s,m,['sobrepeso'|S],S).
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
nombre(t,s,m,['atún'|S],S).
nombre(t,s,m,['mani'|S],S).
nombre(t,s,f,['carne'|S],S).
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
nombre(t,s,m,['estilo','de','vida'|S],S).
nombre(t,s,f,['vida'|S],S).
nombre(t,s,f,['dieta'|S],S).
nombre(t,s,f,['preferencia'|S],S).
nombre(t,s,m,['ciclismo'|S],S).
nombre(t,s,f,['natación'|S],S).
nombre(t,s,m,['deporte'|S],S).
nombre(t,p,f,['prefrencias'|S],S).
nombre(t,p,f,[_NumCalorias,'calorias'|S],S).
nombre(t,p,f,[_NumCalorias,'para', 'empezar'|S],S).
nombre(t,s,m,['activo'|S],S).
nombre(t,p,f,[_NumVeces,'veces','a','la','semana'|S],S).
nombre(t,p,f,[_NumVeces,'veces','a','la','semana','una','hora'|S],S).
nombre(t,p,f,[_NumVeces,'veces','a','la','semana',_NumHoras,'hora'|S],S).
nombre(t,p,f,[_NumVeces,'veces','a','la','semana',_NumHoras,'horas'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ADJETIVOS : descripciones de los nombres
% Estructura: adjetivo(numeroero[singular o plural], Genero[masculino o femenino], ['adjetivo'|S], S)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

adjetivo(s,m,['saludable'|S],S).
adjetivo(s,f,['saludable'|S],S).
adjetivo(p,m,['saludables'|S],S).
adjetivo(p,f,['saludables'|S],S).
adjetivo(s,m,['sano'|S],S).
adjetivo(p,m,['sanos'|S],S).
adjetivo(s,f,['sana'|S],S).
adjetivo(p,f,['sanas'|S],S).
adjetivo(s,f,['keto'|S],S).
adjetivo(s,f,['Keto'|S],S).
adjetivo(s,f,['vegana'|S],S).
adjetivo(s,f,['pescatriana'|S],S).
adjetivo(s,f,['proteina'|S],S).
adjetivo(s,f,['proteica'|S],S).
adjetivo(s,f,['normal'|S],S).
adjetivo(s,m,['normal'|S],S).
adjetivo(s,m,[_NumVeces,'veces','a','la','semana'|S],S).
adjetivo(s,m,[_NumVeces,'veces','a','la','semana',_NumHoras,'hora'|S],S).
adjetivo(s,m,[_NumVeces,'veces','a','la','semana',_NumHoras,'horas'|S],S).

% SubLista de adjetivos, lista de dietas
adjetivo(s,f,['keto'|S],S).
adjetivo(s,f,['proteina'|S],S).
adjetivo(s,f,['proteica'|S],S).
adjetivo(s,f,['vegetariana'|S],S).
adjetivo(s,f,['vegana'|S],S).
adjetivo(s,f,['paleo'|S],S).
adjetivo(s,f,['dash'|S],S).
adjetivo(s,f,['mediterranea'|S],S).
adjetivo(s,f,['bajo en carbohidratos'|S],S).
adjetivo(s,f,['asiatica'|S],S).
adjetivo(s,f,['atkins'|S],S).
adjetivo(s,f,['detox'|S],S).
adjetivo(s,f,['flexitariana'|S],S).
adjetivo(s,f,['frutal'|S],S).
adjetivo(s,f,['whole30'|S],S).
adjetivo(s,f,['pescatariana'|S],S).

adjetivo(s,f,['Keto'|S],S).
adjetivo(s,f,['Proteina'|S],S).
adjetivo(s,f,['Proteica'|S],S).
adjetivo(s,f,['Vegetariana'|S],S).
adjetivo(s,f,['Vegana'|S],S).
adjetivo(s,f,['Paleo'|S],S).
adjetivo(s,f,['Dash'|S],S).
adjetivo(s,f,['Mediterranea'|S],S).
adjetivo(s,f,['Bajo en carbohidratos'|S],S).
adjetivo(s,f,['Asiatica'|S],S).
adjetivo(s,f,['Atkins'|S],S).
adjetivo(s,f,['Detox'|S],S).
adjetivo(s,f,['Flexitariana'|S],S).
adjetivo(s,f,['Frutal'|S],S).
adjetivo(s,f,['Whole30'|S],S).
adjetivo(s,f,['Pescatariana'|S],S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DETERMINANTE: son palabras que definen la cantidad de un sustantivo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
oracion(S0,S):-agradecimiento(S0,S1),sintagmaNominal(Pers,Num,_Gend,S1,S2),sintagmaVerbal(Pers,Num,S2,S).
oracion(S0,S):-agradecimiento(S0,S1),adverbioNegAf(S1,S2),sintagmaNominal(Pers,Num,_Gend,S2,S3),sintagmaVerbal(Pers,Num,S3,S).
oracion(S0,S):-sintagmaNominal(Pers,Num,_Gend,S0,S1),sintagmaVerbal(Pers,Num,S1,S).
oracion(S0,S):-adverbioNegAf(S0,S1),sintagmaNominal(Pers,Num,_Gend,S1,S2),sintagmaVerbal(Pers,Num,S2,S).
oracion(S0,S):-sintagmaVerbal(_Pers,_Num,S0,S).
oracion(S0,S):-sintagmaNominal(_Pers,_Num,_Gend,S0,S).
oracion(S0,S):-agradecimiento(S0,S).
oracion(S0,S):-saludoGeneral(S0,S).
oracion(S0,S):-adverbioNegAf(S0,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SINTAGMA NOMINAL
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un sustantivo y sus modificadores
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sintagmaNominal(Pers,Num,Gend,S0,S):-pronombre(Pers,Num,Gend,S0,S).
sintagmaNominal(Pers,Num,Gend,S0,S):-complementoDirecto(Pers,Num,Gend,S0,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SINTAGMA VERBAL
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un verbo y sus complementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sintagmaVerbal(Pers,Num,S0,S):-verboTransitivo(Pers,Num,S0,S).
sintagmaVerbal(Pers,Num,S0,S):-verboTransitivo(Pers,Num,S0,S1),complementoDirecto(_Pers2,_Num2,_Gend2,S1,S).
sintagmaVerbal(Pers,Num,S0,S):-verboTransitivo(Pers,Num,S0,S1),verboInfinitivo(S1,S).
sintagmaVerbal(Pers,Num,S0,S):-verboTransitivo(Pers,Num,S0,S1),verboInfinitivo(S1,S2),complementoDirecto(_Pers2,_Num2,_Gend2,S2,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% COMPLEMENTO DIRECTO
% Grupo de palabras que forman un constituyente sintáctico maximal que incluye un verbo y sus complementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

complementoDirecto(Pers,Num,Gend,S0,S):-nombre(Pers,Num,Gend,S0,S).
complementoDirecto(_Pers,Num,Gend,S0,S):-adjetivo(Num,Gend,S0,S).
complementoDirecto(Pers,Num,Gend,S0,S):-nombre(Pers,Num,Gend,S0,S1),adjetivo(Num,Gend,S1,S).
complementoDirecto(Pers,Num,Gend,S0,S):-determinante(Num,Gend,S0,S1),nombre(Pers,Num,Gend,S1,S).
complementoDirecto(Pers,Num,Gend,S0,S):-determinante(Num,Gend,S0,S1),nombre(Pers,Num,Gend,S1,S2),adjetivo(Num,Gend,S2,S).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEER ENTRADA
% Toma un string y lo devuelve como una lista con cada elemento que
% compon�a el string.Permite evaluar la entrada dad por el usuario.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
leer_entrada(List) :-
    read_string(user, "\n", "\r", _, String),
    atom_string(Atom,String),
    atomic_list_concat(List,' ',Atom).
    %write('Entrada procesada: '), write(List), nl. % Imprimir la lista resultan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PRIM NUM
% Busca tomar el primer n�mero encontrado de la oraci�n.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
prim_num([F|_],N) :- atom_number(F,N), !.%Busca tomar el primero elemento como numero

prim_num([_|R],N) :- prim_num(R,N).%Si no se encuentra en la primer palabra se sigue con el resto de la oracion
