# Python Project: Rock-Paper-Scissors  

## Description  
This project implements the classic game of Rock-Paper-Scissors, allowing a user to play against the computer. The game follows standard rules:  
- **Rock beats Scissors**  
- **Scissors beats Paper**  
- **Paper beats Rock**  

The program uses Python's `random` module to generate the computer's choice and determines the winner based on predefined rules.  

## Tools Used  
- **Python** : The programming language used to develop the project.  
- **Random Module** : To generate random choices for the computer.  

## How It Works  
1. The user is prompted to enter their choice (Rock, Paper, or Scissors).  
2. The computer generates a random choice from the list: `['rock', 'paper', 'scissor']`.  
3. The program compares the user's choice with the computer's choice using the game rules to determine the winner.  
4. The result is displayed, and the user is asked whether they want to play again.  

## Code Structure  
- **Choices Definition**: The valid options are stored in a list: `['rock', 'paper', 'scissor']`.  
- **Functions**:  
  - `get_computer_choice()` : Returns a random choice for the computer.  
  - `get_user_choice()` : Prompts the user for their choice and validates the input.  
  - `determine_winner(user_choice, computer_choice)` : Determines the outcome based on game rules.  
  - `game_play()` : Orchestrates the game, handles inputs, and loops until the user decides to stop.

```python
import random

# Defining the valid choices
choices = ['rock', 'paper', 'scissor']

# Function to get the computer's random choice
def get_computer_choice():
    return random.choice(choices)

# Function to get the user's choice
def get_user_choice():
    user_choice = input("Enter your choice, Rock paper or scissor? ").lower()
    if user_choice in choices:
        return user_choice
    else:
        return "Invalid choice. Please try again."

# Function to determine the winner based on game rules
def determine_winner(user_choice, computer_choice):
    if user_choice == computer_choice:
        return "It's a tie!"
    elif (user_choice == 'rock' and computer_choice == 'scissor') or \
         (user_choice == 'scissor' and computer_choice == 'paper') or \
         (user_choice == 'paper' and computer_choice == 'rock'):
        return "You win!"
    else:
        return "Computer wins!"

# Function to play the game
def game_play():
    print("Let's play!")

    while True:
        user_choice = get_user_choice()
        computer_value = get_computer_choice()
        print(f"You chose: {user_choice}")  # Prints the user's choice
        print(f"Computer chose: {computer_value}")  # Prints the computer's choice
        result = determine_winner(user_choice, computer_value)  # Determines and prints the result
        print(result)

        play_again = input("Do you want to play again? (y/n): ").lower()
        if play_again != "y":  # Breaks the loop if the user doesn't want to play again
            break

# Runs the game
game_play()
```

## Prerequisites  
- Python 3.x installed on your machine.  

## Installation and Usage  
1. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_01_Rock_Paper_Scissors/Rock_Paper_Scissors.ipynb

3. Run the script :
   ```bash
   jupyter notebook Rock_Paper_Scissors.ipynb

  ## Sample Run
    Let's play!  
    Enter your choice, Rock paper or scissor? rock  
    You chose: rock  
    Computer chose: scissor  
    You win!  
    Do you want to play again? (y/n): y  
    Enter your choice, Rock paper or scissor? paper  
    You chose: paper  
    Computer chose: paper  
    It's a tie!  
    Do you want to play again? (y/n): n  

## Future Enhancements

1. **Add More Game Modes** : 
   - Introduce additional game modes like "Rock-Paper-Scissors-Lizard-Spock" for more variety.
   
2. **Improve User Interface** :
   - Create a graphical user interface (GUI) using libraries such as Tkinter or PyQt to make the game more interactive and user-friendly.

3. **Track Scores** :
   - Implement a feature that tracks the player's wins, losses, and ties over multiple rounds.

4. **Difficulty Levels** :
   - Add difficulty levels where the computer can make smarter choices based on previous player behavior.

5. **Leaderboard** :
   - Store high scores or game history in a text file or database to create a leaderboard feature.

6. **Multiplayer Option** :
   - Allow two players to play against each other on the same device or over the network.





