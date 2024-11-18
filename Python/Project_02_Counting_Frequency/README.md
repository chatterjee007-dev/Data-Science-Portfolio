# Python Project: Count Frequency

## Description
This project implements a program that takes a string as input and counts the frequency of each word in the string. The task is to find the highest frequency and return the length of the highest-frequency word.

### Example
**Input :**  
`write write write all the number from from from 1 to 100`  
**Output :**  
`Length of the highest-frequency word: 5`

## Tools Used
- **Python** : The programming language used to develop the project.
- **Regular Expressions (re)**: A built-in Python module used for working with regular expressions to find and match patterns in strings.

## How It Works
1. The user inputs a string.
2. The program splits the string into words and counts the frequency of each word using a dictionary.
3. It identifies the word with the highest frequency.
4. The program returns the highest-frequency word and its length.

## Code Structure
- **Function `highest_freq_word(string)`** :
  - Uses the `re` module to process the input string.
  - Splits the string into words and counts their frequencies.
  - Determines the word with the highest frequency.
  - Returns the highest-frequency word and its length.

```python
import re

def highest_freq_word(string):
    word_counts = {}  # Define an empty dictionary

    for word in string.split(" "):  # Split the string into words
        if word in word_counts:
            word_counts[word] += 1  # Increment the count if the word is already in the dictionary
        else:
            word_counts[word] = 1  # Initialize the word count to 1 if it's not in the dictionary

    print(word_counts)  # Print the dictionary of word counts

    highest = 0
    highest_word = ''

    for word, count in word_counts.items():  # Find the word with the highest frequency
        if count > highest:
            highest = count
            highest_word = word

    return highest_word, len(highest_word)

# Main function
if __name__ == "__main__":
    string = input("Enter a string: ")  # Get user input
    high_frequency_word = highest_freq_word(string)  # Call the function
    print("Length of highest frequency word:", high_frequency_word)
```

## Sample Run
Enter a string: write write write all the number from from from 1 to 100
{'write': 3, 'all': 1, 'the': 1, 'number': 1, 'from': 3, '1': 1, 'to': 1, '100': 1}
Length of highest frequency word: ('write', 5)

In the output, we can see 'write' is the word that appeared most frequently, and its length is 5.

## Prerequisites  
- Python 3.x installed on your machine.  

## Installation and Usage
1. Clone this repository :
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
2. Navigate to the project directory :
   cd Data-Science-Portfolio/Python/Project_02_Counting_Frequency
3. Run the script :
   jupyter notebook Counting_Frequency.ipynb
   
## Future Enhancements
1. **Handle Punctuation** :
   - Improve the code to ignore punctuation marks in the input string.

2. **Case Sensitivity** :
   - Adjust the code to treat words with different cases (e.g., "Write" and "write") as the same word.

3. **User Interface** :
   - Develop a graphical user interface (GUI) using Tkinter or PyQt for a better user experience.

4. **Performance Optimization** :
   - Optimize the code for handling very large input strings efficiently.

- You can view this project on GitHub: Data-Science-Portfolio under the directory **Python/Project_02_Counting_Frequency/Counting_Frequency.ipynb**.




