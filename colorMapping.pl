map(A,B,C,D,E):-
  adjacent(A,B),
  adjacent(A,D),
  adjacent(A,E),
  adjacent(B,C),
  adjacent(B,D),
  adjacent(B,E),
  adjacent(C,D),
  adjacent(C,E),
  adjacent(D,E).

  color(red).
  color(green).
  color(yellow).
  color(blue).

adjacent(X,Y):-color(X),color(Y),X\=Y.
