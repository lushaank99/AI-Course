what_grade(5):-
    write("You\'re in grade 5").
what_grade(6):-
    write("You\'re in grade 6").
what_grade(Other):-
    Grade is Other - 5,
    format("You\'re in grade ~w ~n",[Grade]).

son(sholam, tuna).
son(tars, sholam).
male(sholam).
male(tars).
male(tuna).
female(unas).
married(unas, sholam).
grandfather(X,Y):-
    male(Y),
    son(X, Z),
    son(Z, Y).
father(X, Y):-
    male(X),
    son(Y, X).
mother(X, Y):-
    female(X),
    married(X, Z),
    son(Y, Z).

square(X):-
    Y is X**2,
    format("~w",[Y]).

is_even(X):-
    Y is X//2, X =:= 2*Y.

reverse(Low, High):-
    between(Low, High, X),
    Y is High - X,
    write(Y), nl.

looping([]).
looping([H|T]):-
    write(H), nl,
    looping([T]).
