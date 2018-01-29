# Getting_and_cleaning_data_assignment
Getting and cleaning data assignment for week4
The R script run_analysis.R performs following tasks requested in the assignment:

## Assignment task 1: Merge the training and the test sets to create one data set:

1.1 Download and extract zip file

1.2 Read data into tables

1.3 Merge test data and train data into 'mergeddata' dataframe

## Assignment task 2: Extract only the measurements on the mean and standard deviation for each measurement using dplyr library. 
It produces dataframe 'meanstddata'.


## Assignment task 3: Use descriptive activity names to name the activities in the data set. 

3.1 Perform dplyr left join operation to join meanstddata with activitylabels. This results in adding an activitylabel column.

3.2 Removes the activitynumber column as it is no more required

3.3 Rearranges the columns by bringing activitylabel column to be second column after subject column. 
This makes the data look more tidy by having each row starts with subject and activitylabel, followed by measures.
The new dataframe produced is meanstddata4.


## Assignment task 4: Appropriately label the data set with descriptive variable names.

4.1 Create a vector containing column names, convert all column names to lower case, substitute acronyms with more descriptive terms, and finally remove any periods

4.2 Rename columns of data set meanstddata4


## Assignment task 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
This results in the tidy dataset avgmeanstddata.
