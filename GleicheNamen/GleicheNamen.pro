domains
namen = char*

predicates

nondeterm gleich (namen,namen)
/* genau dann wenn L1 = L2*/

clauses

gleich([],[]).
gleich([K1|R1], [K2|R2]) if gleich(R1,R2) and K1=K2.

goal

gleich ( ['a','n','n','a'],['a','n','n','H'] ).