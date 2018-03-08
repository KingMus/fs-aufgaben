domains
namen = char*
namenliste= namen*

predicates

nondeterm sort(namenliste, namenliste)
/*sort(L1,L29, genau dann wenn L2 sortiert ist und die selben Elemente enthält wie L1*/

nondeterm fuegeein(namen,namenliste,namenliste)
/* fuegeein(X,L1,L2) genau dann wenn L2 sortiert ist und dieselben Elemente enthält wie L1 und zusätzlich  X*/

nondeterm kleiner(namen, namen)
/* namen (N1,N2) genau dann wenn Name N1 lexikographisch vor N2*/

clauses
sort([],[]).
sort([X|R],  L) if sort(R,R1) and fuegeein(X,R1,L).

fuegeein(X, [], [X]).
fuegeein(X, [K|R],  [X|[K|R]]) if kleiner(X,K).
fuegeein(X, [K|R], [K|R1] ) if not (kleiner(X,K)) and fuegeein(X,R,R1).

kleiner([], [_|_]).
kleiner([X1|_], [X2|_]) if X1<X2.
kleiner([X1|R1], [X2|R2]) if X1=X2 and kleiner(R1,R2).

goal
sort ([['a','n','n','a'],['a','n','n','a','l','e','n','a'],['a','n','n','a']],L).