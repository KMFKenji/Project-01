/*
    Project 01
    
    VAR has_map = false
VAR agility = 1
VAR visited_forest = false

=== start ===
You stand at the edge of a dense forest. A sign reads: "Beware of the Lost Paths."

* [Enter the forest] -> enter_forest
* [Turn back] -> turn_back

=== enter_forest ===
{visited_forest:
    The trees seem even taller and more menacing than before.
- else:
    The forest is quiet, except for the distant hoot of an owl. Mist clings to the ground.
    ~ visited_forest = true
}

* [Venture deeper] -> deeper_forest
* [Search for clues] -> find_map

=== find_map ===
You find an old, tattered map wedged between the roots of a tree.
~ has_map = true

* [Continue deeper] -> deeper_forest

=== deeper_forest ===
You reach a fork in the path.
{has_map:
    You follow the map’s markings and safely find a hidden glade.
    -> hidden_glade
- else:
    Without direction, you become hopelessly lost.
    -> enter_forest
}

=== hidden_glade ===
In the glade, you find an ancient stone altar. A shadowy figure appears.
{agility >= 2:
    You swiftly dodge its attack and uncover a hidden passage!
    -> secret_exit
- else:
    The figure overpowers you, forcing you to flee.
    -> enter_forest
}

=== secret_exit ===
Congratulations! You have escaped the enchanted forest and uncovered its secrets!
-> END

=== turn_back ===
You decide this journey isn't worth the risk and head home.
-> END


*/

