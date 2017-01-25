/* University 5 Main */

#include 'uni_facts.lp'.
#include 'uni5_rules.lp'.

% University requirements
uni5Suitable(T1, T2, T3, T4, G1, G2, G3, W, C, S, S1, S2, S3):-
    toeflCleared(T2, T2, T3, T4),
    greCleared(G1, G2, G3),
    experience(W),
    cost(C),
    semester(S),
    subject(S1, S2, S3).

uni5Suitable(G1, G2, G3, W, C, S, S1, S2, S3):-
    greCleared(G1, G2, G3),
    experience(W),
    cost(C),
    semester(S),
    subject(S1, S2, S3).
