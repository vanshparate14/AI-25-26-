% -------- PERSONS --------
person(amit).
person(rahul).
person(sneha).
person(vikram).
person(priya).
person(arjun).

% -------- OWNERSHIP --------
owns(rahul, laptop).
owns(priya, phone).
owns(vikram, bike).
owns(arjun, car).

% -------- THEFT FACTS --------
stolen(amit, laptop).
stolen(sneha, phone).

intent(amit, steal).
intent(sneha, steal).

% -------- ASSAULT FACTS --------
hit(vikram, rahul).
hit(arjun, amit).

injury(rahul).
injury(amit).

% -------- FRAUD FACTS --------
false_promise(priya).
false_promise(amit).

financial_loss(arjun).
financial_loss(vikram).

% -------- TRAFFIC FACTS --------
drive_without_license(arjun).
drive_without_license(sneha).

% -------- RULES --------

theft(X) :-
    stolen(X,Y),
    owns(Z,Y),
    X \= Z,
    intent(X,steal).

assault(X) :-
    hit(X,Y),
    injury(Y).

fraud(X) :-
    false_promise(X),
    financial_loss(Y),
    X \= Y.

traffic_violation(X) :-
    drive_without_license(X).

crime(X,theft) :-
    theft(X).

crime(X,assault) :-
    assault(X).

crime(X,fraud) :-
    fraud(X).

crime(X,traffic_violation) :-
    traffic_violation(X).

punishment(theft,"3 years jail").
punishment(assault,"1 year jail").
punishment(fraud,"5 years jail").
punishment(traffic_violation,"5000 fine").

legal_decision(Person,Crime,Punishment) :-
    crime(Person,Crime),
    punishment(Crime,Punishment).