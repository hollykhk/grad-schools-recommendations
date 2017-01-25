% University 4

% TOEFL
uni4_toefl_speaking(S):- S >= 30.
uni4_toefl_reading(S):- S >= 30.
uni4_toefl_writing(S):- S >= 30.
uni4_toefl_listening(S):- S >= 30.


% Determine if student clears TOEFL
uni4_toefl_cleared(W, X, Y, Z):- uni4_toefl_speaking(W),
                           uni4_toefl_reading(X),
                           uni4_toefl_writing(Y),
                           uni4_toefl_listening(Z).


%GRE score rules
uni4_gre_verbal(Y) :- Y >= 159.
uni4_gre_quants(Y):- Y >= 167.
uni4_gre_awm(Y) :- Y >= 4.0.

uni4_gre_passed(Y,Z,K):- uni4_gre_verbal(Y),uni4_gre_quants(Z),uni4_gre_awm(K).

%GRE and TOEFL cleared
uni4_exam_cleared(X, Y, Z, A, B, C, D):- uni4_gre_passed(X, Y, Z), uni4_toefl_cleared(A, B, C, D).
 
%workExpjects
uni4_workExp_required(Y):- Y= yes.

%cost
uni4_cost_required(Y):- Y= high.

%application
uni4_admit(G1,G2,G3,T1,T2,T3,T4,W,C) :- uni4_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni4_workExp_required(W),uni4_cost_required(C).