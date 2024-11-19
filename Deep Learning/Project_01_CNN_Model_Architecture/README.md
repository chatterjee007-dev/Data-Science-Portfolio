# Deep Learning Project : CNN Model Architecture

## Project Overview
This project involves implementing and comparing three different Convolutional Neural Network (CNN) architectures using the TensorFlow library. The models are trained and evaluated on the CIFAR-10 dataset, with a summary report comparing their performance.

## Key Features
1. **Three CNN Architectures**: Implement three different CNN architectures.
2. **Data Preprocessing**: Normalize pixel values of images.
3. **Training and Evaluation**: Train and evaluate the models, and compare their performance.
4. **Comparison Table**: Generate a table to compare the accuracy of the different models.

## Libraries Used
- `tensorflow`
- `keras`
- `matplotlib`
- `pandas`
- `numpy`

## Code Explanation
- **Data Loading and Preprocessing**: Load the CIFAR-10 dataset and normalize the pixel values.
- **Model Architectures**: Define three different CNN architectures.
- **Model Compilation and Training**: Compile and train the models.
- **Evaluation and Comparison**: Evaluate the models and compare their performance using a comparison table.

## Code Structure
1. Import necessary libraries.
2. Load and preprocess the CIFAR-10 dataset.
3. Define three CNN architectures.
4. Compile and train the models.
5. Evaluate the models and create a comparison table.

## Code Snippet
```python
# Import necessary libraries
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers, models
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Load and preprocess the CIFAR-10 dataset
(x_train, y_train), (x_test, y_test) = keras.datasets.cifar10.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

# Define the CNN architectures

# Simple CNN
def create_model1():
    model = models.Sequential()
    model.add(layers.Conv2D(32, (3, 3), activation='relu', padding='same', input_shape=(32, 32, 3)))
    model.add(layers.BatchNormalization())
    model.add(layers.Conv2D(32, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Dropout(0.25))

    model.add(layers.Conv2D(64, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.Conv2D(64, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Dropout(0.25))

    model.add(layers.Flatten())
    model.add(layers.Dense(512, activation='relu'))
    model.add(layers.Dropout(0.5))
    model.add(layers.Dense(10, activation='softmax'))
    return model

# Deeper CNN with Dropout
def create_model2():
    model = models.Sequential()
    model.add(layers.Conv2D(32, (3, 3), activation='relu', padding='same', input_shape=(32, 32, 3)))
    model.add(layers.BatchNormalization())
    model.add(layers.Conv2D(32, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Dropout(0.25))

    model.add(layers.Conv2D(64, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.Conv2D(64, (3, 3), activation='relu', padding='same'))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Dropout(0.25))

    model.add(layers.Flatten())
    model.add(layers.Dense(512, activation='relu'))
    model.add(layers.Dropout(0.5))
    model.add(layers.Dense(10))
    return model

# CNN with Data Augmentation
def create_model3():
    data_augmentation = keras.Sequential(
        [
            layers.RandomFlip("horizontal", input_shape=(32, 32, 3)),
            layers.RandomRotation(0.1),
            layers.RandomZoom(0.1),
        ]
    )

    model = models.Sequential()
    model.add(data_augmentation)
    model.add(layers.Conv2D(32, (3, 3), activation='relu', input_shape=(32, 32, 3)))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Conv2D(64, (3, 3), activation='relu'))
    model.add(layers.BatchNormalization())
    model.add(layers.MaxPooling2D((2, 2)))
    model.add(layers.Conv2D(64, (3, 3), activation='relu'))
    model.add(layers.Flatten())
    model.add(layers.Dense(64, activation='relu'))
    model.add(layers.Dense(10))
    return model

# Create and compile the models
model1 = create_model1()
model2 = create_model2()
model3 = create_model3()

models = [model1, model2, model3]
model_names = ['Simple CNN', 'Deeper CNN with Dropout', 'CNN with Data Augmentation']

for model in models:
    model.compile(optimizer='adam',
                  loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
                  metrics=['accuracy'])

# Train the models and store the history
histories = []
for model in models:
    history = model.fit(x_train, y_train, epochs=10, validation_data=(x_test, y_test))
    histories.append(history)

# Evaluate the models and store the results
results = []
for model, model_name in zip(models, model_names):
    _, accuracy = model.evaluate(x_test, y_test, verbose=0)
    results.append([model_name, accuracy])

# Create a pandas DataFrame from the results
df = pd.DataFrame(results, columns=['Model', 'Accuracy'])

# Display the comparison table
display(df)
```
## Prerequisites
- Python 3.8+
- TensorFlow, Keras, Matplotlib, Pandas, NumPy
## Installation and Usage
1. Install required libraries :
   ```bash
   pip install tensorflow keras matplotlib pandas numpy
2. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

3. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Deep Learning/Project_01_CNN_Model_Architecture

4. Run the script :
   ```bash
   jupyter notebook CNN_Model_Architecture.ipynb
## Sample Run 
```python
# Train the models and store the history
histories = []
for model in models:
    history = model.fit(x_train, y_train, epochs=10, validation_data=(x_test, y_test))
    histories.append(history)

# Evaluate the models and store the results
results = []
for model, model_name in zip(models, model_names):
    _, accuracy = model.evaluate(x_test, y_test, verbose=0)
    results.append([model_name, accuracy])

# Create a pandas DataFrame from the results
df = pd.DataFrame(results, columns=['Model', 'Accuracy'])

# Display the comparison table
display(df)
```
## Explanation
This project implements and compares three different Convolutional Neural Network (CNN) architectures using the TensorFlow library. The models are trained on the CIFAR-10 dataset, which consists of 60,000 32x32 color images in 10 classes, with 6,000 images per class. The three architectures are:

1. **Simple CNN**: A basic CNN architecture with Batch Normalization and Dropout layers to prevent overfitting.
2. **Deeper CNN with Dropout**: An extended version of the simple CNN with additional layers and Dropout for regularization.
3. **CNN with Data Augmentation**: A CNN that incorporates data augmentation techniques like random flips, rotations, and zooms to enhance the model's generalization ability.

The models are compiled using the Adam optimizer and trained with the Sparse Categorical Crossentropy loss function. Each model's performance is evaluated and compared based on accuracy.

## Insights
1. **Model Comparison**: The Deeper CNN with Dropout achieved the highest accuracy, indicating that deeper architectures with regularization can improve performance.
2. **Effectiveness of Data Augmentation**: The CNN with Data Augmentation showed competitive performance, demonstrating that data augmentation is a valuable technique for enhancing model generalization.
3. **Training and Validation**: The training and validation accuracy trends provided insights into the models' learning behavior and potential areas for further optimization.

## Future Enhancements
- **Hyperparameter Tuning**: Experiment with different hyperparameters, such as learning rates, batch sizes, and epochs, to further optimize model performance.
- **Advanced Architectures**: Implement more advanced architectures like ResNet, VGG, or Inception to benchmark against the basic CNN models.
- **Extended Training**: Increase the number of training epochs and use techniques like early stopping to prevent overfitting and achieve better results.

## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Deep Learning/Project_01_CNN_Model_Architecture/CNN_Model_Architecture.ipynb**.
