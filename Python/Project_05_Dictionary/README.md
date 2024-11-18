# PYTHON PROJECT: DICTIONARY

## Project Overview
This project allows users to create a dictionary of personal details for a group of people. It collects information such as name, age, and occupation for each person, stores it in a dictionary, and displays the details.

## Key Features
- User-friendly interface for data input.
- Dynamically creates a dictionary for storing personal details.
- Displays the details in a structured format.

## Libraries Used
- No external libraries used; utilizes Python's built-in functionalities.

## Code Explanation
1. **User Input**: The program asks for the number of people and their details.
2. **Dictionary Storage**: Details are stored in a nested dictionary structure.
3. **Output**: Prints all details in a readable format.

## Code Structure
- **Function**: `people_details` collects and processes user inputs.
- **Main Execution**: Calls the function and displays the formatted dictionary.

## Code Snippet
```python
def people_details():
    num_people = int(input("How many people? "))  # Number of people
    people_deets = {}  # Dictionary to store details

    for i in range(num_people):  # Loop to collect details for each person
        name = input(f"Enter name of person {i+1}: ")
        age = input(f"Enter age of person {i+1}: ")
        occupation = input(f"Enter occupation of person {i+1}: ")
        
        # Adding the details to the dictionary
        people_deets[name] = {'Age': age, 'Occupation': occupation}
    
    return people_deets

# Call the function and display the details
details = people_details()
print("\nDetails of people:")
for name, info in details.items():  # Iterating through the dictionary
    print(f"Name: {name}, Age: {info['Age']}, Occupation: {info['Occupation']}")
```

## Prerequisites  
- Python 3 installed on your system.  

## Installation and Usage
1. Clone this repository :
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_05_Dictionary
3. Run the script :
   ```bash
   jupyter notebook Dictionary.ipynb

## Sample Run
```python
How many people? 2
Enter name of person 1: John
Enter age of person 1: 30
Enter occupation of person 1: Engineer
Enter name of person 2: Sarah
Enter age of person 2: 25
Enter occupation of person 2: Teacher

Details of people: 
Name: John, Age: 30, Occupation: Engineer
Name: Sarah, Age: 25, Occupation: Teacher
```

## Explanation
- The program creates a nested dictionary where the keys are names, and the values are dictionaries containing each person's age and occupation. This structure ensures easy storage and retrieval of personal details.
- The function `people_details` uses a loop to gather user input for multiple people, dynamically adapting to the number specified by the user.
- A final loop iterates through the dictionary to display the data in a clear, structured format, demonstrating Python’s capabilities for handling hierarchical data.

## Insights
1. **Dynamic Input Handling**: The program adapts to user input, making it versatile for varying data sizes.
2. **Organized Data Representation**: The nested dictionary format effectively organizes complex data, ensuring it remains structured and accessible.
3. **Real-World Applicability**: Demonstrates practical use of Python's dictionaries for managing information in applications like contact lists or employee databases.

## Future Enhancements

1. **Expand Information**:
   - Add more fields such as address, phone number, and email to the personal details.

2. **Data Validation**:
   - Implement input validation to ensure the correct format of data (e.g., age as an integer).

3. **Search Functionality**:
   - Add a feature to search for a person’s details by name.

4. **Persistent Storage**:
   - Save the dictionary to a file (e.g., CSV or JSON) and load it when the program starts.

## View on GitHub :
- You can view this project on GitHub: [[Data-Science-Portfolio]](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_05_Dictionary/Dictionary.ipynb.**
