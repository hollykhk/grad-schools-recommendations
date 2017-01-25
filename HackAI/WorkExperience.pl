%workExpjects taken

workExp-yes(Y) :- Y == 1.
workExp-no(Y) :- Y == 0.


workExp-required(utd,Y) :- workExp-no(Y).
workExp-required(uta,Y) :- workExp-yes(Y).
workExp-required(ucla,Y) :- workExp-no(Y).
workExp-required(ncu,Y) :- workExp-yes(Y).
workExp-required(stonyny,Y) :- workExp-no(Y).