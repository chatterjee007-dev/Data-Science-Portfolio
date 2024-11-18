# Python Project: Data Visualization

## Project Overview
This project involves visualizing data using various charts, including bar graphs, scatter plots, pie charts, histograms, box plots, heat maps, bubble charts, and word clouds. The Titanic dataset is used for data visualization to uncover insights about passengers and their attributes.

## Key Features
1. **Bar Graph**: Visualize passenger count by class.
2. **Scatter Plot**: Show the relationship between fare and age.
3. **Pie Chart**: Display the distribution of passengers by sex.
4. **Histogram**: Illustrate the age distribution of passengers.
5. **Box Plot**: Showcase fare distribution by class.
6. **Heat Map**: Visualize correlations between numerical features.
7. **Bubble Chart**: Represent fare vs. age with bubble size indicating class.
8. **Word Cloud**: Generate word clouds for embarkation towns.

## Libraries Used
- `pandas`
- `seaborn`
- `matplotlib`
- `wordcloud`
- `numpy`

## Code Explanation
- **Data Loading**: Load the Titanic dataset for visualization.
- **Data Summary**: Display basic information and statistics about the dataset.
- **Visualizations**: Generate various charts to explore different aspects of the dataset.

## Code Structure
1. Load and explore the dataset.
2. Visualize data using different types of charts.
3. Generate insights from the visualizations.

## Code Snippet
```python
import matplotlib.pyplot as plt
import seaborn as sns
from wordcloud import WordCloud
import pandas as pd
import numpy as np

# Load Titanic dataset
titanic = sns.load_dataset('titanic')

# Display dataset information
print(titanic.info())
print(titanic.describe())
print(titanic.isnull().sum())

# Bar Graph - Passenger Count by Class
plt.figure(figsize=(10, 10))
sns.countplot(x='class', data=titanic, hue='class')
plt.title('Passenger Count by Class')
plt.xlabel('Class')
plt.ylabel('Count')
plt.show()

# Scatter Plot - Fare vs Age
plt.figure(figsize=(10, 10))
sns.scatterplot(x='age', y='fare', data=titanic, hue='sex')
plt.title('Fare vs Age')
plt.xlabel('Age')
plt.ylabel('Fare')
plt.legend(title='Sex')
plt.show()

# Pie Chart - Passenger Distribution by Sex
plt.figure(figsize=(8, 8))
sizes = titanic['sex'].value_counts()
plt.pie(sizes, labels=sizes.index, autopct='%.2f%%')
plt.title('Passenger Distribution by Sex')
plt.show()

# Histogram - Age Distribution
plt.figure(figsize=(18, 12))
sns.histplot(titanic['age'].dropna(), bins=30)
plt.title('Age Distribution')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()

# Box Plot - Fare Distribution by Class
plt.figure(figsize=(10, 10))
sns.boxplot(x='class', y='fare', data=titanic)
plt.title('Fare Distribution by Class')
plt.xlabel('Class')
plt.ylabel('Fare')
plt.show()

# Heat Map - Correlation Matrix
correlation_matrix = titanic.corr(numeric_only=True)
plt.figure(figsize=(10, 10))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Matrix')
plt.show()

# Bubble Chart - Fare vs Age (Bubble Size: Pclass)
plt.figure(figsize=(10, 10))
sns.scatterplot(x='age', y='fare', data=titanic, hue='sex', size='pclass', sizes=(50, 200))
plt.title('Fare vs Age (Bubble Size: Pclass)')
plt.xlabel('Age')
plt.ylabel('Fare')
plt.show()

# Word Cloud - Embark Towns
plt.figure(figsize=(10, 10))
text = ' '.join(titanic['embark_town'].dropna().astype(str).tolist())
wordcloud = WordCloud(width=800, height=400, background_color='white').generate(text)
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.title('Word Cloud of Embark Towns')
plt.show()
```

## Prerequisites
- Python 3.8+
- Pandas, Seaborn, Matplotlib, WordCloud, Numpy

## Installation and Usage
1. Install required libraries:
   ```bash
   pip install pandas seaborn matplotlib wordcloud numpy
2. Clone this repository:
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
3. Navigate to the project directory:
   ```bash
   cd Python/Project_09_Data_Visualization
