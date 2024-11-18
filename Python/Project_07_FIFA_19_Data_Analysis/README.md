# FIFA-19 DATA ANALYSIS

## Project Overview
This project analyzes the FIFA 19 player dataset to uncover insights about how various player attributes affect the overall rating. The program performs descriptive analytics, identifies top-rated players, and determines the most important attributes for predicting player ratings.

## Key Features
1. **Data Cleaning**: Handles missing values and ensures consistent data formatting.
2. **Descriptive Statistics**: Calculates and visualizes correlations between attributes.
3. **Top Players Identification**: Identifies players with the highest overall ratings.
4. **Attribute Analysis**: Determines the most significant attributes for predicting overall ratings using Linear Regression.
5. **Data Visualization**: Generates heatmaps for correlation analysis.

## Libraries Used
- `pandas`
- `numpy`
- `matplotlib`
- `seaborn`
- `sklearn`

## Code Explanation
- **Data Loading**: Loads the dataset and examines its structure.
- **Data Cleaning**: Handles missing values and formats columns for analysis.
- **Analysis**: Calculates correlations and identifies key player attributes.
- **Visualization**: Generates heatmaps to visualize relationships.
- **Regression Analysis**: Uses linear regression to determine feature importance.

## Code Structure
1. Load and explore the dataset.
2. Analyze correlations using descriptive statistics.
3. Visualize correlations with a heatmap.
4. Identify top-rated players.
5. Use regression analysis for feature importance.

## Code Snippet
```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression

# Load dataset
data = pd.read_csv('/content/drive/MyDrive/Colab Notebooks/Data_Science/Projects/Project Lists & Datasets/FIFA19.csv')

# Display data structure
print(data.info())

# Check for missing values
print(data.isnull().sum().sum())

# Calculate correlation matrix
correlation_matrix = data.corr(numeric_only=True)

# Visualize heatmap
plt.figure(figsize=(20, 20))
sns.heatmap(correlation_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Heatmap')
plt.show()

# Identify players with highest overall rating
highest_rated_players = data[data['Overall'] == data['Overall'].max()]
print(highest_rated_players[['Name', 'Overall']])

# Regression to find important features
x = data.drop(['Overall', 'Name', 'Balance', 'Unnamed: 0'], axis=1)
y = data['Overall']
x = pd.get_dummies(x)

model = LinearRegression()
model.fit(x, y)
feature_importance = pd.Series(model.coef_, index=x.columns).sort_values(ascending=False)
print("Feature Importance:\n", feature_importance.head(5))
```

## Prerequisites
- Python 3.8+
- Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn

## Installation and Usage
1. Install required libraries:
   ```bash
   pip install pandas numpy matplotlib seaborn scikit-learn
2. Clone this repository :
   ```bash
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
3. Navigate to the project directory :
   ```bash
   cd Python/Project_07_FIFA_19_Data_Analysis
4. Run the script :
   ```bash
   jupyter notebook FIFA_19_Data_Analysis.ipynb

## Sample Run
```python
# Example of correlation matrix output
Overall                    1.000000
Reactions                  0.850071
Composure                  0.727646
ShortPassing               0.502275
Name: Overall, dtype: float64

# Example output for top players
Name           Overall
L. Messi       94
Cristiano Ronaldo 94
```
## Explanation
- **Correlation Analysis**: The correlation matrix and heatmap revealed that `Reactions` and `Composure` have the strongest positive influence on the overall rating, while goalkeeping attributes negatively impact outfield players' ratings.
- **Regression Insights**: Linear regression highlighted the significance of player value in determining overall ratings, linking market worth with perceived potential and skill.
- **Top Players**: Lionel Messi and Cristiano Ronaldo emerged as the highest-rated players with a rating of 94 each, showcasing exceptional attributes across the board.
- **Attribute Importance**: Attributes like `ShortPassing` and `Potential` moderately influence ratings, while others like `Jersey Number` have negligible impact.

## Insights
1. **Key Influencers**: Attributes such as `Reactions`, `Composure`, and `Special` highly impact player ratings.
2. **Market Value**: Players with higher market value tend to have better overall ratings.
3. **Goalkeeping Metrics**: Negative correlation with overall ratings indicates specialization.

## Future Enhancements
- Integrate predictive models to forecast player performance based on current attributes.
- Include time-series analysis for historical player performance.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Python/Project_07_FIFA_19_Data_Analysis/FIFA_19_Data_Analysis.ipynb**.
