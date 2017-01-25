%climatejects taken

climate-moderate(Y) :- Y == moderate.
climate-sunny(Y):- Y == sunny.
climate-cold(Y) :- Y == cold.



climate-required(utd,Y) :- climate-sunny(Y).
climate-required(uta,Y) :- climate-moderate(Y).
climate-required(ucla,Y) :- climate-moderate(Y).
climate-required(ncu,Y) :- climate-moderate(Y).
climate-required(stonyny,Y) :- climate-cold(Y).