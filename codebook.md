# Getting_and_cleaning_data_assignment
Getting and cleaning data assignment for week4

The objective of this R script is to analyse the raw dataset resulting from Human Activity Recognition Using Smartphones experiment. You can read about the experiment and the raw dataset used in this analysis in **Appendix 1: Raw Input Data** below.


**The transformations in the run_analysis.R  script are as follows:**


## 1.Merge the training and the test sets to create one data set:

This step merges subject_test, y_test and X_test data sets into a new test dataset using cbind(). 
It merges subject_test, y_test and X_test data sets into a new training data set using cbind().
It also adds variable names to the result data set using the names given in features.txt.
Finally, the script merges both new test and training data sets into a single data set using rbind().
The merged data set has 563 variables and 10,299 rows.


## 2.Extracts only the measurements on the mean and standard deviation for each measurement:
The data set resulting from previous step is used as an input to this step. 
Only variable names containing words 'mean' or 'std' are selected to generate a new data set with 88 variables and 10,299 rows.

## 3.Uses descriptive activity names to name the activities in the data set:
The data set resulting from step previous step is used as an input to this step. 
In this step the script uses activity labels defined within activity_labels.txt to replace activity numbers.

## 4.Appropriately labels the data set with descriptive variable names. 
The data set resulting from previous step is used as an input to this step. 
The script produces tidy dataset by replacing variable names with more descriptive names. 
The script also removes any dots and turns variable names to lowercase.

The resuling descriptive names, for example:

Original Variable Name | New Variable Name | Description
------| ------|-------------
subject	|	subject| subject key
activitylabel	|	activitylabel|activity label
tBodyAcc.mean...X	|	timebodyaccelerationmeanonxaxisofphone|	time body  acceleration  mean on x axis of phone
tBodyAcc.mean...Y	|	timebodyaccelerationmeanonyaxisofphone|	time body  acceleration  mean on y axis of phone
tBodyAcc.mean...Z	|	timebodyaccelerationmeanonzaxisofphone|	time body  acceleration  mean on z axis of phone
tGravityAcc.mean...X	|	timegravityaccelerationmeanonxaxisofphone|	time gravity acceleration mean on x axis of phone
tGravityAcc.mean...Y	|	timegravityaccelerationmeanonyaxisofphone|	time gravity acceleration mean on y axis of phone
tGravityAcc.mean...Z	|	timegravityaccelerationmeanonzaxisofphone|	time gravity acceleration mean on z axis of phone

##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject:
The data set resulting from previous step is used as an input to this step. 
This step in the script groups the data by subject and activity, therefore reducing the number of rows to 180 rows. 
The script also calculates the average of each variable and prefixes each variable name with the word 'average'. 

Following is a list of variables in the new dataset:

