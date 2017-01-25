% University 3

% TOEFL
uni3_toefl_speaking(S):- S >= 30.
uni3_toefl_reading(S):- S >= 30.
uni3_toefl_writing(S):- S >= 30.
uni3_toefl_listening(S):- S >= 30.


% Determine if student clears TOEFL
uni3_toefl_cleared(W, X, Y, Z):- uni3_toefl_speaking(W),
                           uni3_toefl_reading(X),
                           uni3_toefl_writing(Y),
                           uni3_toefl_listening(Z).


%GRE score rules
uni3_gre_verbal(Y) :- Y >= 158.
uni3_gre_quants(Y):- Y >= 167.
uni3_gre_awm(Y) :- Y >= 4.3.

uni3_gre_passed(Y,Z,K):- uni3_gre_verbal(Y),uni3_gre_quants(Z),uni3_gre_awm(K).

%GRE and TOEFL cleared
uni3_exam_cleared(X, Y, Z, A, B, C, D):- uni3_gre_passed(X, Y, Z), uni3_toefl_cleared(A, B, C, D).
 
%workExpjects
uni3_workExp_required(Y):- Y= no.

%cost
uni3_cost_required(Y):- Y= high.

%semester
uni3_semester(Y) :- Y= fall.

%Subjects taken
uni3_sub_ds(Y) :- Y = ds.
uni3_sub_ai(Y):- Y = ai.
uni3_sub_dm(Y) :- Y = dm.

uni3_prereq(X,Y,Z) :- uni3_sub_ds(X),uni3_sub_ai(Y),uni3_sub_dm(Z).

%admit
uni3_admit(G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3) :- uni3_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni3_workExp_required(W), uni3_cost_required(C),uni3_semester(S), uni3_prereq(S1,S2,S3).
