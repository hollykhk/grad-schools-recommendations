%Subjects taken

sub-ds(Y) :- Y == ds.
sub-ai(Y):- Y == ai.
sub-dm(Y) :- Y == dm.
sub-os(Y) :- Y == os.
sub-ml(Y) :- Y == ml.
sub-cg(Y) :- Y == cg.




sub-required(utd,Y,Z,K) :- sub-ds(Y),sub-ai(Z),sub-dm(K).
sub-required(uta,Y,Z,K) :- sub-ds(Y),sub-ai(Z),sub-os(K).
sub-required(ucla,Y,Z,K) :- sub-ds(Y),sub-ml(Z),sub-cg(K).
sub-required(ncu,Y,Z,K) :- sub-dm(Y),sub-cg(Z),sub-dm(K).
sub-required(stonyny,Y,Z,K) :- sub-ds(Y),sub-ai(Z),sub-dm(K).