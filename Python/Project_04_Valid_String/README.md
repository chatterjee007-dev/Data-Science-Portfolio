# Python Project: Finding Valid String

## Description
Write a program that takes a string as input and determines if all characters of the string appear the same number of times. If so, return "YES". Otherwise, check if removing just one character at any index in the string will make all characters appear the same number of times. If so, return "YES". Otherwise, return "NO".

### Example
- **Input 1**: `abc` - This is a valid string because frequencies are {“a”: 1, “b”: 1, “c”: 1}
  **Output 1**: YES
- **Input 2**: `abcc` - This string is not valid as we can remove only 1 occurrence of “c”. That leaves character frequencies of { “a”: 1, “b”: 1 , “c”: 2 }
  **Output 2**: NO

## Tools Used
- **Python**: The programming language used to develop the project.
- **Counter Module**: To count the frequency of each character in the string.

## How It Works
1. The user inputs a string.
2. The program counts the frequency of each character using the Counter module.
3. The program checks if all characters appear the same number of times.
4. If not, the program checks if removing one character will make all characters appear the same number of times.
5. Based on the checks, the program returns "YES" or "NO".

## Code Structure
- **Function Definition**: The function `check_valid(string)` takes an input string and checks the validity based on character frequencies.

```python
from collections import Counter

def check_valid(string):
    char_count = Counter(string)  # Counting the number of characters in the input string
    print("Characters and their frequency:", char_count)  # Printing the dictionary
    count = list(char_count.values())  # Making a list of all the values (frequencies) in the dictionary 'char_count'
    print("List of frequencies of all the characters:", count)  # Printing the list
    if len(set(count)) == 1:  # It will check whether there is only 1 unique count in the set
        return "YES"  # All characters appear the same number of times.

    # Implementing the second condition:
    for i in range(len(count)):  # Assigning one by one value to 'i' from the list of values 'count' using a for loop.
        new_count = count[:i] + count[i+1:]  # Initializing 'new_count' which includes all values before 'i' and after 'i'.
        if len(set(new_count)) == 1:
            return "YES"

    return "NO"

words = input("Enter a string: ")  # Taking input from the user
result = check_valid(words)  # Calling the function
print("Is it a valid string? -", result)
```

## Prerequisites  
- Python 3.x installed on your machine.

## Installation and Usage
1. Clone this repository :
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_04_Valid_String
3. Run the script :
   ```bash
   jupyter notebook Finding_Valid_String.ipynb

## Sample Run
Enter a string: anindya
Characters and their frequency: Counter({'a': 2, 'n': 2, 'i': 1, 'd': 1, 'y': 1})
List of frequencies of all the characters: [2, 2, 1, 1, 1]
Is it a valid string? - NO

## Future Enhancements

1. **Handle Punctuation**:
   - Improve the code to ignore punctuation marks in the input string.

2. **Case Sensitivity**:
   - Adjust the code to treat characters with different cases (e.g., "A" and "a") as the same character.

3. **Input Validation**:
   - Enhance input validation to handle different types of input gracefully.

4. **Performance Optimization**:
   - Optimize the code for handling very large input strings efficiently.
