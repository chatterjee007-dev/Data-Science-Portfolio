# Python Project: Web Scraping

## Project Overview
This project involves writing a Python program to scrape various types of data from web pages. The tasks include scraping all the text, scraping a particular div, and scraping all the tables from a web page. The `requests` library is used for making HTTP requests, and `beautifulsoup4` is used for parsing HTML and XML documents.

## Key Features
1. **Scrape All Text**: Extract all the text content from a web page.
2. **Scrape Particular Div**: Extract only the content within a specific div element.
3. **Scrape All Tables**: Extract all table data from a web page.

## Libraries Used
- `requests`
- `beautifulsoup4`

## Code Explanation
- **Data Loading**: Install and import necessary libraries.
- **Scraping Functions**: Define functions to scrape all text, specific div content, and all tables.
- **HTTP Requests**: Use `requests` to fetch web page content.
- **HTML Parsing**: Use BeautifulSoup to parse HTML and extract required data.

## Code Structure
1. Install required libraries.
2. Import necessary libraries.
3. Fetch web page content.
4. Parse HTML and extract data.

## Code Snippet
```python
# Install required libraries
%pip install requests
%pip install beautifulsoup4

# Import necessary libraries
import requests
from bs4 import BeautifulSoup

# URL of the web page to scrape
url = 'https://en.wikipedia.org/wiki/Marvel_Cinematic_Universe'

# Function to scrape all text from the web page
def scrape_all_text(url):
    response = requests.get(url)  # Sending a GET request to the URL
    soup = BeautifulSoup(response.content, 'html.parser')  # Parsing the HTML content
    all_text = soup.get_text()  # Extracting all text content
    return all_text

# Function to scrape a particular div from the web page
def scrape_div(url, div_id):
    response = requests.get(url)  # Sending a GET request to the URL
    soup = BeautifulSoup(response.content, 'html.parser')  # Parsing the HTML content
    div_content = soup.find('div', id=div_id)  # Finding the div with the specified id
    return div_content.get_text() if div_content else 'Div not found'

# Function to scrape all tables from the web page
def scrape_all_tables(url):
    response = requests.get(url)  # Sending a GET request to the URL
    soup = BeautifulSoup(response.content, 'html.parser')  # Parsing the HTML content
    tables = soup.find_all('table')  # Finding all table elements
    return tables

# Scrape all text from the web page
all_text = scrape_all_text(url)
print(all_text[:1000])  # Print first 1000 characters of the scraped text

# Scrape a particular div from the web page
div_id = 'mw-content-text'
div_text = scrape_div(url, div_id)
print(div_text[:1000])  # Print first 1000 characters of the scraped div content

# Scrape all tables from the web page
tables = scrape_all_tables(url)
print(f'Found {len(tables)} tables on the web page.')
for i, table in enumerate(tables, start=1):
    print(f'\nTable {i}:')
    print(table)
```
## Prerequisites
- Python 3.8+
- requests, beautifulsoup4
## Installation and Usage
1. Install required libraries:
   ```bash
   pip install requests beautifulsoup4
2. 2. Clone this repository:
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
3. Navigate to the project directory:
   ```bash
   cd Python/Project_10_Web_Scraping
4. Run the script :
   ```bash
   jupyter notebook Web_Scraping.ipynb

## Sample Run
```python
# Scrape all text from the web page
all_text = scrape_all_text(url)
print(all_text[:1000])  # Print first 1000 characters of the scraped text

# Scrape a particular div from the web page
div_id = 'mw-content-text'
div_text = scrape_div(url, div_id)
print(div_text[:1000])  # Print first 1000 characters of the scraped div content

# Scrape all tables from the web page
tables = scrape_all_tables(url)
print(f'Found {len(tables)} tables on the web page.')
for i, table in enumerate(tables, start=1):
    print(f'\nTable {i}:')
    print(table)
```

## Explanation
This project involves writing a Python program to scrape data from web pages using the `requests` and `beautifulsoup4` libraries. The program can scrape all text content, specific div elements, and all tables from a given URL.

- **Scrape All Text**: The `scrape_all_text` function sends a GET request to the URL, parses the HTML content using BeautifulSoup, and extracts all text content.
- **Scrape Particular Div**: The `scrape_div` function sends a GET request, parses the HTML content, and extracts the text content from a specific div element identified by its `id`.
- **Scrape All Tables**: The `scrape_all_tables` function sends a GET request, parses the HTML content, and finds all table elements on the page.

## Insights
1. **Versatility**: The program can extract different types of data (text, div content, tables) from web pages, demonstrating its versatility.
2. **Modular Design**: Each scraping function is modular, allowing for easy customization and reuse in other projects.
3. **Data Extraction**: Efficiently extracts data from web pages, which can be useful for data analysis, research, and automation tasks.

## Future Enhancements
- **Error Handling**: Implement robust error handling to manage network issues and invalid URLs.
- **Pagination Handling**: Extend the program to handle pagination and scrape data from multiple pages.
- **Automated Testing**: Develop automated tests to ensure the correctness of scraping functions.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_10_Web_Scraping/Web_Scraping.ipynb**.
