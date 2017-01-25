% University 1

% TOEFL
uni1_toefl_speaking(S):- S >= 18.
uni1_toefl_reading(S):- S >= 20.
uni1_toefl_writing(S):- S >= 20.
uni1_toefl_listening(S):- S >= 18.


% Determine if student clears TOEFL
uni1_toefl_cleared(W, X, Y, Z):- uni1_toefl_speaking(W),
                           uni1_toefl_reading(X),
                           uni1_toefl_writing(Y),
                           uni1_toefl_listening(Z).


%GRE score rules
uni1_gre_verbal(Y) :- Y >= 155.
uni1_gre_quants(Y):- Y >= 163.
uni1_gre_awm(Y) :- Y >= 3.5.

uni1_gre_passed(Y,Z,K):- uni1_gre_verbal(Y),uni1_gre_quants(Z),uni1_gre_awm(K).

%GRE and TOEFL cleared
uni1_exam_cleared(X, Y, Z, A, B, C, D):- uni1_gre_passed(X, Y, Z), uni1_toefl_cleared(A, B, C, D).
 
%workExpjects
uni1_workExp_required(Y):- Y= yes.

%cost
uni1_cost_required(Y):- Y= high.

%semester
uni1_semester(Y) :- Y= fall.

%Subjects taken
uni1_sub_ds(Y) :- Y = ds.
uni1_sub_ai(Y):- Y = ai.
uni1_sub_dm(Y) :- Y = dm.

uni1_prereq(X,Y,Z) :- uni1_sub_ds(X),uni1_sub_ai(Y),uni1_sub_dm(Z).

%admit
uni1_admit(G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3) :- uni1_exam_cleared(G1,G2,G3,T1,T2,T3,T4), uni1_workExp_required(W), uni1_cost_required(C),uni1_semester(S), uni1_prereq(S1,S2,S3).

uni1(uni1,G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3) :- uni1_admit(G1,G2,G3,T1,T2,T3,T4,W,C,S,S1,S2,S3).