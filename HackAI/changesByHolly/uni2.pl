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

%semester
uni2_semester(Y) :- Y= fall.

%Subjects taken
uni2_sub_ds(Y) :- Y = ds.
uni2_sub_ai(Y):- Y = ai.
uni2_sub_dm(Y) :- Y = dm.

uni2_prereq(X,Y,Z) :- uni2_sub_ds(X),uni2_sub_ai(Y),uni2_sub_dm(Z).

%admit
uni2_admit(G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3) :- uni2_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni2_workExp_required(W), uni2_cost_required(C),uni2_semester(S), uni2_prereq(S1,S2,S3).
