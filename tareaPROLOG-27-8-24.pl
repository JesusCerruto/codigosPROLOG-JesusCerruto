% declarando las personas
maria.
juan.
pedro.
andrea.
jesus.
sofia.
ana.
kain.
abel.
isaac.
sanson.

% declarando hombres
es_hombre(juan).
es_hombre(pedro).
es_hombre(jesus).
es_hombre(kain).
es_hombre(abel).
es_hombre(isaac).
es_hombre(sanson).

% declarando mujeres
es_mujer(maria).
es_mujer(andrea).
es_mujer(sofia).
es_mujer(ana).

% declarando conyugues
es_conyugue(juan, maria).
es_conyugue(jesus, sofia).
es_conyugue(kain, ana).

% declarando progenitores
es_progenitor(juan, pedro).
es_progenitor(juan, andrea).
es_progenitor(juan, jesus).

es_progenitor(maria, pedro).
es_progenitor(maria, andrea).

es_progenitor(andrea, ana).

es_progenitor(jesus, abel).
es_progenitor(sofia, abel).

es_progenitor(kain, isaac).
es_progenitor(kain, sanson).

% reglas
es_esposa_de(A,B) :- es_mujer(A), es_conyugue(B,A).
es_esposo_de(E,F) :- es_hombre(E), es_conyugue(E,F).
es_padre_de(G,H) :- es_hombre(G), es_progenitor(G, H).
es_madre_de(I,J) :- es_mujer(I), es_progenitor(I,J).
es_abuelo_de(C,D) :- es_hombre(C), es_progenitor(C,Z), es_progenitor(Z,D).
es_abuela_de(K,L) :- es_mujer(K), es_progenitor(K,Y), es_progenitor(Y,L).
es_hermano_de(M,N) :- es_hombre(M), es_progenitor(O,M), es_progenitor(O,N), M\=N.
es_hermana_de(P,Q) :- es_mujer(P), es_progenitor(R,P), es_progenitor(R,Q), P\=Q.

es_primo_de(S,T) :- es_hombre(S), es_progenitor(U,S), es_progenitor(V,T), es_hermano_de(U,V); es_hermana_de(U,V).
es_prima_de(P1,P2) :- es_mujer(P1), es_progenitor(Q1,P1), es_progenitor(Q2,P2), es_hermano_de(Q1,Q2); es_hermana_de(Q1,Q2).
es_ancestro_de(A1,D1) :- 
es_descendiente_de(D2,A2) :- 