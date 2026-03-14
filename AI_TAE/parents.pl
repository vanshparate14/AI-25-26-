parent(mahadeo, dajibaji).
parent(parawati, dajibaji).

parent(dajibaji, chandu).
parent(kalavati, chandu).

parent(chandu, lakshit).
parent(kalpana, lakshit).

parent(chandu, lavanya).
parent(kalpana, lavanya).

% -------- MALE FACTS (ALL TOGETHER) --------

male(mahadeo).
male(dajibaji).
male(chandu).
male(lakshit).

% -------- FEMALE FACTS (ALL TOGETHER) --------

female(parawati).
female(kalavati).
female(kalpana).
female(lavanya).

% -------- MARRIAGE FACTS (GROUPED) --------

husband(mahadeo, parawati).
husband(dajibaji, kalavati).
husband(chandu, kalpana).

wife(parawati, mahadeo).
wife(kalavati, dajibaji).
wife(kalpana, chandu).

% -------- RULES --------

father(X, Y) :-
parent(X, Y),
male(X).

mother(X, Y) :-
parent(X, Y),
female(X).

child(X, Y) :-
parent(Y, X).

son(X, Y) :-
child(X, Y),
male(X).

daughter(X, Y) :-
child(X, Y),
female(X).

sibling(X, Y) :-
parent(Z, X),

parent(Z, Y),
X \= Y.

grandparent(X, Y) :-
parent(X, Z),
parent(Z, Y).

great_grandparent(X, Y) :-
parent(X, A),
parent(A, B),
parent(B, Y).

grandfather(X, Y) :-
grandparent(X, Y),
male(X).

grandmother(X, Y) :-
grandparent(X, Y),
female(X).