# Python Project: Supply Chain Shipment Analysis

## Project Overview
This project analyzes a shipment dataset to uncover insights into pricing trends and patterns within the supply chain. The program identifies outliers or anomalies in the data and generates a summary report highlighting the findings.

## Key Features
1. **Data Loading**: Loads the shipment dataset for analysis.
2. **Data Summary**: Provides a concise summary of the dataset.
3. **Outlier Detection**: Identifies outliers using box plots.
4. **Descriptive Statistics**: Generates summary statistics for the dataset.
5. **Summary Report**: Creates a detailed report on pricing trends and patterns.

## Libraries Used
- `pandas`
- `seaborn`
- `matplotlib`

## Code Explanation
- **Data Loading**: Loads the shipment dataset and displays the first few rows.
- **Data Summary**: Prints a concise summary and generates descriptive statistics.
- **Outlier Detection**: Uses box plots to identify anomalies in numerical columns.
- **Summary Report**: Creates a report that provides insights into pricing trends and patterns.

## Code Structure
1. Load and explore the dataset.
2. Summarize the dataset with descriptive statistics.
3. Check for missing values.
4. Visualize numerical columns using box plots.
5. Generate a summary report.

## Code Snippet
```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load the dataset
ship_data = pd.read_csv('/content/drive/MyDrive/Colab Notebooks/Data_Science/Projects/Project Lists & Datasets/SCMS_Delivery_History_Dataset.csv')
ship_data.head()

# Print concise summary of the dataset
print(ship_data.info())

# Generate descriptive statistics
print(ship_data.describe())

# Check for missing values
print(ship_data.isnull().sum())

# Box plot for numerical columns to identify outliers
plt.figure(figsize=(20, 20))
sns.boxplot(data=ship_data.select_dtypes(include='number'))
plt.title('Boxplot of Numerical Columns')
plt.show()

# Generate summary report
summary_report = """
Summary Report:
- Basic information about the dataset: {}
- Summary statistics: {}
- Missing values: {}
""".format(ship_data.info(), ship_data.describe(), ship_data.isnull().sum())
print(summary_report)
```

hey give the result of the last one
Sure, here’s the README.md for your project on supply chain shipment analysis, following the specified format:

markdown
# Python Project: Supply Chain Shipment Analysis

## Project Overview
This project analyzes a shipment dataset to uncover insights into pricing trends and patterns within the supply chain. The program identifies outliers or anomalies in the data and generates a summary report highlighting the findings.

## Key Features
1. **Data Loading**: Loads the shipment dataset for analysis.
2. **Data Summary**: Provides a concise summary of the dataset.
3. **Outlier Detection**: Identifies outliers using box plots.
4. **Descriptive Statistics**: Generates summary statistics for the dataset.
5. **Summary Report**: Creates a detailed report on pricing trends and patterns.

## Libraries Used
- `pandas`
- `seaborn`
- `matplotlib`

## Code Explanation
- **Data Loading**: Loads the shipment dataset and displays the first few rows.
- **Data Summary**: Prints a concise summary and generates descriptive statistics.
- **Outlier Detection**: Uses box plots to identify anomalies in numerical columns.
- **Summary Report**: Creates a report that provides insights into pricing trends and patterns.

## Code Structure
1. Load and explore the dataset.
2. Summarize the dataset with descriptive statistics.
3. Check for missing values.
4. Visualize numerical columns using box plots.
5. Generate a summary report.

## Code Snippet
```python
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load the dataset
ship_data = pd.read_csv('/content/drive/MyDrive/Colab Notebooks/Data_Science/Projects/Project Lists & Datasets/SCMS_Delivery_History_Dataset.csv')
ship_data.head()

# Print concise summary of the dataset
print(ship_data.info())

# Generate descriptive statistics
print(ship_data.describe())

# Check for missing values
print(ship_data.isnull().sum())

# Box plot for numerical columns to identify outliers
plt.figure(figsize=(20, 20))
sns.boxplot(data=ship_data.select_dtypes(include='number'))
plt.title('Boxplot of Numerical Columns')
plt.show()

# Generate summary report
summary_report = """
Summary Report:
- Basic information about the dataset: {}
- Summary statistics: {}
- Missing values: {}
""".format(ship_data.info(), ship_data.describe(), ship_data.isnull().sum())
print(summary_report)
```
## Prerequisites
- Python 3.8+
- Pandas, Seaborn, Matplotlib

## Installation and Usage
1. Install required libraries:
   ```bash
   pip install pandas seaborn matplotlib
2. Clone this repository:
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
3. Navigate to the project directory:
   ```bash
   cd Python/Project_08_Supply_Chain_Shipment_Analysis
4. Run the script :
   ```bash
   jupyter notebook Supply_Chain_Shipment_Analysis.ipynb

## Sample Run
```python
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 10324 entries, 0 to 10323
Data columns (total 33 columns):
 #   Column                        Non-Null Count  Dtype  
