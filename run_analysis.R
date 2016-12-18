library(dplyr)

if (!file.exists("./data")){
        dir.create("./data")
}

# Download, record date of dowload and unzip the datasets
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, dest="./data/Dataset.zip", mode="wb")

# Record date of download
dateDowloaded <- date()
# dateDowloaded = "Sat Dec 17 16:39:11 2016"

# Unzip the datasets
unzip ("./data/Dataset.zip", exdir = "./data")

# UCI HAR Dataset directory created by unzip command contains the unzipped files
# Read the activity labels and the features
activitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

# Select the mean and standard deviation from the features dataset
# This is needed for point 2 of the assignment.
# Search for mean or std preceded or followed by any character any number of times
# First get the indices of the variables with mean and std.
featuresNeeded <- grep(".*mean.*|.*std.*", features[, 2])
# Second get the varaible names
featuresNames <- features[featuresNeeded, 2]

# Clean up featuresNames: all names to lower, remove (), - and make names more descriptive
# Needed for point 4 of the assignment
featuresNames <- tolower(featuresNames)

for (i in 1:length(featuresNames)) 
{
        featuresNames[i] = gsub("-","", featuresNames[i])
        featuresNames[i] = gsub("\\(+\\)","",featuresNames[i])
        featuresNames[i] = gsub("std","stddev",featuresNames[i])
        featuresNames[i] = gsub("^(t)","time",featuresNames[i])
        featuresNames[i] = gsub("^(f)","freq",featuresNames[i])
        featuresNames[i] = gsub("mag","magnitude",featuresNames[i])
        featuresNames[i] = gsub("bodybody","body",featuresNames[i])
}

# Load the train datasets
trainSet <- read.table("./data/UCI HAR Dataset/train/X_train.txt")[featuresNeeded]
trainLabels <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Combine the three sets into one train dataset
train <- cbind(trainSubjects, trainLabels, trainSet)

# Load the test  datasets
testSet <- read.table("./data/UCI HAR Dataset/test/X_test.txt")[featuresNeeded]
testLabels <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Combine the three sets into one test dataset
test <- cbind(testSubjects, testLabels, testSet)

# Merge the train and test data sets
# This is needed for point 1 of the assignment.
mergedData <- rbind(train, test)

# Add column names
# This is needed for point 4 of the assignment
colnames(mergedData) <- c("subjectid", "activity", featuresNames)

# Replace activity values 1 to 6 for descriptive names
# This is needed for point 3 of the assignment
mergedData$activity <- as.character(mergedData$activity)

translator_vector = c("1" = "walking", "2" = "walkingupstairs", "3" = "walkingdownstairs",
                      "4" = "sitting", "5" = "standing", "6" = "laying")
                      
mergedData$activity = translator_vector[mergedData$activity]                      

# mergedData must by grouped by subjectid and activity to calculate means for each variable
# This is the independent tidy dataset with means for each variable
tidyAverages <- mergedData %>% group_by(subjectid, activity) %>%
        summarize_each(funs(mean))

# Remove the groups
tidyAverages <- ungroup(tidyAverages)

# Lastly write the tidy data set to a file in txt format 
write.table(tidyAverages, "./data/tidyAverages.txt", row.names = FALSE, quote = FALSE, sep = "\t")

