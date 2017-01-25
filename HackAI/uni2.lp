% University 2

% TOEFL
toefl_speaking(S):- S >= 29.
toefl_reading(S):- S >= 28.
toefl_writing(S):- S >= 29.
toefl_listening(S):- S >= 30.



% Determine if student clears TOEFL
toefl_cleared(W, X, Y, Z):- toefl_speaking(W),
                           toefl_reading(X),
                           toefl_writing(Y),
                           toefl_listening(Z).


 %GRE score rules
 gre_verbal(Y) :- Y >= 155.
 gre_quants(Y):- Y >= 163.
 gre_awm(Y) :- Y >= 3.5.

 gre_passed(Y,Z,K) :- gre_verbal(Y),gre_quants(Z),gre_awm(K).

 exam_uni2_cleared(X, Y, Z, A, B, C, D):- gre_passed(X, Y, Z),
                                          toefl_cleared(A, B, C, D).
