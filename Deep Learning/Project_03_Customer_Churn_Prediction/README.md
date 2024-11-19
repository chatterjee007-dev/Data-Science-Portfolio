# Deep Learning Project - Customer Churn Prediction

## Project Overview
This project involves predicting whether or not a customer is likely to churn using a deep learning model. The task is to choose an appropriate algorithm for predicting customer churn based on the available data, and to evaluate the performance of the model using metrics such as accuracy, precision, recall, and F1 score.

## Key Features
1. **Data Preprocessing**: Load the dataset, handle missing values, and preprocess categorical and numerical features.
2. **Model Building**: Implement a deep learning model using the TensorFlow library.
3. **Training and Evaluation**: Train the model and evaluate its performance using various metrics.
4. **Metrics**: Calculate accuracy, precision, recall, and F1 score to assess model performance.

## Libraries Used
- `pandas`
- `sklearn`
- `tensorflow`
- `keras`

## Code Explanation
- **Data Loading and Preprocessing**: Load the dataset, drop irrelevant columns, convert categorical features to numerical using one-hot encoding, and scale numerical features.
- **Model Building**: Build and compile a deep learning model using dense layers with appropriate activation functions.
- **Model Training**: Train the model using the training dataset.
- **Model Evaluation**: Evaluate the model using accuracy, precision, recall, and F1 score.

## Code Structure
1. Import necessary libraries.
2. Load and preprocess the dataset.
3. Build and compile the deep learning model.
4. Train the model.
5. Evaluate the model and calculate metrics.

## Code Snippet
```python
# Importing necessary libraries
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from tensorflow import keras
from tensorflow.keras import layers
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

# Loading the dataset
data = pd.read_csv('/content/drive/MyDrive/Data_Science/Projects/Deep Learning Projects/Datasets/Churn_Modelling.csv')

# Checking the details of the dataset
print(data.shape)
print(data.columns)
print(data.info())
print(data.describe())

# Dropping irrelevant columns
data = data.drop(['RowNumber', 'CustomerId', 'Surname'], axis=1)

# Converting categorical features to numerical using one-hot encoding
data = pd.get_dummies(data, columns=['Geography', 'Gender'], drop_first=True)

# Separating features (X) and target (y)
X = data.drop('Exited', axis=1)
y = data['Exited']

# Splitting data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Scaling numerical features using StandardScaler
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)

# Building and training the deep learning model
model = keras.Sequential([
    layers.Dense(64, activation='relu', input_shape=(X_train.shape[1],)),
    layers.Dense(32, activation='relu'),
    layers.Dense(1, activation='sigmoid')
])

model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])

model.fit(X_train, y_train, epochs=50, batch_size=32)

# Evaluating the model
y_pred = model.predict(X_test)
y_pred_binary = (y_pred > 0.5).astype(int)

accuracy = accuracy_score(y_test, y_pred_binary)
precision = precision_score(y_test, y_pred_binary)
recall = recall_score(y_test, y_pred_binary)
f1 = f1_score(y_test, y_pred_binary)

print(f"Accuracy: {accuracy}")
print(f"Precision: {precision}")
print(f"Recall: {recall}")
print(f"F1 Score: {f1}")
```
## Prerequisites
- Python 3.8+
- Pandas, Scikit-learn, TensorFlow, Keras

## Installation and Usage
1. Install required libraries:
    ```bash
    pip install pandas scikit-learn tensorflow keras
    ```
2. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git
    ```
3. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Deep Learning/Project_03_Customer_Churn_Prediction
    ```
4. Run the script :
   ```bash
   jupyter notebook Customer_Churn_Prediction.ipynb
   ```
## Sample Run
```python
# Evaluating the model
y_pred = model.predict(X_test)
y_pred_binary = (y_pred > 0.5).astype(int)

accuracy = accuracy_score(y_test, y_pred_binary)
precision = precision_score(y_test, y_pred_binary)
recall = recall_score(y_test, y_pred_binary)
f1 = f1_score(y_test, y_pred_binary)

print(f"Accuracy: {accuracy}")
print(f"Precision: {precision}")
print(f"Recall: {recall}")
print(f"F1 Score: {f1}")
```
## Explanation
This project involves predicting customer churn using a deep learning model built with the TensorFlow library. The dataset contains information about customers, such as their credit score, geography, gender, age, tenure, balance, number of products, and whether they have exited (churned).

- **Data Preprocessing**: The dataset is preprocessed by dropping irrelevant columns, converting categorical features to numerical using one-hot encoding, and scaling numerical features using StandardScaler.
- **Model Building**: A deep learning model is built using dense layers with ReLU activation for hidden layers and sigmoid activation for the output layer.
- **Model Training**: The model is trained using the Adam optimizer and binary cross-entropy loss function.
- **Model Evaluation**: The model's performance is evaluated using accuracy, precision, recall, and F1 score.

## Insights
1. **Model Performance**: The model achieved an accuracy of 86.1%, with a precision of 69.1%, recall of 52.9%, and F1 score of 59.9%.
2. **Feature Importance**: The model can be further improved by exploring feature importance and engineering new features.
3. **Data Preprocessing**: Proper data preprocessing, including scaling and encoding, is crucial for training an effective model.

## Future Enhancements
- **Hyperparameter Tuning**: Experiment with different hyperparameters, such as learning rates, batch sizes, and epochs, to further optimize model performance.
- **Advanced Models**: Implement more advanced models, such as ensemble methods or more complex neural network architectures.
- **Feature Engineering**: Explore and engineer new features to improve model performance and capture more intricate patterns in the data.
## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Deep Learning/Project_03_Customer_Churn_Prediction/Customer_Churn_Prediction.ipynb**.
