loves(romeo, juliet).
like(juliet, romeo).
parent(romeo, tuna).
parent(albert, bob).
parent(tuna, simon).

dances(albert).
swims(julia).

parent_swims(X, Y) :-
    parent(Y, X),
    swims(Y).

class(5):-
    write("You are in class 5").
class(6):-
    write("You are in class 6").
class(Other):-
    write("Quit").

