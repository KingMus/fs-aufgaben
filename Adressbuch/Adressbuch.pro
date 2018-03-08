predicates 

nondeterm adresse(symbol, symbol, integer, symbol, integer, integer)
/* Adresse (Vorname, Nachname, Gebjahr, Ort, PLZ, Tel)*/

clauses
adresse(harry, hirsch, 1991, "Karlsruhe", 76131, 072144238).
adresse(fabian, manz, 1996, "Bermersbach", 76596, 072132568).
adresse(merlin, hoferer, 1996, "Forbach", 76596, 0722345687).
adresse(leif, heckmann, 1997, "Giessen", 35390, 0176463884).
adresse(tim, voigtlaender, 1997, "Gaggenau", 76571, 004931928).
adresse(marco, mueller, 1998, "Gaggenau", 76571, 07225779).
adresse(rot, kaeppchen, 2001, "Hinterer Wald", 77005, 065493820).

goal
adresse(Vorname,Nachname,Gebjahr,Ort,PLZ,Tel) and Gebjahr>2015-18.