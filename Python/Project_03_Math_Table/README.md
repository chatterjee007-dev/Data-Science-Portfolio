# Python Project: Creating Mathematical Table of Any Number

## Project Overview
This project is designed to generate a multiplication table for any given integer. The program takes an integer as input and displays its multiplication table from 1 to 10.

## Key Features
- User-friendly input for any integer.
- Generates a multiplication table from 1 to 10.
- Prints results in a formatted table.

## Libraries Used
- **Python**: The programming language used to implement this project.
- No additional libraries are required for this project, as it's based solely on Python's built-in functions.

## Code Explanation
The program defines a function `multiplication(num)` that:
1. Accepts an integer as input.
2. Uses a for loop to multiply the input by numbers 1 to 10.
3. Prints the results in a table format.

## Code Structure
1. **Function Definition**: `multiplication(num)` - takes the input number and multiplies it with each number from 1 to 10.
2. **Input Handling**: Takes input from the user to create the multiplication table for the given number.
3. **Output**: Displays the multiplication table in a formatted way.

## Code Snippet
```python
def multiplication(num):
    for i in range(1, 11):  # Assigning numbers one by one to 'i' from 1 to 10 using a for loop
        result = i * num
        print(i, 'x', num, '=', result)  # Multiplying each number from 1 to 10 with the input number and printing the result

num = int(input("Enter a number: "))  # Taking input from the user
multiplication(num)  # Calling the function we have defined
```

## Prerequisites  
- Python 3.x installed on your machine.  

## Installation and Usage  
1. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_03_Math_Table

3. Run the script :
   ```bash
   jupyter notebook Creating_Math_Table.ipynb

## Sample Run
```python
Enter a number: 49
1 x 49 = 49
2 x 49 = 98
3 x 49 = 147
4 x 49 = 196
5 x 49 = 245
6 x 49 = 294
7 x 49 = 343
8 x 49 = 392
9 x 49 = 441
10 x 49 = 490
```

## Explanation
- The program asks the user to enter an integer.
- It then multiplies that number by each of the numbers from 1 to 10 and prints the result in a formatted manner.

## Insights
- This project demonstrates the ability to work with loops and user input in Python.
- It provides a simple way to automate the creation of a multiplication table for any number.


## Future Enhancements

1. **Extend Range** :
   - Allow the user to specify the range up to which the table should be generated.

3. **Save Output** :
   - Add functionality to save the output table to a text file.

5. **GUI Interface** :
   - Develop a graphical user interface (GUI) using libraries such as Tkinter or PyQt to make the program more user-friendly.

7. **Input Validation** :
   - Improve input validation to handle non-integer inputs gracefully.

## View on GitHub
- You can view this project on GitHub: [[Data-Science-Portfolio]](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_03_Math_Table/Creating_Math_Table.ipynb**.
