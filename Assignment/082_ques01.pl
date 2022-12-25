male("Rickard Stark").
male("Eddard Stark").
male("Brandon Stark").
male("Benjen Stark").
male("Robb Stark").
male("Bran Stark").
male("Rickon Stark").
male("Jon Snow").

male("Aerys II Targaryen").
male("Rhaegar Targaryen").
male("Viserys Targaryen").
male("Aegon Targaryen").

female("Lyarra Stark").
female("Lyanna Stark").
female("Catelyn Tully").
female("Sansa Stark").
female("Arya Stark").

female("Rhaella Targaryen").
female("Daenerys Targaryen").
female("Ella Martell").
female("Rhaenys Targaryen").

marry("Rickard Stark", "Lyarra Stark").
marry("Eddard Stark", "Catelyn Tully").
marry("Rhaegar Targaryen", "Lyanna Stark").
marry("Rhaegar Targaryen", "Ella Martel").
marry("Aerys II Targaryen", "Rhaella Targaryen").

spouse(X, Y):-
    marry(X, Y).
spouse(X, Y):-
    marry(Y, X).

%Children must be denoted with both mother and father individually
child("Eddard Stark", "Rickard Stark").
child("Brandon Stark", "Rickard Stark").
child("Benjen Stark", "Rickard Stark").
child("Lyanna Stark", "Rickard Stark").
child("Robb Stark", "Eddard Stark").
child("Sansa Stark", "Eddard Stark").
child("Arya Stark", "Eddard Stark").
child("Bran Stark", "Eddard Stark").
child("Rickon Stark", "Eddard Stark").
child("Jon Snow", "Rhaegar Targaryen").
child("Eddard Stark", "Lyarra Stark").
child("Brandon Stark", "Lyarra Stark").
child("Benjen Stark", "Lyarra Stark").
child("Lyanna Stark", "Lyarra Stark").
child("Robb Stark", "Catelyn Tully").
child("Sansa Stark", "Catelyn Tully").
child("Arya Stark", "Catelyn Tully").
child("Bran Stark", "Catelyn Tully").
child("Rickon Stark", "Catelyn Tully").
child("Jon Snow", "Lyanna Stark").

child("Rhaegar Targaryen", "Aerys II Targaryen").
child("Viserys Targaryen", "Aerys II Targaryen").
child("Daenerys Targaryen", "Aerys II Targaryen").
child("Rhaenys Targaryen", "Rhaegar Targaryen").
child("Aegon Targaryen", "Rhaegar Targaryen").
child("Rhaegar Targaryen", "Rhaella Targaryen").
child("Viserys Targaryen", "Rhaella Targaryen").
child("Daenerys Targaryen", "Rhaella Targaryen").
child("Rhaenys Targaryen", "Ella Martell").
child("Aegon Targaryen", "Ella Martell").

husband(X, Y):-
    spouse(X, Y),
    male(X),
    female(Y).

wife(X, Y):-
    spouse(X, Y),
    female(X),
    male(Y).

brothers(X, Y):-
    child(X, Z),
    child(Y, Z),
    male(X),
    male(Y),
    X\=Y.

sisters(X, Y):-
    child(X, Z),
    child(Y, Z),
    female(X),
    female(Y),
    X\=Y.

siblings(X, Y):-
    child(X, Z),
    child(Y, Z),
    male(X),
    female(Y).

siblings(X, Y):-
    child(X, Z),
    child(Y, Z),
    female(X),
    male(Y).

mother(X, Y):-
    child(Y, X),
    female(X).

father(X, Y):-
    child(Y, X),
    male(X).

uncle(X, Y):-
    (brothers(X, Z); siblings(X, Z)),
    child(Y, Z),
    male(X).

aunt(X, Y):-
    (sisters(X, Z); siblings(X, Z)),
    child(Y, Z),
    female(X).

grandchild(X, Y):-
    child(X, Z),
    child(Z, Y).

grandson(X, Y):-
    grandchild(X, Y),
    male(X).

granddaughter(X, Y):-
    grandchild(X, Y),
    female(X).

descendent(X, Y):-
    child(X, Y).

descendent(X, Y):-
    child(Z, Y),
    descendent(X, Z).













