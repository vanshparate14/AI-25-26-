% Concepts hierarchy
isa(dog, mammal).
isa(mammal, animal).
isa(cat, mammal).
isa(bird, animal).
isa(eagle, bird).

% Instances
instance(fido, dog).
instance(tom, cat).
instance(tweety, bird).

% Properties
has_property(animal, breathes).
has_property(animal, moves).
has_property(mammal, fur).
has_property(bird, wings).
has_property(dog, barks).
has_property(cat, meows).

% Has part relations
has_part(dog, legs(4)).
has_part(bird, wings(2)).

/* Rules for inference */

% Inheritance of isa relations (transitive)
inherits(X, Z) :- 
    isa(X, Z).
inherits(X, Z) :- 
    isa(X, Y), 
    inherits(Y, Z).

% Instance inherits concept properties
inherits_property(Instance, Prop) :-
    instance(Instance, Concept),
    inherits(Concept, Super),
    has_property(Super, Prop).

% Has part inheritance
inherits_part(Instance, Part) :-
    instance(Instance, Concept),
    has_part(Concept, Part).

/* Example queries:
?- isa(dog, animal).           % true
?- inherits(fido, animal).     % true (transitive)
?- inherits_property(fido, breathes).  % true
?- inherits_property(fido, fur).       % true
?- inherits_part(fido, legs(4)).       % true

Load in SWI-Prolog: [code].
Run queries above to see semantic inference.
*/
