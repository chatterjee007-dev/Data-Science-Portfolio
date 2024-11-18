# PYTHON PROJECT: ROCK-PAPER-SCISSORS  

## Project Overview  
This project is a Python-based implementation of the classic game *Rock-Paper-Scissors*. The program allows the user to play the game against the computer. The computer's choice is generated randomly, and the winner is determined based on predefined rules. The goal is to provide an engaging and interactive experience for the user.  

## Key Features  
- Interactive gameplay between the user and computer.  
- Random choice generation for the computer using the `random` module.  
- Well-defined game logic based on the rules of Rock-Paper-Scissors.  
- Continuous gameplay until the user decides to exit.  
- Handles invalid user inputs gracefully.  

## Libraries Used  
- **random**: Used to generate the computer's random choice from the list of options.  

## Code Explanation  
The project includes multiple functions to modularize the implementation:  
1. **get_computer_choice**: Generates a random choice for the computer from the list `['rock', 'paper', 'scissor']`.  
2. **get_user_choice**: Prompts the user to input their choice, validates it, and returns it in lowercase for consistency.  
3. **determine_winner**: Compares the choices of the user and computer to determine the winner based on predefined rules.  
4. **game_play**: Facilitates the game loop, allowing users to play multiple rounds until they decide to stop.  

## Code Structure  
The code is structured into modular functions, ensuring clarity, reusability, and maintainability:  
1. `get_computer_choice`  
2. `get_user_choice`  
3. `determine_winner`  
4. `game_play`  

## Code Snippet  
```python
import random  # Importing the random module for generating computer's choice

# List of possible choices for the game
choices = ['rock', 'paper', 'scissor']

def get_computer_choice():
    """
    Generates the computer's choice randomly from the list of choices.
    Returns:
        str: Computer's choice ('rock', 'paper', or 'scissor').
    """
    return random.choice(choices)

def get_user_choice():
    """
    Prompts the user for their choice and validates it.
    Returns:
        str: User's choice if valid; otherwise, an error message.
    """
    user_choice = input("Enter your choice (rock, paper, scissor): ").lower()
    if user_choice in choices:
        return user_choice
    else:
        return "Invalid choice. Please try again."

def determine_winner(user_choice, computer_choice):
    """
    Determines the winner of the game based on user and computer choices.
    Parameters:
        user_choice (str): The user's choice.
        computer_choice (str): The computer's choice.
    Returns:
        str: Result of the game ('You win!', 'Computer wins!', or 'It's a tie!').
    """
    if user_choice == computer_choice:
        return "It's a tie!"
    elif (user_choice == 'rock' and computer_choice == 'scissor') or \
         (user_choice == 'scissor' and computer_choice == 'paper') or \
         (user_choice == 'paper' and computer_choice == 'rock'):
        return "You win!"
    else:
        return "Computer wins!"

def game_play():
    """
    Implements the main game loop allowing continuous play until the user decides to stop.
    """
    print("Welcome to Rock-Paper-Scissors! Let's play.")
    while True:
        user_choice = get_user_choice()
        computer_choice = get_computer_choice()
        print(f"You chose: {user_choice}")
        print(f"Computer chose: {computer_choice}")
        result = determine_winner(user_choice, computer_choice)
        print(result)

        play_again = input("Do you want to play again? (y/n): ").lower()
        if play_again != 'y':  # Exit the loop if user chooses not to play again
            break

# Starts the game
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
This project demonstrates how to implement interactive gameplay by utilizing Python's fundamental concepts like loops, functions, and conditionals. By leveraging the `random` module, we achieve an unpredictable and engaging experience for the user. The modular approach ensures the code is both easy to read and scalable for additional features.

## Insights
- **Interactivity** : The use of input/output functions allows for seamless user interaction.
- **Modularity** : The project is broken into multiple small, reusable functions, adhering to the single-responsibility principle.
- **Error Handling** : The program effectively manages invalid user inputs, enhancing robustness.

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



