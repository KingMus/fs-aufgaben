predicates
F (symbol)
/* F(x) <=> x kann fliegen */
V (symbol)
/* V(x) <=> x ist ein Vogel */
P (symbol)
/* P(x) <=> x ist ein Pinguin */

clauses
F(X) if V(X).
P("Max").
V(X) :- P(X).

goal
F("Max").