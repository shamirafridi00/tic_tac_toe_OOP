# Tic Tac Toe Game

Welcome to the command-line Tic Tac Toe game built in Ruby! This classic game allows two players to compete in a battle of strategy and wit.

## Table of Contents
- [Features](#features)
- [Game Rules](#game-rules)
- [How to Play](#how-to-play)
- [File Structure](#file-structure)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Features

- Play Tic Tac Toe in the command line.
- Two players take turns making moves.
- Win by forming a horizontal, vertical, or diagonal line with your symbol ('X' or 'O').
- Detects a draw when the board is full with no winner.

## Game Rules

- The game is played on a 3x3 grid.
- Players take turns to place their symbol ('X' or 'O') in an empty cell.
- The first player to get three of their symbols in a row (horizontally, vertically, or diagonally) wins the game.
- The game is a draw if all cells are filled, and no player has won.

## How to Play

1. Clone the repository to your local machine:

   ```shell
   git clone https://github.com/yourusername/tic-tac-toe.git
2. Navigate to the game directory:
    ```shell
    cd tic-tac-toe```
3. Run the game:
    ```shell
    ./main.rb```

## File Structure
```shell
tic-tac-toe/
|-- main.rb            # Main game script
|-- board.rb           # Board class definition
|-- player.rb          # Player class definition
|-- README.md          # Game documentation (you are here)
|-- ...                # Other files and resources
```