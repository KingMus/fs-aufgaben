predicates

nondeterm halsschmerzen(string, integer) 
/*genau dann wenn x halsschmerzen*/

nondeterm ohrenschmerzen(string, integer)
/*genau dann wenn x ohrenschmerzen*/

nondeterm schmerzempfindlich(string, integer)
/*genau dann wenn x schmerzempfindlich*/

nondeterm temperatur(string, real, integer)
/* temperatur(x, T) genau dann wenn x Temperatur T*/

nondeterm verkohlt(string, integer)
/* genau dann wenn x verkohlt*/

nondeterm ausschlag(string, integer)
/* genau dann wenn x Juckreiz hat */

nondeterm grippe(string, integer)
/* grippe(x) genau dann wenn x hat grippe*/

nondeterm hautverbrennungschwer(string, integer)
/* genau dann wenn schwere Hautverbrennung bei x*/

nondeterm diagnose (string, string, integer)
/* diagnose (X;D) genau dann wenn x hat dieagnose d*/

clauses

diagnose(X,"Grippe",J) if grippe(X,J).
diagnose(X,"Hautverbrennung schwer",J) if hautverbrennungschwer(X,J).

grippe(X,J) if temperatur(X,T,J) and T>38 and halsschmerzen(X,J).
grippe(X,J) if temperatur(X,T,J) and T>38 and ohrenschmerzen(X,J).

hautverbrennungschwer(X,J) if schmerzempfindlich(X,J) and verkohlt(X,J) and ausschlag(X,J) and temperatur(X, T, J) and T>37.

schmerzempfindlich("Ma", 2016).
ausschlag("Ma", 2016).
verkohlt("Ma", 2016).
temperatur("Ma", 38, 2016).
temperatur("Pa", 40, 2014).
halsschmerzen("Pa", 2014).
ohrenschmerzen("Pa", 2014).


goal 

diagnose("Ma", Diagnose, J).