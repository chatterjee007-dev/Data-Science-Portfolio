# Deep Learning Project - RNN Model Architecture

## Project Overview
This project involves implementing and comparing three different Recurrent Neural Network (RNN) architectures using the TensorFlow library. The models are trained and evaluated on the MNIST dataset, ensuring that each model achieves a minimum accuracy of at least 90%.

## Key Features
1. **Three RNN Architectures**: Implement three different RNN architectures (Simple RNN, LSTM, and GRU).
2. **Data Preprocessing**: Normalize pixel values and reshape the dataset for RNN input.
3. **Training and Evaluation**: Train and evaluate the models, ensuring they achieve a minimum accuracy of 90%.
4. **Comparison Table**: Generate a table to compare the accuracy of the different models.

## Libraries Used
- `tensorflow`

## Code Explanation
- **Data Loading and Preprocessing**: Load the MNIST dataset, normalize pixel values, and reshape the data for RNN input.
- **Model Architectures**: Define three different RNN architectures (Simple RNN, LSTM, and GRU).
- **Model Compilation and Training**: Compile and train the models using the categorical cross-entropy loss function and Adam optimizer.
- **Evaluation and Comparison**: Evaluate the models and compare their performance using a comparison table.

## Code Structure
1. Import necessary libraries.
2. Load and preprocess the MNIST dataset.
3. Define three RNN architectures.
4. Compile and train the models.
5. Evaluate the models and create a comparison table.

## Code Snippet
```python
# Importing Libraries
import tensorflow as tf

# Defining the 3 different RNN architectures
def model_1(input_shape):
    """Simple RNN model."""
    model = tf.keras.Sequential([
        tf.keras.layers.SimpleRNN(128, activation='relu', input_shape=input_shape),  # SimpleRNN layer with 128 units
        tf.keras.layers.Dense(10, activation='softmax')  # Output layer with 10 units (for 10 digits)
    ])
    return model

def model_2(input_shape):
    """LSTM model."""
    model = tf.keras.Sequential([
        tf.keras.layers.LSTM(128, activation='relu', input_shape=input_shape),  # LSTM layer with 128 units
        tf.keras.layers.Dense(10, activation='softmax')  # Output layer with 10 units
    ])
    return model

def model_3(input_shape):
    """GRU model."""
    model = tf.keras.Sequential([
        tf.keras.layers.GRU(128, activation='relu', input_shape=input_shape),  # GRU layer with 128 units
        tf.keras.layers.Dense(10, activation='softmax')  # Output layer with 10 units
    ])
    return model

# Loading and preprocessing the MNIST dataset
(x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()
x_train = x_train.astype('float32') / 255.0  # Normalizing pixel values to the range [0, 1]
x_test = x_test.astype('float32') / 255.0
y_train = tf.keras.utils.to_categorical(y_train, num_classes=10)  # Converting labels to one-hot encoding
y_test = tf.keras.utils.to_categorical(y_test, num_classes=10)

# Reshaping the input data for RNN
x_train = x_train.reshape(-1, 28, 28)  # Reshaping to (samples, timesteps, features)
x_test = x_test.reshape(-1, 28, 28)

# Training and Evaluating Models
input_shape = (28, 28)  # Input shape for RNN
models = [model_1(input_shape), model_2(input_shape), model_3(input_shape)]  # List of models
model_names = ['Simple RNN', 'LSTM', 'GRU']  # Model names for comparison
results = []  # To store results

for i, model in enumerate(models):
    model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])  # Compiling the model
    model.fit(x_train, y_train, epochs=10, batch_size=32)  # Training the model
    _, accuracy = model.evaluate(x_test, y_test, verbose=0)  # Evaluating the model
    results.append([model_names[i], accuracy])  # Storing the results

# Creating a Comparison Table
print("Comparison Table:")
print("{:<15} {:<10}".format('Model', 'Accuracy'))
for result in results:
    print("{:<15} {:<10.4f}".format(result[0], result[1]))
```

## Prerequisites
- Python 3.8+
- TensorFlow
## Installation and Usage
1. Install required libraries :
   ```bash
   pip install tensorflow 
2. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

3. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Deep Learning/Project_02_RNN_Model_Architecture

4. Run the script :
   ```bash
   jupyter notebook RNN_Model_Architecture.ipynb

## Sample Run
```python
# Training and Evaluating Models
input_shape = (28, 28)  # Input shape for RNN
models = [model_1(input_shape), model_2(input_shape), model_3(input_shape)]  # List of models
model_names = ['Simple RNN', 'LSTM', 'GRU']  # Model names for comparison
results = []  # To store results

for i, model in enumerate(models):
    model.compile(loss='categorical_crossentropy', optimizer='adam', metrics=['accuracy'])  # Compiling the model
    model.fit(x_train, y_train, epochs=10, batch_size=32)  # Training the model
    _, accuracy = model.evaluate(x_test, y_test, verbose=0)  # Evaluating the model
    results.append([model_names[i], accuracy])  # Storing the results

# Creating a Comparison Table
print("Comparison Table:")
print("{:<15} {:<10}".format('Model', 'Accuracy'))
for result in results:
    print("{:<15} {:<10.4f}".format(result[0], result[1]))
```
## Explanation
This project implements and compares three different Recurrent Neural Network (RNN) architectures using the TensorFlow library. The models are trained on the MNIST dataset, which consists of 60,000 28x28 grayscale images of 10 digits. The three architectures are:

1. **Simple RNN**: A basic RNN architecture with a single SimpleRNN layer.
2. **LSTM**: A more advanced RNN architecture using Long Short-Term Memory (LSTM) units.
3. **GRU**: Another advanced RNN architecture using Gated Recurrent Units (GRU).

The models are compiled using the Adam optimizer and trained with the Categorical Crossentropy loss function. Each model's performance is evaluated and compared based on accuracy.

## Insights
1. **Model Comparison**: The GRU model achieved the highest accuracy, indicating its effectiveness in capturing temporal dependencies in the data.
2. **Training Efficiency**: The LSTM and GRU models showed better performance compared to the Simple RNN, highlighting the advantages of advanced RNN architectures.
3. **Data Preprocessing**: Normalizing pixel values and reshaping input data were crucial steps for training the RNN models effectively.

## Future Enhancements
- **Hyperparameter Tuning**: Experiment with different hyperparameters, such as learning rates, batch sizes, and epochs, to further optimize model performance.
- **Advanced Architectures**: Implement more complex architectures like Bidirectional RNNs or stacked RNNs to improve performance.
- **Extended Training**: Increase the number of training epochs and use techniques like early stopping to prevent overfitting and achieve better results.
## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Deep Learning/Project_02_RNN_Model_Architecture/RNN_Model_Architecture.ipynb**.