subject
activitylabel
averagetimebodyaccelerationmeanonxaxisofphone
averagetimebodyaccelerationmeanonyaxisofphone
averagetimebodyaccelerationmeanonzaxisofphone
averagetimegravityaccelerationmeanonxaxisofphone
averagetimegravityaccelerationmeanonyaxisofphone
averagetimegravityaccelerationmeanonzaxisofphone
averagetimebodyaccelerationjerkmeanonxaxisofphone
averagetimebodyaccelerationjerkmeanonyaxisofphone
averagetimebodyaccelerationjerkmeanonzaxisofphone
averagetimebodyangularvelocitymeanonxaxisofphone
averagetimebodyangularvelocitymeanonyaxisofphone
averagetimebodyangularvelocitymeanonzaxisofphone
averagetimebodyangularvelocityjerkmeanonxaxisofphone
averagetimebodyangularvelocityjerkmeanonyaxisofphone
averagetimebodyangularvelocityjerkmeanonzaxisofphone
averagetimebodyaccelerationmagnitudemean
averagetimegravityaccelerationmagnitudemean
averagetimebodyaccelerationjerkmagnitudemean
averagetimebodyangularvelocitymagnitudemean
averagetimebodyangularvelocityjerkmagnitudemean
averagefrequencybodyaccelerationmeanonxaxisofphone
averagefrequencybodyaccelerationmeanonyaxisofphone
averagefrequencybodyaccelerationmeanonzaxisofphone
averagefrequencybodyaccelerationmeanfrequencyonxaxisofphone
averagefrequencybodyaccelerationmeanfrequencyonyaxisofphone
averagefrequencybodyaccelerationmeanfrequencyonzaxisofphone
averagefrequencybodyaccelerationjerkmeanonxaxisofphone
averagefrequencybodyaccelerationjerkmeanonyaxisofphone
averagefrequencybodyaccelerationjerkmeanonzaxisofphone
averagefrequencybodyaccelerationjerkmeanfrequencyonxaxisofphone
averagefrequencybodyaccelerationjerkmeanfrequencyonyaxisofphone
averagefrequencybodyaccelerationjerkmeanfrequencyonzaxisofphone
averagefrequencybodyangularvelocitymeanonxaxisofphone
averagefrequencybodyangularvelocitymeanonyaxisofphone
averagefrequencybodyangularvelocitymeanonzaxisofphone
averagefrequencybodyangularvelocitymeanfrequencyonxaxisofphone
averagefrequencybodyangularvelocitymeanfrequencyonyaxisofphone
averagefrequencybodyangularvelocitymeanfrequencyonzaxisofphone
averagefrequencybodyaccelerationmagnitudemean
averagefrequencybodyaccelerationmagnitudemeanfrequency
averagefrequencybodybodyaccelerationjerkmagnitudemean
averagefrequencybodybodyaccelerationjerkmagnitudemeanfrequency
averagefrequencybodybodyangularvelocitymagnitudemean
averagefrequencybodybodyangularvelocitymagnitudemeanfrequency
averagefrequencybodybodyangularvelocityjerkmagnitudemean
averagefrequencybodybodyangularvelocityjerkmagnitudemeanfrequency
averageangletbodyaccelerationmeangravity
averageangletbodyaccelerationjerkmeangravitymean
averageangletbodyangularvelocitymeangravitymean
averageangletbodyangularvelocityjerkmeangravitymean
averageanglexgravitymean
averageangleygravitymean
averageanglezgravitymean
averagetimebodyaccelerationstandarddeviationonxaxisofphone
averagetimebodyaccelerationstandarddeviationonyaxisofphone
averagetimebodyaccelerationstandarddeviationonzaxisofphone
averagetimegravityaccelerationstandarddeviationonxaxisofphone
averagetimegravityaccelerationstandarddeviationonyaxisofphone
averagetimegravityaccelerationstandarddeviationonzaxisofphone
averagetimebodyaccelerationjerkstandarddeviationonxaxisofphone
averagetimebodyaccelerationjerkstandarddeviationonyaxisofphone
averagetimebodyaccelerationjerkstandarddeviationonzaxisofphone
averagetimebodyangularvelocitystandarddeviationonxaxisofphone
averagetimebodyangularvelocitystandarddeviationonyaxisofphone
averagetimebodyangularvelocitystandarddeviationonzaxisofphone
averagetimebodyangularvelocityjerkstandarddeviationonxaxisofphone
averagetimebodyangularvelocityjerkstandarddeviationonyaxisofphone
averagetimebodyangularvelocityjerkstandarddeviationonzaxisofphone
averagetimebodyaccelerationmagnitudestandarddeviation
averagetimegravityaccelerationmagnitudestandarddeviation
averagetimebodyaccelerationjerkmagnitudestandarddeviation
averagetimebodyangularvelocitymagnitudestandarddeviation
averagetimebodyangularvelocityjerkmagnitudestandarddeviation
averagefrequencybodyaccelerationstandarddeviationonxaxisofphone
averagefrequencybodyaccelerationstandarddeviationonyaxisofphone
averagefrequencybodyaccelerationstandarddeviationonzaxisofphone
averagefrequencybodyaccelerationjerkstandarddeviationonxaxisofphone
averagefrequencybodyaccelerationjerkstandarddeviationonyaxisofphone
averagefrequencybodyaccelerationjerkstandarddeviationonzaxisofphone
averagefrequencybodyangularvelocitystandarddeviationonxaxisofphone
averagefrequencybodyangularvelocitystandarddeviationonyaxisofphone
averagefrequencybodyangularvelocitystandarddeviationonzaxisofphone
averagefrequencybodyaccelerationmagnitudestandarddeviation
averagefrequencybodybodyaccelerationjerkmagnitudestandarddeviation
averagefrequencybodybodyangularvelocitymagnitudestandarddeviation
averagefrequencybodybodyangularvelocityjerkmagnitudestandarddeviation



## Appendix 1: Input Raw Data:
==============================
The raw data used in this analysis is based on the data at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 



Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
