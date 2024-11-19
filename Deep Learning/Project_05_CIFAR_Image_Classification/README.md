# Deep Learning Project - CIFAR Image Classification

## Project Overview
This project involves creating a machine learning model to classify images from the CIFAR-10 dataset using Convolutional Neural Networks (CNN) implemented with the TensorFlow library. The task is to preprocess the data, define a CNN model architecture, and train the model to accurately classify images into one of 10 different categories based on the visual features present in the images.

## Key Features
1. **Data Preprocessing**: Load and normalize the CIFAR-10 dataset.
2. **Model Building**: Define and compile a CNN model architecture.
3. **Training and Evaluation**: Train the model and evaluate its performance using accuracy.
4. **Visualization**: Plot training and validation accuracy over epochs.

## Libraries Used
- `tensorflow`
- `matplotlib`

## Code Explanation
- **Data Loading and Preprocessing**: Load the CIFAR-10 dataset, normalize pixel values, and display an example image.
- **Model Definition**: Create a Sequential CNN model with multiple convolutional, pooling, and dense layers.
- **Model Compilation**: Compile the model with appropriate loss function and optimizer.
- **Model Training**: Train the model using the training dataset.
- **Model Evaluation**: Evaluate the model using the test dataset and visualize the accuracy.

## Code Structure
1. Import necessary libraries.
2. Load and preprocess the CIFAR-10 dataset.
3. Define and compile the CNN model.
4. Train the model.
5. Evaluate the model and visualize metrics.

## Code Snippet
```python
# Importing necessary libraries
import tensorflow as tf
from tensorflow.keras import datasets, layers, models
import matplotlib.pyplot as plt

# Loading the CIFAR-10 dataset
(train_images, train_labels), (test_images, test_labels) = datasets.cifar10.load_data()

# Normalizing the pixel values
train_images, test_images = train_images / 255.0, test_images / 255.0

# Class names in CIFAR-10 dataset
class_names = ['airplane', 'automobile', 'bird', 'cat', 'deer', 'dog', 'frog', 'horse', 'ship', 'truck']

# Displaying an example image from the training dataset
plt.imshow(train_images[1234])

# Defining a Sequential CNN model
model = models.Sequential()
model.add(layers.Conv2D(32, (3,3), activation='relu', padding='same', input_shape=(32,32,3)))
model.add(layers.MaxPooling2D((2,2)))
model.add(layers.Conv2D(64, (3,3), activation='relu', padding='same'))
model.add(layers.Conv2D(64, (3,3), activation='relu', padding='same'))
model.add(layers.MaxPooling2D((2,2)))
model.add(layers.Conv2D(128, (3,3), activation='relu', padding='same'))
model.add(layers.Conv2D(128, (3,3), activation='relu', padding='same'))
model.add(layers.Conv2D(64, (3,3), activation='relu'))
model.add(layers.Flatten())
model.add(layers.Dropout(rate=0.2))
model.add(layers.Dense(64, activation='relu'))
model.add(layers.Dense(10, activation='softmax'))

# Displaying the model summary
model.summary()

# Compiling the model
model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])

# Training the model
history = model.fit(train_images, train_labels, epochs=50, validation_data=(test_images, test_labels))

# Plotting training and validation accuracy
plt.plot(history.history['accuracy'], label='accuracy')
plt.plot(history.history['val_accuracy'], label='val_accuracy')
plt.xlabel('Epoch')
plt.ylabel('Accuracy')
plt.ylim([0.5, 1])
plt.legend(loc='lower right')

# Evaluating the model
test_loss, test_acc = model.evaluate(test_images, test_labels, verbose=2)
print(f"Test accuracy: {test_acc}, Test loss: {test_loss}")
```
## Prerequisites
- Python 3.8+
- TensorFlow, Matplotlib

## Installation and Usage
1. Install required libraries:
   ```bash
   pip install tensorflow matplotlib
2. Clone this repository :  
   ```bash  
   git clone https://github.com/chatterjee007-dev/Data-Science-Portfolio.git

3. Navigate to the project directory :
   ```bash
   cd Data-Science-Portfolio/Deep Learning/Project_05_CIFAR_Image_Classification

4. Run the script :
   ```bash
   jupyter notebook CIFAR_Image_Classification.ipynb
## Sample Run
```python
# Training the model
history = model.fit(train_images, train_labels, epochs=50, validation_data=(test_images, test_labels))

# Plotting training and validation accuracy
plt.plot(history.history['accuracy'], label='accuracy')
plt.plot(history.history['val_accuracy'], label='val_accuracy')
plt.xlabel('Epoch')
plt.ylabel('Accuracy')
plt.ylim([0.5, 1])
plt.legend(loc='lower right')

# Evaluating the model
test_loss, test_acc = model.evaluate(test_images, test_labels, verbose=2)
print(f"Test accuracy: {test_acc}, Test loss: {test_loss}")
```
## Explanation
This project involves classifying images from the CIFAR-10 dataset using a Convolutional Neural Network (CNN) implemented with TensorFlow. The CIFAR-10 dataset consists of 60,000 32x32 pixel images in 10 different classes. The steps include data preprocessing, model definition, compilation, training, and evaluation.

- **Data Preprocessing**: The CIFAR-10 dataset is normalized to a range of 0 to 1 to improve model training.
- **Model Definition**: A Sequential CNN model is defined with multiple convolutional, pooling, and dense layers.
- **Model Compilation**: The model is compiled using the Sparse Categorical Crossentropy loss function and Adam optimizer.
- **Model Training**: The model is trained on the training dataset for 50 epochs.
- **Model Evaluation**: The model is evaluated on the test dataset, achieving an accuracy of 73.90% and a loss of 1.4200.

## Insights
1. **Model Performance**: The model achieved an accuracy of 73.90% in classifying CIFAR-10 images, indicating its effectiveness.
2. **Data Normalization**: Normalizing pixel values improved model training and convergence.
3. **Layer Configuration**: Using multiple convolutional and pooling layers helped capture hierarchical features in the images.

## Future Enhancements
- **Hyperparameter Tuning**: Experiment with different hyperparameters, such as learning rates, batch sizes, and epochs, to further optimize model performance.
- **Advanced Architectures**: Implement more advanced CNN architectures, such as ResNet or DenseNet, for potentially better performance.
- **Extended Training**: Increase the number of training epochs and use techniques like early stopping to prevent overfitting and achieve better results.
  
## View on GitHub
- You can view this project on GitHub: [Data-Science-Portfolio](https://github.com/chatterjee007-dev/Data-Science-Portfolio/tree/main) under the directory **Deep Learning/Project_05_CIFAR_Image_Classification
/CIFAR_Image_Classification.ipynb**.
