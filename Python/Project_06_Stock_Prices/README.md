# Python Project: Comparing Stock Prices

## Description
Write a program that compares the stock prices of APPLE, GOOGLE, MICROSOFT, and AMAZON. The program should retrieve the current stock prices of each company and calculate the percentage change in stock prices over a specified period.
The program should display the percentage change in stock prices for each company and identify which company's stocks are performing the best.
Additionally, the program should retrieve historical stock prices for each company and analyze any trends or patterns in the data.

### Note
Use the `pandas_datareader` library to load the dataset of the given companies.

## Code Structure
- **Importing Libraries**: Import necessary libraries for data retrieval and date handling.
- **Company Dictionary**: Create a dictionary to store company names and their stock symbols.
- **Date Range**: Define the start and end dates for retrieving historical stock data.
- **Retrieve Data**: Fetch stock data for each company using the `pandas_datareader`.
- **Calculate Percentage Change**: Compute the percentage change in stock prices for each company.
- **Display Results**: Print the percentage changes and identify the best performer.
- **Analyze Trends**: Display historical stock prices to identify any trends or patterns.

```python
import pandas as pd
import pandas_datareader.data as web
from datetime import datetime

companies = {  # Creating a dictionary
    'Apple': 'AAPL',
    'Google': 'GOOGL',
    'Microsoft': 'MSFT',
    'Amazon': 'AMZN'
}

start_date = datetime(2023, 1, 1)  # setting the start date to January 1, 2023.
end_date = datetime(2023, 12, 31)  # setting the end date to December 31, 2023.

stock_data = {}  # Creating an empty dictionary

for company, symbol in companies.items():  # Unpacking each key-value pair into the variables company and symbol
    df = web.DataReader(symbol, 'stooq', start_date, end_date)  # retrieves stock data for a company(symbol) from
    # Stooq within a specified date range.
    stock_data[company] = df  # Assigning the retrieved stock data (df) to the stock_data dictionary using the
    # company name (company) as the key.
percentage_change = {}  # Let's define a new dictionary.

for company, data in stock_data.items():  # It iterates through key-value pairs in the stock_data dictionary. In
    # each iteration, company is assigned the key (company name) and data is
    # assigned the value (stock data).
    initial_price = data['Close'][0]  # Retrieves the first closing price from the Close column of the DataFrame.
    final_price = data['Close'][-1]  # Retrieves the last closing price from the Close column of the DataFrame.

    percentage_change[company] = ((final_price - initial_price) / initial_price) * 100  # This line calculates the
    # percentage change in a stock's
    # price and stored in the
    # 'percent_change dictionary'.

print("Percentage change in stock prices: ")  # Displaying percentage change for each company
for company, change in percentage_change.items():
    print(f"{company}: {change:.2f}% change.")

best_performer = max(percentage_change, key=percentage_change.get)  # Finding the company with the highest
# percentage change in stock price.
# 'key = percentage_change.get' tells 'max()' to use the values (percentage changes) to determine the maximum,
# rather than the keys (company names).

print(f"{percentage_change[best_performer]:.2f}% change.")

# Analyzing trends or patterns in the data:

for company, data in stock_data.items():
    print(f"\n Historical stock prices for {company}")
    print(data.head())  # Printing the first 5 rows of 'data'
```

## Prerequisites  
- Python 3.x installed on your machine.  

## Installation and Usage  
1. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

2. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Python/Project_06_Stock_Prices

3. Run the script :
   ```bash
   jupyter notebook Comparing_Stock_Prices.ipynb


## Sample Run
```python
Percentage change in stock prices: 
Apple: -35.04% change.
Google: -36.20% change.
Microsoft: -36.29% change.
Amazon: -43.52% change.
-35.04% change.

Historical stock prices for Apple
              Open    High      Low   Close    Volume
Date                                                 
2023-12-29  193.90  194.40  191.725  192.53  42672148
2023-12-28  194.14  194.66  193.170  193.58  34049898
2023-12-27  192.49  193.50  191.090  193.15  48087681
2023-12-26  193.61  193.89  192.830  193.05  28919310
2023-12-22  195.18  195.41  192.970  193.60  37149570

Historical stock prices for Google
              Open    High      Low   Close    Volume
Date                                                 
2023-12-29  139.63  140.36  138.780  139.69  18733017
2023-12-28  140.78  141.14  139.750  140.23  16045712
2023-12-27  141.59  142.08  139.886  140.37  19628618
2023-12-26  141.59  142.68  141.190  141.52  16780333
2023-12-22  140.77  141.99  140.710  141.49  26532199

Historical stock prices for Microsoft
              Open     High       Low   Close    Volume
Date                                                   
2023-12-29  376.00  377.160  373.4800  376.04  18730838
2023-12-28  375.37  376.458  374.1600  375.28  14327013
2023-12-27  373.69  375.060  372.8116  374.07  14905412
2023-12-26  375.00  376.940  373.5000  374.66  12673050
2023-12-22  373.68  375.180  372.7100  374.58  17107484

Historical stock prices for Amazon
              Open     High     Low   Close    Volume
Date                                                 
2023-12-29  153.10  153.890  151.03  151.94  39823204
2023-12-28  153.72  154.080  152.95  153.38  27057002
2023-12-27  153.56  154.780  153.12  153.34  31434733
2023-12-26  153.56  153.975  153.03  153.41  25067222
2023-12-22  153.77  154.350  152.71  153.42  29514093

<ipython-input-2-18ea08e7d334>:27: FutureWarning: Series.__getitem__ treating keys as positions is deprecated. In a future version, integer keys will always be treated as labels (consistent with DataFrame behavior). To access a value by position, use `ser.iloc[pos]`
  initial_price = data['Close'][0]  # Retrieves the first closing price from the Close column of the DataFrame.
<ipython-input-2-18ea08e7d334>:28: FutureWarning: Series.__getitem__ treating keys as positions is deprecated. In a future version, integer keys will always be treated as labels (consistent with DataFrame behavior). To access a value by position, use `ser.iloc[pos]`
  final_price = data['Close'][-1]    # Retrieves the last closing price from the Close column of the DataFrame.
```
## Insights  
- All four companies experienced a decline in stock prices during the specified period, with **Amazon** showing the most significant drop (-43.52%).  
- The trends in historical data reveal fluctuations influenced by market conditions, highlighting the need for further analysis to understand driving factors.

## Future Enhancements  
1. **Advanced Data Visualization**:  
   - Use libraries like `matplotlib` and `seaborn` to create visual representations of trends and patterns.  
2. **Real-Time Data Retrieval**:  
   - Incorporate APIs like Alpha Vantage or Yahoo Finance for real-time stock data updates.  
3. **Sentiment Analysis**:  
   - Integrate news sentiment analysis to correlate stock price trends with public sentiment.  
4. **Sector Comparison**:  
   - Compare the performance of these companies against their respective sectors.  
5. **Predictive Analysis**:  
   - Implement machine learning models to forecast future stock price trends.  

- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_06_Stock_Prices/Comparing_Stock_Prices.ipynb**.
