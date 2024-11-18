# Python Project: Count Frequency

## Project Overview
This project implements a program that takes a string as input, counts the frequency of each word in the string, and returns the length of the highest-frequency word.

## Key Features
- Counts the frequency of each word in the input string.
- Determines the highest-frequency word.
- Returns the length of the highest-frequency word.

## Libraries Used
- **re**: A built-in Python module for working with regular expressions.

## Code Explanation
The program uses regular expressions to process the input string and count the frequency of each word. It then determines the highest-frequency word and returns its length.

## Code Structure
- **Function Definition**: The function `highest_freq_word(string)` processes the input string to find the highest-frequency word and its length.

## Code Snippet
```python
import re

def highest_freq_word(string):
    word_counts = {}  # Defining an empty dictionary

    for word in string.split(" "):  # 'split()' will split the words in string on the basis of space and make a list of them. Then we will pick every word using for loop
        if word in word_counts:  # If the word in the list of strings present in the empty dictionary 'word_counts' then like below line - the count will increase by 1.
            word_counts[word] += 1  # Here we are defining each word in the list as a key in our dictionary and the value for it is the number of time the word appears in the string. So everytime the word appears, the count will increase by 1.
        else:
            word_counts[word] = 1  # But if the word is not present in the dictionary, then we will initialize a key with the value of 1.
    print(word_counts)  # Print the dictionary.

    # Defining the logic for highest frequency:
    highest = 0
    highest_word = ''

    for word, count in word_counts.items():  # 'word_counts.items()' will provide pairs of keys and their values from the dictionary 'word_counts' and for loop will assign each key to 'word' and value to 'count' one by one.
        if count > highest:
            highest = count
            highest_word = word
    return highest_word, len(highest_word)

if __name__ == "__main__":
    string = input("Enter a string: ")  # Getting user input
    high_frequency_word = highest_freq_word(string)  # Calling the previously defined function on the string
    print("Length of highest frequency word: ", high_frequency_word)
```

## Prerequisites  
- Python 3.x installed on your machine.  

## Installation and Usage
1. Clone this repository :
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_02_Counting_Frequency
3. Run the script :
   ```bash
   jupyter notebook Counting_Frequency.ipynb

## Sample Run
```python
Enter a string: write write write all the number from from from 1 to 100
{'write': 3, 'all': 1, 'the': 1, 'number': 1, 'from': 3, '1': 1, 'to': 1, '100': 1}
Length of highest frequency word: ('write', 5)
```

## Explanation
In the output, we can see 'write' is the word that appeared most frequently, and its length is 5. The program doesn't print the word with the highest length, but if the frequency of two words is the same, it will print the word with the longer length.

## Insights
- The program effectively demonstrates the use of dictionaries for counting word frequencies.
- Regular expressions are utilized for efficient string manipulation.
- The approach can be extended to handle more complex text processing tasks.
   
## Future Enhancements
1. **Handle Punctuation** :
   - Improve the code to ignore punctuation marks in the input string.

2. **Case Sensitivity** :
   - Adjust the code to treat words with different cases (e.g., "Write" and "write") as the same word.

3. **User Interface** :
   - Develop a graphical user interface (GUI) using Tkinter or PyQt for a better user experience.

4. **Performance Optimization** :
   - Optimize the code for handling very large input strings efficiently.
  
5. **Extended Functionality** :
   - Add functionality to find the word with the highest length if frequencies are the same.
  
6.  **Visualization** :
    - Incorporate visualizations such as word clouds to better illustrate

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_02_Counting_Frequency/Counting_Frequency.ipynb**.




