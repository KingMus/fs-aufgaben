predicates 
nondeterm eltern(symbol, symbol)
/* eltern (X, Y) genau dann wenn X Elter von Y ist */
nondeterm grossEltern(symbol, symbol)
/* grossEltern (X, Y) genau dann wenn X Grosselter von Y ist */
nondeterm kind(symbol, symbol)
/* kind (X, Y) genau dann wenn X Kind von Y ist */
nondeterm enkel(symbol, symbol)
/* enkel (X, Y) genau dann wenn X Enkel von Y ist */
nondeterm vater(symbol, symbol)
/* vater (X, Y) genau dann wenn X Vater von Y ist */
nondeterm mutter(symbol, symbol)
/* mutter (X, Y) genau dann wenn X Mutter von Y ist */
nondeterm mann(symbol)
/* mann (X) genau dann wenn X ein Mann ist */
nondeterm frau(symbol)
/* frau (X) genau dann wenn X eine Frau ist */
nondeterm onkel(symbol, symbol)
/* onkel (X, Y) genau dann wenn X Onkel von Y */
nondeterm tante(symbol, symbol)
/* tante (X, Y) genau dann wenn X Tante von Y */
nondeterm schwester(symbol, symbol)
/* schwester (X, Y) genau dann wenn X Schwester von Y */
nondeterm bruder(symbol, symbol)
/* bruder (X, Y) genau dann wenn X Bruder von Y */
nondeterm nachkomme(symbol, symbol)
/* nachkomme (X, Y) genau dann wenn X Nachkomme von Y */
nondeterm vorfahre(symbol, symbol)
/* vorfahre (X, Y) genau dann wenn X vorfahre von Y */

clauses
grossEltern(X,Y) if eltern(X,Z) and eltern(Z,Y).
kind(X,Y) if eltern(Y,X).
enkel(X,Y) if grossEltern(Y,X).
vater(X,Y) if eltern(X,Y) and mann(X).
mutter(X,Y) if eltern(X,Y) and frau(X).
schwester(X,Y) if eltern(Z,X) and eltern(Z,Y) and frau(X) and not(X = Y).
bruder(X,Y) if eltern(Z,X) and eltern(Z,Y) and mann(X) and not(X = Y).
onkel(X,Y) if eltern(Z,Y) and bruder(X,Z).
tante(X,Y) if eltern(Z,Y) and schwester(X,Z).
nachkomme(X,Y) if kind(X,Y).
nachkomme(X,Y) if kind(Z,Y) and nachkomme(X,Z).
vorfahre(X,Y) if nachkomme(Y,X).


eltern(grandpa, homer).
eltern(grandpa, herb).
eltern(homer, lisa).
eltern(homer, bart).
eltern(marge, lisa).
eltern(marge, bart).


mann(homer).
mann(grandpa).
mann(bart).
mann(herb).
frau(lisa).
frau(marge).

goal
vorfahre(X, lisa).