:- initialization(billion).

billion :-
    billion(0),
    halt(0).

billion(1000000000).
billion(I) :-
    printJ(I),
    I2 is I + 1,
    billion(I2).

printJ(I) :-
    J is I / 9.0,
    I mod 100000000 =:= 0,
    write(J), nl.
printJ(_).
