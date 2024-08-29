pass911.
rossio.
fernando.
jesus.
christian.
jose.
alvaro.

% para comentarios

% rossio es mujer
es_mujer(rossio).

% fernando, jesus y christian son hombres
es_hombre(fernando).
es_hombre(jesus).
es_hombre(christian).



% pass911 es una materia
es_materia(pass911).
es_materia(sin811).
es_materia(asc911).

% imparte
imparte(christian, pass911).
imparte(jose, asc911).
imparte(alvaro, sin811).

% cursan
cursa(rossio, pass911).
cursa(jesus, pass911).
cursa(fernando, pass911).

cursa(rossio, asc911).
cursa(jesus, asc911).
cursa(fernando, asc911).

cursa(jesus, sin811).

% consult('/Users/jesuscerruto/Documents/2:2024/progra/prolog/estudioPROLOG-PAS911.pl').
% se usan mayusculas para declarar variables


% reglas
es_docente_de(X, Y):-imparte(X, Z) , cursa(Y, Z).


% deifinir la regla es companhera de es_companhero_de y es_colega_de
es_companhera_de(A,B):-es_mujer(A), cursa(A, C), cursa(B, C), A\=B.


es_companhero_de(P,Q):-cursa(P, R), cursa(Q, R),es_hombre(P) , P\=Q.

es_colega_de(E,F):-imparte(E,_), imparte(F, _), E\=F. % se usa _ para variables que solo se usan una vez


