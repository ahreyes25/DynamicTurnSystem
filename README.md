# TurnBasedCombatSystem
This is a barebones, turn based combat system that implements a dynamic/modular design that can be implemented into any GameMaker project.

# How To Use
A dynamic turn based combat system for GameMaker Studio 2 to create iterative teams, and the base-level framework for a large scale combat system. This project is designed to be dropped right into a new project, or into your existing project, and super quick to setup. Keep in mind that this asset doesn't focus on the combat elements, but instead, creates a very dynamic and flexible turn system that leaves you open to implement your own combat system into it. Designing an elegant and versatile turn system can be difficult sometimes, and so the goal of this project is to simplify that into an easy to use project. Feel free to use this in any of your games, and let me know if you have any suggestions or issues! Thanks.

How To Use: (see youtube video for more info)
- Import Objects and Scripts Into Project
- Place oCombatManager object into room
- Place oCamera object into room if you don't already have an active camera object
- Add objects to oCombatManager.blueTeam & oCombatManager.redTeam using ds_list_add([team_to_join], [object_to_insert]);
- Add teams to the master team list simply called: "teams" using ds_list_add(teams, [team_to_insert]);
- Add script calls NextPlayer() & PreviousPlayer() whenever you want to iterate to the next or previous players in the team lists. These script calls can be used wherever as they explicitly reference the appropriate objects and list variables to manipulate.
- Add script calls NextTeam() & PreviousTeam() whenever you want to instantly iterate to the next or previous teams in the master teams list.These script calls can be used wherever as they explicitly reference the appropriate objects and list variables to manipulate.

This project can be used as reference for any type of game, a platformer, an RPG, a tactical RPG, etc. Anything that utilizes turns can use this framework as a starting point. I'd love it if you give me a shoutout too if you use this at all in your project! 

In the Demo project, I have the NextPlayer() and PreviousPlayer() scripts simply mapped to the arrow keys and NextTeam() and PreviousTeam() mapped to "A" and "D", so that you can iterate between the characters and teams. These function calls can be placed anywhere and will still work, so remove them from the key pressed events and call them wherever is appropriate for your game.
