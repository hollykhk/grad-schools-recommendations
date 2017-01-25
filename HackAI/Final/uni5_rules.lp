/* University 5 Requirements */

#include 'uni_facts.lp'.

% TOEFL
% predicate of "is greater than"
_toeflSpeaking(S):- S >= 15.
_toeflReading(R):- R >= 17.
_toeflWriting(W):- W >= 16.
_toeflListening(L):- L >= 17.

toeflCleared(S, R, W, L):-
    _toeflSpeaking(S),
    _toeflReading(R),
    _toeflWriting(W),
    _toeflListening(L).


% GRE
_greVerbal(V):- V >= 150.
_greQuant(Q):- Q >= 140.
_greAnalytical(A) :- A >= 2.0.

greCleared(V, Q, A):-
  _greVerbal(V),
  _greQuant(Q),
  _greAnalytical(A).


% Work Experience
experience(X):- X = yes.
experience(X):- X = no.


% Cost
cost(X):- X = high.
cost(X):- X = medium.
cost(X):- X = low.


% Semester
semester(X):- X = fall.
semester(X):- X = spring.
semester(X):- X = summer.


% Subjects Taken
%subject(X):- X = ds.
%subject(X):- X = ai.
%subject(X):- X = dm.
%subject(X, Y):- X = ds, Y = ai.
%subject(X, Y):- X = ds, Y = dm.
%subject(X, Y):- X = ai, Y = dm.
%subject(X, Y, Z):- X = ds, Y = ai, Z = dm.

subject(X, Y, Z):- X = none, Y = none, Z = none.
subject(X, Y, Z):- X = ai, Y = none, Z = none.
subject(X, Y, Z):- X = none, Y = ds, Z = none.
subject(X, Y, Z):- X = none, Y = none, Z = dm.
subject(X, Y, Z):- X = ai, Y = ds, Z = none.
subject(X, Y, Z):- X = ai, Y = none, Z = dm.
subject(X, Y, Z):- X = none, Y = ds, Z = dm.
subject(X, Y, Z):- X = ai, Y = ds, Z = dm.
