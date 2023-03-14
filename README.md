
# Maize Pest Detection




## Installation

To install and use this MATLAB LBP feature extraction code, you can follow these general guidelines:

• Install MATLAB: To run the MATLAB LBP feature extraction code, you need to have MATLAB installed on your computer. If you do not have MATLAB, you can download and install it from the getintopc website.

https://getintopc.com/softwares/maths/mathworks-matlab-r2021a-free-download-4016093/



    
## Usage


• Add the code folder to MATLAB path: In MATLAB, you need to add the folder containing the LBP feature extraction code to the MATLAB path. You can do this by clicking on the "Set Path" button in the MATLAB toolbar, selecting "Add Folder" and then browsing to the folder containing the LBP feature extraction code.

• Open the MATLAB code in MATLAB: Open MATLAB on your computer and navigate to the folder where you downloaded the LBP feature extraction code. Double-click on the .m file to open it in MATLAB.

• Run the code: To run the code, simply click on the "Run" button in the MATLAB editor or type the name of the script in the MATLAB command window.
After running code, open classification learning app
•	MATLAB Toolstrip: On the Apps tab, under Machine Learning, click the app icon.
•	MATLAB command prompt: Enter classificationLearner.

The Classification Learner app trains models to classify data. Using this app, you can explore supervised machine learning using various classifiers. You can explore your data, select features, specify validation schemes, train models, and assess results. You can perform automated training to search for the best classification model type, including decision trees, discriminant analysis, support vector machines, logistic regression, nearest neighbors, naive Bayes, kernel approximation, ensemble, and neural network classification.
You can perform supervised machine learning by supplying a known set of input data (observations or examples) and known responses to the data (labels or classes). You use the data to train a model that generates predictions for the response to new data. To use the model with new data, or to learn about programmatic classification, you can export the model to the workspace or generate MATLAB® code to recreate the trained model.





## Setup Configuration

The setup configuration for this MATLAB LBP feature extraction code may depend on the specific requirements of the code and dataset, but here are some general guidelines that you can follow:

• Image Dataset: You will need an image dataset on which you want to perform the LBP feature extraction. The images should be in a compatible format such as JPEG or PNG.

https://www.kaggle.com/datasets/smaranjitghose/corn-or-maize-leaf-disease-dataset

• Dataset Directory: In the first line of the code, you need to change the path 'E:\maize plants' to the path of your dataset directory.

• Parameter Configuration: The LBP feature extraction code does not have any configurable parameters in this implementation.

• Output Configuration: The output of the LBP feature extraction code will be a matrix F, where each row represents the feature vector for an image in the dataset, and the last column represents the label of that image.

• Execution Environment: The LBP feature extraction code does not have any specific hardware or software requirements.


## Manual

This MATLAB LBP feature extraction code takes an input dataset directory, extracts LBP features from each image in the dataset, trains a support vector machine (SVM) and k-nearest neighbors (KNN) model on the extracted features, and demonstrates the classification of a single image using the trained models.

To use this code, you need to provide the path of the dataset directory in the first line of the code, where the 'imageDatastore' function reads the images from the dataset. The code extracts LBP features from each image and stores them in a matrix F, where each row represents the feature vector for an image in the dataset, and the last column represents the label of that image.

The code then trains an SVM model and a KNN model on the extracted features using the 'fitcsvm' and 'fitcknn' functions, respectively. Finally, the code demonstrates the classification of a single image using the trained models. You can uncomment the last few lines of the code to test the classification of a single image.

Note that this implementation does not include any validation or testing of the trained models, and it is recommended to split the dataset into training, validation, and testing sets for a more thorough evaluation of the models

