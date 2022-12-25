route("Karhold", "Braavos").
route("Karhold", "Gulltown").
route("Braavos", "Gulltown").
route("Braavos", "Tyrosh").
route("Gulltown", "Tyrosh").
route("Tyrosh", "Volantis").
route("Tyrosh", "Dorne").
route("Volantis", "Dorne").

on(X, [X|Y]).

is_reachable(X, X, [X|Y]):-
    write("Sea Route Found!!").

is_reachable(X, Y, [X|Z]):-
    route(X, T),
    on(T, Z),
    is_reachable(T, Y, Z).