---  ------                        --------------  -----  
 0   ID                            10324 non-null  int64  
 1   Project Code                  10324 non-null  object 
 2   PQ #                          10324 non-null  object 
 3   PO / SO #                     10324 non-null  object 
 4   ASN/DN #                      10324 non-null  object 
 5   Country                       10324 non-null  object 
 6   Managed By                    10324 non-null  object 
 7   Fulfill Via                   10324 non-null  object 
 8   Vendor INCO Term              10324 non-null  object 
 9   Shipment Mode                 9964 non-null   object 
 10  PQ First Sent to Client Date  10324 non-null  object 
 11  PO Sent to Vendor Date        10324 non-null  object 
 12  Scheduled Delivery Date       10324 non-null  object 
 13  Delivered to Client Date      10324 non-null  object 
 14  Delivery Recorded Date        10324 non-null  object 
 15  Product Group                 10324 non-null  object 
 16  Sub Classification            10324 non-null  object 
 17  Vendor                        10324 non-null  object 
 18  Item Description              10324 non-null  object 
 19  Molecule/Test Type            10324 non-null  object 
 20  Brand                         10324 non-null  object 
 21  Dosage                        8588 non-null   object 
 22  Dosage Form                   10324 non-null  object 
 23  Unit of Measure (Per Pack)    10324 non-null  int64  
 24  Line Item Quantity            10324 non-null  int64  
 25  Line Item Value               10324 non-null  float64
 26  Pack Price                    10324 non-null  float64
 27  Unit Price                    10324 non-null  float64
 28  Manufacturing Site            10324 non-null  object 
 29  First Line Designation        10324 non-null  object 
 30  Weight (Kilograms)            10324 non-null  object 
 31  Freight Cost (USD)            10324 non-null  object 
 32  Line Item Insurance (USD)     10037 non-null  float64
dtypes: float64(4), int64(3), object(26)
memory usage: 2.6+ MB

# Descriptive statistics
                 ID  Unit of Measure (Per Pack)  Line Item Quantity  \
count  10324.000000                10324.000000        10324.000000   
mean   51098.968229                   77.990895        18332.534870   
std    31944.332496                   76.579764        40035.302961   
min        1.000000                    1.000000            1.000000   
25%    12795.750000                   30.000000          408.000000   
50%    57540.500000                   60.000000         3000.000000   
75%    83648.250000                   90.000000        17039.750000   
max    86823.000000                 1000.000000       619999.000000   

       Line Item Value    Pack Price    Unit Price  Line Item Insurance (USD)  
count     1.032400e+04  10324.000000  10324.000000               10037.000000  
mean      1.576506e+05     21.910241      0.611701                 240.117626  
std       3.452921e+05     45.609223      3.275808                 500.190568  
min       0.000000e+00      0.000000      0.000000                   0.000000  
25%       4.314593e+03      4.120000      0.080000                   6.510000  
50%       3.047147e+04      9.300000      0.160000                  47.040000  
75%       1.664471e+05     23.592500      0.470000                 252.400000  
max       5.951990e+06   1345.640000    238.650000                7708.440000
```
## Explanation
This project involves analyzing a shipment dataset to provide insights into pricing trends and patterns within the supply chain. The dataset includes information about shipment IDs, project codes, countries, shipment modes, item quantities, values, and various costs.

The first step is loading the dataset into a Pandas DataFrame and displaying the first few rows. A concise summary of the dataset is printed, showing data types, non-null counts, and memory usage. Descriptive statistics are generated to provide summary statistics for numerical columns.

Next, the program checks for missing values in each column and visualizes numerical columns using box plots to identify any outliers or anomalies. The summary report provides insights into the basic information about the dataset, summary statistics, and missing values.

The analysis reveals that 'Line Item Value' has the maximum number of outliers, indicating potential anomalies in the pricing data. This information can be used for further investigation to ensure data quality and accuracy.

## Insights
1. **Outlier Detection**: Identified 'Line Item Value' as having the maximum number of outliers, which may require further investigation.
2. **Data Completeness**: Found missing values in columns like 'Shipment Mode', 'Dosage', and 'Line Item Insurance (USD)', which need to be addressed for accurate analysis.
3. **Descriptive Statistics**: Provided a comprehensive summary of the dataset, helping understand the distribution and central tendencies of key attributes.

## Future Enhancements
- **Predictive Analytics**: Develop models to predict shipment costs and delivery times based on historical data.
- **Interactive Dashboards**: Create interactive visualizations and dashboards for real-time monitoring of supply chain metrics.
- **Anomaly Detection**: Implement advanced anomaly detection techniques to automatically flag suspicious data points.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_08_Supply_Chain_Shipment_Analysis/Supply_Chain_Shipment_Analysis.ipynb**.
