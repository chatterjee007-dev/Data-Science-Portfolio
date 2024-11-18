## Project Overview
Write a program that allows the user to play a game of Rock Paper Scissors against the computer. The program should prompt the user to enter their choice (Rock, Paper, or Scissors) and then randomly generate a choice for the computer. The program should then determine the winner based on the following rules:
- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Key Features
- User can play Rock Paper Scissors against the computer.
- Computer randomly selects its choice.
- Determines the winner based on predefined rules.

## Libraries Used
- **random**: A Python module that generates random variables based on the input that we give.

## Code Explanation
The program uses the `random` module to randomly select the computer's choice and compares it against the user's input to determine the winner.

## Code Structure
- **Importing Libraries**: Import necessary libraries for random choice generation.
- **Defining Choices**: Create a list of choices.
- **Function to Get Computer's Choice**: Define a function to randomly select a choice for the computer.
- **Function to Get User's Choice**: Define a function to prompt the user to enter their choice.
- **Function to Determine Winner**: Define a function to determine the winner based on the user's and computer's choices.
- **Main Game Function**: Define the main game function to keep the game running until the user decides to stop.
- **Run the Game**: Call the main game function to start the game.

## Code Snippet
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
   cd Data-Science-Portfolio/Python/Project_01_Rock_Paper_Scissors

3. Run the script :
   ```bash
   jupyter notebook Rock_Paper_Scissors.ipynb

  ## Sample Run
  ```python
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
   ``` 
## Explanation
In the output, we can see the user can play Rock Paper Scissors against the computer. The computer randomly selects its choice, and the program determines the winner based on the rules.

## Insights
- The program effectively demonstrates the use of the `random` module for generating random choices.
- The game logic is simple yet demonstrates control flow with if-elif-else statements.
- The approach can be extended to include more complex game logic or additional features.

## Future Enhancements

1. **Improve User Interface**:
   - Create a graphical user interface (GUI) using libraries such as Tkinter or PyQt to make the game more interactive and user-friendly.

2. **Track Scores**:
   - Implement a feature that tracks the player's wins, losses, and ties over multiple rounds.

3. **Add More Game Modes**:
   - Introduce additional game modes like "Rock-Paper-Scissors-Lizard-Spock" for more variety.

4. **Difficulty Levels**:
   - Add difficulty levels where the computer can make smarter choices based on previous player behavior.

5. **Leaderboard** :
   - Store high scores or game history in a text file or database to create a leaderboard feature.

6. **Multiplayer Option** :
   - Allow two players to play against each other on the same device or over the network.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_01_Rock_Paper_Scissors/Rock_Paper_Scissors.ipynb**.



