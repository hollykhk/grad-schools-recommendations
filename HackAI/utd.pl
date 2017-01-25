
%GRE score rules

gre_verbal(utd,Y) :- Y >= 155.
gre_quants(utd,Y):- Y >= 163.
gre_awm(utd,Y) :- Y >= 3.5.

gre_passed(X,Y,Z,K) :- gre_verbal(X,Y),gre_quants(X,Z),gre_awm(X,K).