# Python Project: Dictionary

## Description
Write a Python program that allows the user to create a dictionary of personal details for a group of people. The program should ask the user to enter the name, age, and occupation for each person, and then store this information in a dictionary. Once all the details have been entered, the program should print out the dictionary.

### Example
Here's how the output of the Python program would look like:
{ 'Name': 'John', 'Age': 30, 'Occupation': 'Engineer' }, { 'Name': 'Sarah', 'Age': 25, 'Occupation': 'Teacher' }


## Code Structure
- **Function Definition**: The function `people_details()` takes input for the number of people and their personal details, then returns the details in a dictionary format.

```python
def people_details():
    num_people = int(input("How many people? "))  # Taking input of the number of people
    people_deets = {}

    for i in range(num_people):  # If number of people is 4, then i = 0,1,2,3
        name = input(f"Enter name of person {i+1}: ")  # For i = 0, we will take input of the 1st person's details.
        age = input(f"Enter age of person {i+1}: ")
        occupation = input(f"Enter occupation of person {i+1}: ")

        people_deets[name] = {'Age': age, 'Occupation': occupation}  # Defining our dictionary
    return people_deets

details = people_details()  # Calling the function to get the dictionary

print("\nDetails of people: ")
for name, info in details.items():  # This line iterates through key-value pairs in the 'details' dictionary,
                                    # assigning the key to 'name' and the value to 'info'.
    print(f"Name: {name}, Age: {info['Age']}, Occupation: {info['Occupation']}")
```

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

## Prerequisites  
- Python 3.x installed on your machine.  

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

## Future Enhancements

1. **Expand Information**:
   - Add more fields such as address, phone number, and email to the personal details.

2. **Data Validation**:
   - Implement input validation to ensure the correct format of data (e.g., age as an integer).

3. **Search Functionality**:
   - Add a feature to search for a person’s details by name.

4. **Persistent Storage**:
   - Save the dictionary to a file (e.g., CSV or JSON) and load it when the program starts.
     
- You can view this project on GitHub: [[Data-Science-Portfolio]](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_05_Dictionary/Dictionary.ipynb.**
