other_bank(left,right).
other_bank(right,left).

move([X, X, X, X, X, X],[Y, Y, Y, Y, Y, Y]) :- other_bank(X,Y).

safe_status([H1,H2,H3,W1,W2,W3]):-
       not((H1\=H2,H1\=H3)),
       not((W1\=W2,W1\=W3)),
       not((W2\=W3,H1\=W2)).

solution([right,right,right,right,right,right],[]).
solution(Config,[NextConfig|OtherMove]):-
       move(Config,NextConfig) ,
       safe_status(NextConfig),
       solution(NextConfig,OtherMove).
