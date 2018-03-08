domains
intliste= integer*

predicates

nondeterm sort(intliste, intliste)
/*sort(L1,L29, genau dann wenn L2 sortiert ist und die selben Elemente enthält wie L1*/

nondeterm fuegeein(integer,intliste,intliste)
/* fuegeein(X,L1,L2) genau dann wenn L2 sortiert ist und dieselben Elemente enthält wie L1 und zusätzlich  X*/

clauses
sort([],[]).
sort([X|R],  L) if sort(R,R1) and fuegeein(X,R1,L).

fuegeein(X, [], [X]).
fuegeein(X, [K|R],  [X|[K|R]]) if X<K.
fuegeein(X, [K|R], [K|R1] ) if X>=K and fuegeein(X,R,R1).

goal

sort ([2,4,3], L).