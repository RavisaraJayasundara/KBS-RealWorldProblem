% name,job,city,rank

friends(S):-
    S=[p(_,_,_,1),p(_,_,_,2),p(_,_,_,3)],
    member(p(bill,_,_,_),S),
    member(p(_,_,zurich,_),S),
    member(p(micheal,doctor,_,RM),S),
    member(p(_,_,bern,RB),S),RM<RB,
    member(p(deniel,_,basel,RD),S),
    member(p(_,manager,_,RBM),S),RD<RBM,
    member(p(_,teacher,_,1),S).
