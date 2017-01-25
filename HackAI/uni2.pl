% University 2

% TOEFL
uni2_toefl_speaking(S):- S >= 30.
uni2_toefl_reading(S):- S >= 30.
uni2_toefl_writing(S):- S >= 30.
uni2_toefl_listening(S):- S >= 30.


% Determine if student clears TOEFL
uni2_toefl_cleared(W, X, Y, Z):- uni2_toefl_speaking(W),
                           uni2_toefl_reading(X),
                           uni2_toefl_writing(Y),
                           uni2_toefl_listening(Z).


%GRE score rules
uni2_gre_verbal(Y) :- Y >= 160.
uni2_gre_quants(Y):- Y >= 167.
uni2_gre_awm(Y) :- Y >= 5.0.

uni2_gre_passed(Y,Z,K):- uni2_gre_verbal(Y),uni2_gre_quants(Z),uni2_gre_awm(K).

%GRE and TOEFL cleared
uni2_exam_cleared(X, Y, Z, A, B, C, D):- uni2_gre_passed(X, Y, Z), uni2_toefl_cleared(A, B, C, D).
 
%workExpjects
uni2_workExp_required(Y):- Y= yes.

%cost
uni2_cost_required(Y):- Y= high.

%application
uni2_admit(G1,G2,G3,T1,T2,T3,T4,W,C) :- uni2_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni2_workExp_required(W),uni2_cost_required(C).