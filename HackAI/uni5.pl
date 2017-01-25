% University 5

% TOEFL
uni5_toefl_speaking(S):- S >= 30.
uni5_toefl_reading(S):- S >= 30.
uni5_toefl_writing(S):- S >= 30.
uni5_toefl_listening(S):- S >= 30.


% Determine if student clears TOEFL
uni5_toefl_cleared(W, X, Y, Z):- uni5_toefl_speaking(W),
                           uni5_toefl_reading(X),
                           uni5_toefl_writing(Y),
                           uni5_toefl_listening(Z).


%GRE score rules
uni5_gre_verbal(Y) :- Y >= 152.
uni5_gre_quants(Y):- Y >= 160.
uni5_gre_awm(Y) :- Y >= 3.5.

uni5_gre_passed(Y,Z,K):- uni5_gre_verbal(Y),uni5_gre_quants(Z),uni5_gre_awm(K).

%GRE and TOEFL cleared
uni5_exam_cleared(X, Y, Z, A, B, C, D):- uni5_gre_passed(X, Y, Z), uni5_toefl_cleared(A, B, C, D).
 
%workExpjects
uni5_workExp_required(Y):- Y= yes.

%cost
uni5_cost_required(Y):- Y= high.

%application
uni5_admit(G1,G2,G3,T1,T2,T3,T4,W,C) :- uni5_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni5_workExp_required(W),uni5_cost_required(C).