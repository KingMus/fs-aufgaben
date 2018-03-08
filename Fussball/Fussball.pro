predicates 
nondeterm spieler(symbol, symbol, integer, symbol, integer, symbol)
/* spieler (Vorname, Nachname, Gebjahr, Pos, Marktwert, Verein) */
nondeterm team(symbol, symbol, symbol, integer)
/* team (Kürzel, Namen, Ort, Liga) */
nondeterm ergebnisse(symbol, symbol, integer, integer, integer)
/* ergebnisse (Heim, Gast, Heimtore, Gasttore, Kalenderwoche) */


clauses
spieler("Martin", "Stoll", 1983, "Verteidigung", 50, "KSC").
spieler("Julian","Green", 1995, "Sturm", 5000, "FCB").
spieler("David", "Alaba", 1992, "Verteidigung", 60000, "FCB").
spieler("Dirk","Orlishausen", 1982, "Tor", 2000, "KSC").

team("FCB", "FC Bayern München", "München", 1).
team("KSC", "Karlsruher SC", "Karlsruhe", 2).

ergebnisse("FCB", "BVB", 1,2,1).
ergebnisse("FCB", "FCK", 2,1,3).

goal
spieler(Vorname, Nachname, Gebjahr, Pos, _, Verein) and
ergebnisse(Heim, Gast, Heimtore, Gasttore, Kalenderwoche) and Kalenderwoche>5-3
and Heimtore>Gasttore.