4. Run the script :
   ```bash
   jupyter notebook Data_Visualization.ipynb

## Sample Run 
```python
# Bar Graph - Passenger Count by Class
plt.figure(figsize=(10, 10))
sns.countplot(x='class', data=titanic, hue='class')
plt.title('Passenger Count by Class')
plt.xlabel('Class')
plt.ylabel('Count')
plt.show()

# Scatter Plot - Fare vs Age
plt.figure(figsize=(10, 10))
sns.scatterplot(x='age', y='fare', data=titanic, hue='sex')
plt.title('Fare vs Age')
plt.xlabel('Age')
plt.ylabel('Fare')
plt.legend(title='Sex')
plt.show()

# Pie Chart - Passenger Distribution by Sex
plt.figure(figsize=(8, 8))
sizes = titanic['sex'].value_counts()
plt.pie(sizes, labels=sizes.index, autopct='%.2f%%')
plt.title('Passenger Distribution by Sex')
plt.show()

# Histogram - Age Distribution
plt.figure(figsize=(18, 12))
sns.histplot(titanic['age'].dropna(), bins=30)
plt.title('Age Distribution')
plt.xlabel('Age')
plt.ylabel('Frequency')
plt.show()

# Box Plot - Fare Distribution by Class
plt.figure(figsize=(10, 10))
sns.boxplot(x='class', y='fare', data=titanic)
plt.title('Fare Distribution by Class')
plt.xlabel('Class')
plt.ylabel('Fare')
plt.show()

# Heat Map - Correlation Matrix
correlation_matrix = titanic.corr(numeric_only=True)
plt.figure(figsize=(10, 10))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Matrix')
plt.show()

# Bubble Chart - Fare vs Age (Bubble Size: Pclass)
plt.figure(figsize=(10, 10))
sns.scatterplot(x='age', y='fare', data=titanic, hue='sex', size='pclass', sizes=(50, 200))
plt.title('Fare vs Age (Bubble Size: Pclass)')
plt.xlabel('Age')
plt.ylabel('Fare')
plt.show()

# Word Cloud - Embark Towns
plt.figure(figsize=(10, 10))
text = ' '.join(titanic['embark_town'].dropna().astype(str).tolist())
wordcloud = WordCloud(width=800, height=400, background_color='white').generate(text)
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.title('Word Cloud of Embark Towns')
plt.show()
```

## Explanation
This project involves visualizing data using various types of charts to gain insights into the Titanic dataset. Different visualizations are used to explore passenger demographics, fare distributions, and correlations between attributes.

- **Bar Graph**: Shows that the majority of passengers were in third class.
- **Scatter Plot**: Indicates no clear relationship between age and fare, with both young and old passengers across different fare ranges.
- **Pie Chart**: Reveals that there were more male passengers (64.76%) than female passengers (35.24%).
- **Histogram**: Shows the age distribution, highlighting that most passengers were between 20 and 30 years old.
- **Box Plot**: Illustrates fare distribution across classes, with First class having higher and more varied fares.
- **Heat Map**: Correlation matrix showing relationships between numerical features.
- **Bubble Chart**: Visualizes fare vs. age, with bubble size representing class.
- **Word Cloud**: Highlights the most common embarkation towns for passengers.

## Insights
1. **Class Distribution**: Third class had the highest number of passengers, possibly due to affordability.
2. **Age and Fare**: No clear correlation between age and fare, but outliers exist with older passengers paying higher fares.
3. **Gender Distribution**: More male passengers, reflecting travel norms of the early 20th century.
4. **Fare Distribution**: First class passengers paid significantly higher fares.
5. **Embarkation Towns**: Southampton was the most common embarkation point.

## Future Enhancements
- **Interactive Visualizations**: Use libraries like Plotly for more interactive and dynamic visualizations.
- **Dashboard Creation**: Develop dashboards for real-time data exploration and analysis.
- **Predictive Modeling**: Implement models to predict survival based on passenger attributes.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_09_Data_Visualization/Data_Visualization.ipynb**.
