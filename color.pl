color(red).
color(blue).
color(green).
color(yellow).

adjacent(a, b).
adjacent(a, e).
adjacent(a, d).
adjacent(b, e).
adjacent(b, c).
adjacent(b, d).
adjacent(c, e).
adjacent(c, d).
adjacent(d, e).

color_map(A, B, C, D, E) :-
    color(A), color(B), color(C), color(D), color(E),
    A \= B,
    A \= E,
    A \= D,
    B \= E,
    B \= C,
    B \= D,
    C \= E,
    C \= D,
    D \= E.
