predicates

nondeterm mult(integer,integer,integer)
nondeterm expo(integer,integer,integer)
nondeterm min (integer,integer,integer)
nondeterm fibo(integer,integer)


clauses

mult(_,0,0).
mult(X,Y,Z)  if Y>0 and Y1 = Y-1 and mult(X,Y1,Z1) and Z=Z1+X.

expo(_,0,1).
expo(X,Y,Z) if Y>0 and Y1=Y-1 and expo(X,Y1,Z1) and mult(Z1,X,Z).

min(X,Y,X ) if X<Y.
min(X,Y,Y ) if X>=Y.

fibo(0,1).
fibo(1,1).
fibo(N,Y) if N>1 and aN1= N-1 and N2 = N-2 and fibo(N1,Y1) and fibo(N2,Y2) and Y = Y1+Y2.

goal

fibo(5,Y).