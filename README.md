# Pong - 20 Games Challenge - #1
Pong — A clone of Pong built using Godot & GDScript.

## Features
- Enemy
- Player Score
- Enemy Score

## How to Play
Controls:
- Left click to start.
- Move mouse in grey area to move Paddle / Player.

Objective: Score more points against the opponent.

## Setup & Installation
Prerequisites: Godot version 4.7 or later.
Clone the repo: https://github.com/viSerpa/challenge_game_1-pong.git
Run the game: Press F5 to play game.

## What I Learned
- **Dead-Zone AI Logic:** Solved an erratic "jittering" bug in the enemy AI paddle by implementing a dead zone threshold, preventing continuous back-and-forth adjustments and creating smoother, more human-like tracking behavior.
- **State Management & Game Flow:** Programmed event-driven game states (Pause/Active) linked to player inputs (left-click) and score triggers, ensuring the game safely halts and resets positioning after a point is scored.
- **Mouse Input Processing:** Explored custom input methods by mapping paddle translation directly to cursor movements within a restricted viewport boundaries instead of traditional keyboard controls.
- **Physics Boundaries & Stutter Artifacts:** Encountered advanced collision handling edge-cases where rapid positional updates between two moving physics bodies (`CharacterBody2D`) caused intersecting collision shapes to stutter.

### Story if you care
This is the first game in the 20 Games Challenge. It was a selection from Flappy Bird and Pong. Since I already did Flappy Bird, I chose Pong.
Before I did this attempt, I followed a short tutorial for pong to learn how to make the ball bounce around. After the tutorial I had a general grasp on how
to make Pong.

From the controls you can see that you have to move your mouse in the play area to make the Paddle move. This was my own little twist to the game as I wanted to mess
around with the mouse and cursor. 

The only difficult thing I could recall from this, was the State Management and the ball. Since I was still relatively new to Godot and Game Development in general,
I was still learning basic things like State Management. I wanted to make it so whenever you loaded up the game, the game would be paused until you pressed left click.
I also wanted it to pause again whenever someone scored. With the ball, it had a weird interaction whenever the top of the paddle moves up against the ball when it's
moving towards the person's side, causing the paddle to stutter in place and the ball to stay glued to the ball. I believe that this is still the case, but it doesn't
happen often.

For the enemy, I have special dead zones for it as it would stutter up and down whenever the ball was moving towards it. This was because I had the enemy move up when the
ball was below it, and down when the ball was above it. The enemy pretty much had no place to rest and was constantly moving, which is why I made the dead zones, to
prevent the weird stutters, so that it kind of feels like you going up against an opponent.
