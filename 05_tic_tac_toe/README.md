# Project: Tic Tac Toe - Ruby Course

## Assignment

Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

## My solution
* Create a game intro and set up player1_name and player2_name variables to get each player's name;
* Define "class Game" as a blueprint for the game whole logic;
* Within the "class Game" define a constructor function with instance variables board, current_player, player1_name, player2_name;
* Define draw_board method to handle the board drawing;
* Define make_move method to handle each player's turn. The if statement converts the input(Integer) to each player's corresponding symple. If the spot is already taken the else block returns an invalid move warning;
* The method game_over? checks if the game ended in a draw: 
    - @board.flatten.none? { |spot| spot.is_a?(Integer) }: checks if all spots on the game board are occupied by either 'X' or 'O';
    - || check_winner: if the previous condition evaluates to false, the || operator ensures that the check_winner method is called to determine if a player has won the game;
* The print_result method is used to display the final outcome of the match;
* The play_again? method asks the player for a rematch;
* Insert the private keyword to imply that the methods below it are meant to be used only within the Game class. It's a measure to ensure that they are not accidentaly called or manipulated outside the class; 
* The play_to_index method translates a move number(1-9) into row and column indices(0-2) for a 3x3 Tic Tac Toe boar;
* The switch_player method handles each player's turn alternatively; 
* The check_winner method checks for winner sequences (rows, columns and diagonals);