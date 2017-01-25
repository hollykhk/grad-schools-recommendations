%semisterjects taken

semister-fall(Y) :- Y == fall.
semister-spring(Y) :- Y == spring.


semister-required(utd,Y) :- semister-fall(Y).
semister-required(utd,Y) :- semister-spring(Y).
semister-required(uta,Y) :- semister-fall(Y).
semister-required(ucla,Y) :- semister-spring(Y).
semister-required(ncu,Y) :- semister-spring(Y).
semister-required(stonyny,Y) :- semister-fall(Y).