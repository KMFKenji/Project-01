/*
    Project 01
    
  VAR has_map = false
VAR has_torch = false
VAR agility = 1
VAR visited_forest = false
VAR visited_cave = false

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
* [Explore a cave entrance] -> cave_entrance

=== find_map ===
You find an old, tattered map wedged between the roots of a tree.
~ has_map = true

* [Continue deeper] -> deeper_forest

=== cave_entrance ===
A dark cave looms before you. The air is cold.
{visited_cave:
    You recognize this place but hesitate before stepping inside.
- else:
    You gather your courage and step in for the first time.
    ~ visited_cave = true
}

* [Search for something useful] -> find_torch
* [Go deeper] -> dark_tunnel

=== find_torch ===
You find an old torch on the ground and light it.
~ has_torch = true

* [Go deeper] -> dark_tunnel

=== dark_tunnel ===
The cave is pitch black.
{has_torch:
    With your torch, you see carvings on the wall and a small passage leading further in.
    -> hidden_chamber
- else:
    You stumble in the dark and decide to turn back.
    -> cave_entrance
}

=== hidden_chamber ===
You enter a hidden chamber filled with ancient markings. A pedestal holds a glowing stone.
* [Take the stone] -> take_stone
* [Leave it alone] -> leave_chamber

=== take_stone ===
As you grab the stone, you feel a surge of energy. Your agility increases!
~ agility = agility + 1

* [Leave the cave] -> enter_forest

=== leave_chamber ===
You decide not to take the risk and quietly exit the chamber.
* [Leave the cave] -> enter_forest

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
