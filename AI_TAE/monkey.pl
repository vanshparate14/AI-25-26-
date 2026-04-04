% possible positions
position(at_door).
position(at_window).
position(middle).

% initial state
initial_state(state(at_door, on_floor, at_window, hanging)).

% goal state
goal_state(state(_, _, _, has_banana)).

% move: monkey walks
move(state(P1, on_floor, Box, Banana),
     state(P2, on_floor, Box, Banana),
     walk(P1,P2)) :-
     position(P2),
     P1 \= P2.

% move: monkey pushes box
move(state(P, on_floor, P, Banana),
     state(P2, on_floor, P2, Banana),
     push_box(P,P2)) :-
     position(P2),
     P \= P2.

% move: monkey climbs box
move(state(P, on_floor, P, Banana),
     state(P, on_box, P, Banana),
     climb).

% move: monkey grabs banana
move(state(middle, on_box, middle, hanging),
     state(middle, on_box, middle, has_banana),
     grab).

% solve with visited list
solve(State, _, []) :-
    goal_state(State).

solve(State, Visited, [Action|Plan]) :-
    move(State, NewState, Action),
    \+ member(NewState, Visited),
    solve(NewState, [NewState|Visited], Plan).