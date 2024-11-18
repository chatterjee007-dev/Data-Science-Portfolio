# Python Project : Creating Mathematical Table of Any Number

## Description
This project implements a program that takes an integer as input and creates a mathematical table of that number.

### Example
1 x number = result 2 x number = result 3 x number = result ... 10 x number = result

## Tools Used
- **Python**: The programming language used to develop the project.

## How It Works
1. The user inputs a number.
2. The program multiplies the input number by each number from 1 to 10.
3. The results are printed in a formatted table.

## Code Structure
- **Function Definition**: The function `multiplication(num)` takes an input number and prints its multiplication table from 1 to 10.

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

## Future Enhancements

1. **Extend Range** :
   - Allow the user to specify the range up to which the table should be generated.

3. **Save Output** :
   - Add functionality to save the output table to a text file.

5. **GUI Interface** :
   - Develop a graphical user interface (GUI) using libraries such as Tkinter or PyQt to make the program more user-friendly.

7. **Input Validation** :
   - Improve input validation to handle non-integer inputs gracefully.

- **You can view this project on GitHub: [[Data-Science-Portfolio]](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory Python/Project_03_Math_Table/Creating_Math_Table.ipynb**.
