/* University 1 Main */

#include 'uni_facts.lp'.
#include 'uni1_rules.lp'.

% University requirements
uni1Suitable(T1, T2, T3, T4, G1, G2, G3, W, C, S, S1, S2, S3):-
    toeflCleared(T2, T2, T3, T4),
    greCleared(G1, G2, G3),
    experience(W),
    cost(C),
    semester(S),
    subject(S1, S2, S3).

  uni1Suitable(G1, G2, G3, W, C, S, S1, S2, S3):-
      greCleared(G1, G2, G3),
      experience(W),
      cost(C),
      semester(S),
      subject(S1, S2, S3).
