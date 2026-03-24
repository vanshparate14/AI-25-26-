# Theory: Prolog Program for Demonstrating Family Relationships and Conceptual Hierarchies

## 1. Introduction to Prolog
Prolog (Programming in Logic) is a declarative programming language based on first-order logic. Programs consist of:
- **Facts**: Simple statements like `isa(dog, mammal).` representing true assertions.
- **Rules**: Logical implications like `inherits(X, Z) :- isa(X, Y), inherits(Y, Z).` defining derived facts.
- **Queries**: Goals to prove, e.g., `?- inherits(fido, animal).`

Prolog uses **backward chaining** and **resolution** for inference, automatically searching for proofs.

## 2. Knowledge Representation in Prolog
- **Unary predicates** (e.g., `isa/2`, `instance/2`): Relate an entity to a class.
- **Binary predicates** (e.g., `has_property/2`, `has_part/2`): Describe attributes or components.
- Hierarchies model **is-a** (taxonomic) and **has-a** (part-of) relationships.

Example facts from the program:
```
isa(dog, mammal).
instance(fido, dog).
has_property(mammal, fur).
```

## 3. Transitive Closure and Inheritance
The key rule is recursive for **transitive inheritance**:
```
inherits(X, Z) :- isa(X, Z).                % Base case
inherits(X, Z) :- isa(X, Y), inherits(Y, Z). % Recursive case
```
- This computes the transitive closure of `isa`, answering "is X a Z indirectly?"
- Prolog's depth-first search with backtracking handles recursion efficiently (with tail recursion optimization in SWI-Prolog).

Derived rules:
- **Property inheritance**: `inherits_property(Instance, Prop)` propagates properties up the hierarchy.
```
inherits_property(fido, fur).  % fido is dog -> mammal -> fur
```
- **Part inheritance**: Similar for structural parts.

## 4. Application to Family Relationships
Although the provided code uses an **animal taxonomy**, the same structure applies to **family trees**:
- Replace `isa` with `parent(Child, Parent)`.
- `inherits(X, Ancestor)` becomes "is Ancestor of X?" (transitive ancestry).
```
parent(john, mary).
parent(mary, grandmother).
ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

?- ancestor(john, grandmother).  % true
```
- Extend to siblings (`sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.`), spouses, etc.
- This demonstrates **semantic networks** and **frame-based knowledge representation** in AI.

## 5. Prolog Execution Model
1. **Unification**: Matching terms (e.g., `X = dog`).
2. **Search Strategy**: Depth-first, left-to-right; choice points for backtracking.
3. **Cut (`!`)**: Pruning search (not used here).
4. **Loading**: `[code].` consults the file.

Example queries:
```
?- inherits(dog, animal).          % true (transitive)
?- inherits_property(tweety, wings). % true
?- bagof(P, inherits_property(fido, P), Props). % All properties
```

## 6. Advantages and Limitations
- **Advantages**: Natural for hierarchies, automatic inference, symbolic reasoning.
- **Limitations**: Infinite loops in left-recursive rules; efficiency for large knowledge bases (use tabling or memoization).

## References
- "Programming in Prolog" by Clocksin & Mellish.
- SWI-Prolog documentation: https://www.swi-prolog.org/

This theory underpins Practical 7, enabling inference over relational hierarchies like family trees.

