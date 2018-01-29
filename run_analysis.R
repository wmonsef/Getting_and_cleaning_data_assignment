#============================
#BEGINNING OF SCRIPT
#============================

#============================
#Assignment task 1: Merge the training and the test sets to create one data set:
#============================

#1.1 Download and extract zip file

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", method="auto")
unzip("./data/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", exdir = "./data")
 
#1.2 Read data into tables
featurestable <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE, sep = "")

activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "", col.names = c("activitynumber","activitylabel"))

xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", col.names = featurestable[,2])

ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "", col.names = "activitynumber")

subjecttest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", col.names = "subject")

xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", col.names = featurestable[,2])

ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "", col.names = "activitynumber")

subjecttrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", col.names = "subject")

#1.3 Merge test data and train data
testdata <- cbind(subjecttest, ytest,xtest)
traindata <- cbind(subjecttrain, ytrain,xtrain)
mergeddata <- rbind(testdata, traindata)

#==================================
#Assignment task 2: Extract only the measurements on the mean and standard deviation for each measurement. 
#==================================
library(dplyr)
meanstddata <- select(mergeddata, subject, activitynumber, contains("mean"), contains("std"))


#================================
#Assignment task 3: Use descriptive activity names to name the activities in the data set
#================================

#3.1 Perform dplyr left join operation to join meanstddata with activitylabels. 
# This results in adding an activitylabel column

meanstddata2 <- left_join(meanstddata, activitylabels, by = c("activitynumber" = "activitynumber"))

#3.2 Removes the activitynumber column as it is no more required
meanstddata3 <- select(meanstddata2, -activitynumber)

#3.3 Rearranges the columns by bringing activitylabel column to be second column after subject column. 
#This makes the data look more tidy by having each row starts with subject and activitylabel, followed by measures.

meanstddata4 <- select(meanstddata3, subject, activitylabel, everything())


#========================
#Assignment task 4: Appropriately label the data set with descriptive variable names.
#=========================

#4.1 Create a vector containing column names, convert all column names to lower case, 
# substitute acronyms with more descriptive terms, and finally remove any periods
columnnames <- tolower(names(meanstddata4))
columnnames <- sub("freq", "frequency", columnnames)
columnnames <- sub("acc", "acceleration", columnnames)
columnnames <- sub("gyro", "angularvelocity", columnnames)
columnnames <- sub("mag", "magnitude", columnnames)
columnnames <- sub("std", "standarddeviation", columnnames)
columnnames <- sub("(/.)*x$", "onxaxisofphone", columnnames)
columnnames <- sub("(/.)*y$", "onyaxisofphone", columnnames)
columnnames <- sub("(/.)*z$", "onzaxisofphone", columnnames)
columnnames <- sub("^t", "time", columnnames)
columnnames <- sub("^f", "frequency", columnnames)
columnnames <- gsub(".", "", columnnames, fixed = TRUE)

#4.2 Rename columns of data set
colnames(meanstddata4) <- columnnames

#=========================================================
#Assignment task 5: From the data set in step 4, create a 
#second, independent tidy data set with the average of each
# variable for each activity and each subject.
#==========================================================
avgmeanstddata <- meanstddata4 %>% group_by(subject, activitylabel) %>%
        summarise_at(columnnames[3:88], mean) %>%
  rename_(.dots = setNames(columnnames[3:88], paste0('average', columnnames[3:88])))

#=============================
#END OF SCRIPT
#=============================
  

