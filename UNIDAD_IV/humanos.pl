% Base de conocimiento
% categoria(instancia).

hombre(adan).
mujer(eva).

%consultar con instancia
%hombre(adan)?.
%true | false

%consultar con variable
%hombre(X).
% X = adan % pasar al siguiente con tab. % terminar con enter
% X = null % ultima respuesta

% relaciones
pareja(adan,eva).

% pareja(H,M) :- hombre(H),mujer(M).

hombre(cain).
hombre(abel).


hijo(cain,adan,eva).
hijo(abel,adan,eva).
%hija(acum,adan,eva).
hija(ej, e, j).
%hijo(S,H,M) :- hombre(S),pareja(H,M).
%hija(S,H,M) :- mujer(S),pareja(H,M).

% inferencias -> razonamiento deductivo

% reglas conjuntivas
%padre(X) :- hombre(X),hijo(S,X,M).
%padre(X) :- hombre(X),hija(S,X,M).

% reglas disjuntivas
%padre(X) :- hombre(X),hijo(S,X,M);hombre(X),hija(S,X,M). 
%padre(X) :- hombre(X),(hijo(S,X,M);hija(S,X,M)). 
padre(X) :- hombre(X),(hija(S,X,M);hijo(S,X,M)). 


%madre(X) :- mujer(X),hijo(S,H,X).
%madre(X) :- mujer(X),hija(S,H,X).
madre(X) :- mujer(X),(hijo(S,H,X);hija(S,H,X)). 

%consultar por inferencias
padre(X).