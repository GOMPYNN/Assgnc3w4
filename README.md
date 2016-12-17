# Getting and Cleaning Data Course Project

The purpose of this project is to collect, work with, and clean a data set.

The R script "run_analysis.R" consists of the following steps:

1. Create the data directory under the work directory if it does not exist and download the zip file
+ 1. Record the download date, i,e, "Sat Dec 17 16:39:11 2016" 
2. Unzip the data sets
3. Read in the data set with the activity labels
4. Read in the data set with all the features.
+ 1. Select only those features needed for the project; means and standard deviations.
+ 2. Change all names to lower case and remove parentheses, etc.
5. Read in the actual training data sets in the following order
+ 1. The training set
+ 2. The labels (names) of the training set
+ 3. The subject ids of the training set.
+ 4. Combine the 3 data sets to 1 training data set
6. For the test data the same steps are followed as listed in step 5.
7. Combine the train (from step 5) and test (from step 6) set to 1 merged data set.
8. Add column names to the merged data set
+ 1. The first 2 column names are "subjectid" and "activity" respectively.
+ 2. The other column names are taken from the data set produced in step 4.2
9. Change the numbers in the activity column to the description of the activity.
10. Create a new data set called tidyAverages
+ 1. Group the merged data set by subjectid and activity
+ 2. Calculate the averages for all columns (for each subject and activity)
+ 3. Write the tidyAverages data set to a csv file.