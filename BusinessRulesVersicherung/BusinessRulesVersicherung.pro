predicates

nondeterm versicherungsrabatt(string, integer)
/*Versicherungsrabatt dann wenn Person x bekommt rabat R*/
nondeterm garage(string)
/*x hat garagenrabatt*/
nondeterm garageR(string, integer)
/*garagenrabatt*/
nondeterm unfallfrei(string, integer)
/*unfallfrei seit integer*/
nondeterm unfallfreiR(string, integer)
/*unfallrabatt*/
nondeterm gebjahr(string,integer)
/*gebjahr von x*/
nondeterm alterR(string, integer)
/*altersrabatt*/

clauses

versicherungsrabatt (X,R) if garageR(X,R1) and alterR(X,R2) and unfallfreiR(X,R3) and R=R1+R2+R3.

garageR(X,12) if garage(X).
garageR(X,0) if not(garage(X)).
alterR(X,15) if gebjahr(X,J) and J<1993.
alterR(X,0) if gebjahr(X,J) and J>1993.
unfallfreiR(X,R) if unfallfrei(X,J) and R = J*10 and J<=5.
unfallfreiR(X,R) if unfallfrei(X,J) and R = 50 and J>5.


garage("Otto").
gebjahr("Otto", 1995).
unfallfrei("Otto",3).

goal

versicherungsrabatt("Otto",R).