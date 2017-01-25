%costjects taken

cost-high(Y) :- Y == high.
cost-moderate(Y) :- Y == moderate.
cost-low(Y) :- Y == low.


cost-required(utd,Y) :- cost-low(Y).
cost-required(uta,Y) :- cost-moderate(Y).
cost-required(ucla,Y) :- cost-moderate(Y).
cost-required(ncu,Y) :- cost-high(Y).
cost-required(stonyny,Y) :- cost-moderate(Y).