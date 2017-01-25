/* University 2 Requirements */

#include 'uni_facts.lp'.

% TOEFL
% predicate of "is greater than"
_toeflSpeaking(S):- S >= 22.
_toeflReading(R):- R >= 22.
_toeflWriting(W):- W >= 20.
_toeflListening(L):- L >= 22.

toeflCleared(S, R, W, L):-
    _toeflSpeaking(S),
    _toeflReading(R),
    _toeflWriting(W),
    _toeflListening(L).


% GRE
_greVerbal(V):- V >= 170.
_greQuant(Q):- Q >= 170.
_greAnalytical(A) :- A >= 3.7.

greCleared(V, Q, A):-
  _greVerbal(V),
  _greQuant(Q),
  _greAnalytical(A).


% Work Experience
experience(X):-
    X \= yes,
    X = no.


% Cost
cost(X):- X \= high.
cost(X):- X = medium.
cost(X):- X = low.


% Semester
semester(X):- X = fall.
semester(X):- X \= spring.
semester(X):- X \= summer.


% Subjects Taken
%subject(X):- X = ds.
%subject(X):- X = ai.
%subject(X):- X = dm.
%subject(X, Y):- X = ds, Y = ai.
%subject(X, Y):- X = ds, Y = dm.
%subject(X, Y):- X = ai, Y = dm.
%subject(X, Y, Z):- X = ds, Y = ai, Z = dm.

subject(X, Y, Z):- X = ai, Y = ds, Z = dm.
