# Code Book Getting and Cleaning Data Course Project

## Data Set Code Book: averages of means and standard deviations variables by subject id and activity

Final Codebook
December 18, 2016
Codebook prepared by Bert Haak

## Source 
data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Information: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
download date: Sat Dec 17 16:39:11 2016
For a description of the experiment see the README.txt file and for a description of the variables see the features_info.txt both present in the source zip file.

## General
Both the training and test data set consist of three files:
1. a file with the subject ids (subject_train/test)
2. a file with the accelaration values (X_train/test)
3. a file with the numeric values for each activity (Y_tran/test)

Two additional files are provided containing the labels for the accelaration values (feautures.txt) and one containing the labels for the activities (activity_labels.txt)

## Steps
The train and test data sets have been combined into one data set with only the mean and standard deviation variables selected. The subject ids and activity lables have been added as the first two columns to the data set and the variables names have been added.

In order to prevent any mistyping the variable names are transformed to lower case and "-" and "()" were removed. Also some abbreviations were changed for easier understanding.

Based on the combined data set a new data set was created containing the average values per subject id and activity of all the mean and standard deviation values.

This final data set was subsequently written to a txt file named tidyAverages.txt.

For a more in depth description of all the steps see the READ.md file or the actual run_analysis.R script.

## Variables
Below the variables in the tidyAverages.txt file are listed.

Label: subjectid
Variable: Subject Identification number
Type: Integer
Values: [1:30]

Label: activity
Variable: activity perfomed
Type: Character
Values: laying, sitting, standing, walking, walkingdownstairs, walkingupstairs

All subsequent variables are of type numeric and are normalized and bounded within [-1,1].

Label: timebodyaccmeanx
Variable: average time body acceleration mean x-axis

Label: timebodyaccmeany
Variable: average time body acceleration mean y-axis

Label: timebodyaccmeanz
Variable: average time body acceleration mean z-axis

Label: timebodyaccstddevx
Variable: average time body acceleration standard deviation x-axis

Label: timebodyaccstddevy
Variable: average time body acceleration standard deviation y-axis

Label: timebodyaccstddevz
Variable: average time body acceleration standard deviation z-axis

Label: timegravityaccmeanx
Variable: average time gravity acceleration mean x-axis

Label: timegravityaccmeany
Variable: average time gravity acceleration mean y-axis

Label: timegravityaccmeanz
Variable: average time gravity acceleration mean z-axis

Label: timegravityaccstddevx
Variable: average time gravity acceleration standard deviation x-axis

Label: timegravityaccstddevy
Variable: average time gravity acceleration standard deviation y-axis

Label: timegravityaccstddevz
Variable: average time gravity acceleration standard deviation z-axis

Label: timebodyaccjerkmeanx
Variable: average time body accelaration jerk mean x-axis

Label: timebodyaccjerkmeany
Variable: average time body accelaration jerk mean y-axis

Label: timebodyaccjerkmeanz
Variable: average time body accelaration jerk mean z-axis

Label: timebodyaccjerkstddevx
Variable: average time body accelaration jerk standard deviation x-axis

Label: timebodyaccjerkstddevy
Variable: average time body accelaration jerk standard deviation y-axis

Label: timebodyaccjerkstddevz
Variable: average time body accelaration jerk standard deviation z-axis

Label: timebodygyromeanx
Variable: average time body gyro mean x-axis

Label: timebodygyromeany
Variable: average time body gyro mean y-axis

Label: timebodygyromeanz
Variable: average time body gyro mean z-axis

Label: timebodygyrostddevx
Variable: average time body gyro standard deviation x-axis

Label: timebodygyrostddevy
Variable: average time body gyro standard deviation y-axis

Label: timebodygyrostddevz
Variable: average time body gyro standard deviation z-axis

Label: timebodygyrojerkmeanx
Variable: average time body gyro jerk mean x-axis

Label: timebodygyrojerkmeany
Variable: average time body gyro jerk mean y-axis

Label: timebodygyrojerkmeanz
Variable: average time body gyro jerk mean z-axis

Label: timebodygyrojerkstddevx
Variable: average time body gyro jerk standard deviation x-axis

Label: timebodygyrojerkstddevy
Variable: average time body gyro jerk standard deviation y-axis

Label: timebodygyrojerkstddevz
Variable: average time body gyro jerk standard deviation z-axis

Label: timebodyaccmagnitudemean
Variable: average time body accelaration magnitude mean

Label: timebodyaccmagnitudestddev
Variable: average time body accelaration magnitude standard deviation

Label: timegravityaccmagnitudemean
Variable: average time gravity accelaration magnitude mean

Label: timegravityaccmagnitudestddev
Variable: average time gravity accelaration magnitude standard deviation

Label: timebodyaccjerkmagnitudemean
Variable: average time body accelaration jerk magnitude mean

Label: timebodyaccjerkmagnitudestddev
Variable: average time body accelaration jerk magnitude standard deviation

Label: timebodygyromagnitudemean
Variable: average time body gyro magnitude mean

Label: timebodygyromagnitudestddev
Variable: average time body gyro magnitude standard deviation

Label: timebodygyrojerkmagnitudemean
Variable: average time body gyro jerk magnitude mean

Label: timebodygyrojerkmagnitudestddev
Variable: average time body gyro jerk magnitude standard deviation

Label: freqbodyaccmeanx
Variable: average frequency body accelaration mean x-axis

Label: freqbodyaccmeany
Variable: average frequency body accelaration mean y-axis

Label: freqbodyaccmeanz
Variable: average frequency body accelaration mean z-axis

Label: freqbodyaccstddevx
Variable: average frequency body accelaration standard deviation x-axis

Label: freqbodyaccstddevy
Variable: average frequency body accelaration standard deviation y-axis

Label: freqbodyaccstddevz
Variable: average frequency body accelaration standard deviation z-axis

Label: freqbodyaccmeanfreqx
Variable: average frequency body accelaration mean frequency x-axis

Label: freqbodyaccmeanfreqy
Variable: average frequency body accelaration mean frequency y-axis

Label: freqbodyaccmeanfreqz
Variable: average frequency body accelaration mean frequency z-axis

Label: freqbodyaccjerkmeanx
Variable: average frequency body accelaration jerk mean x-axis

Label: freqbodyaccjerkmeany
Variable: average frequency body accelaration jerk mean y-axis

Label: freqbodyaccjerkmeanz
Variable: average frequency body accelaration jerk mean z-axis

Label: freqbodyaccjerkstddevx
Variable: average frequency body accelaration jerk standard deviation x-axis

Label: freqbodyaccjerkstddevy
Variable: average frequency body accelaration jerk standard deviation y-axis

Label: freqbodyaccjerkstddevz
Variable: average frequency body accelaration jerk standard deviation z-axis

Label: freqbodyaccjerkmeanfreqx
Variable: average frequency body accelaration jerk mean frequency x-axis

Label: freqbodyaccjerkmeanfreqy
Variable: average frequency body accelaration jerk mean frequency y-axis

Label: freqbodyaccjerkmeanfreqz
Variable: average frequency body accelaration jerk mean frequency z-axis

Label: freqbodygyromeanx
Variable: average frequency body gyro mean x-axis

Label: freqbodygyromeany
Variable: average frequency body gyro mean y-axis

Label: freqbodygyromeanz
Variable: average frequency body gyro mean z-axis

Label: freqbodygyrostddevx
Variable: average frequency body gyro standard deviation x-axis

Label: freqbodygyrostddevy
Variable: average frequency body gyro standard deviation y-axis

Label: freqbodygyrostddevz
Variable: average frequency body gyro standard deviation z-axis

Label: freqbodygyromeanfreqx
Variable: average frequency body gyro mean frequency x-axis

Label: freqbodygyromeanfreqy
Variable: average frequency body gyro mean frequency y-axis

Label: freqbodygyromeanfreqz
Variable: average frequency body gyro mean frequency z-axis

Label: freqbodyaccmagnitudemean
Variable: average frequency body accelaration magnitude mean

Label: freqbodyaccmagnitudestddev
Variable: average frequency body accelaration magnitude standard deviation

Label: freqbodyaccmagnitudemeanfreq
Variable: average frequency body accelaration magnitude mean frequency

Label: freqbodyaccjerkmagnitudemean
Variable: average frequency body accelaration jerk magnitude mean

Label: freqbodyaccjerkmagnitudestddev
Variable: average frequency body accelaration jerk magnitude standard deviation

Label: freqbodyaccjerkmagnitudemeanfreq
Variable: average frequency body accelaration jerk magnitude mean frequency

Label: freqbodygyromagnitudemean
Variable: average frequency body gyro magnitude mean

Label: freqbodygyromagnitudestddev
Variable: average frequency body gyro magnitude standard deviation

Label: freqbodygyromagnitudemeanfreq
Variable: average frequency body gyro magnitude mean frequency

Label: freqbodygyrojerkmagnitudemean
Variable: average frequency body gyro jerk magnitude mean

Label: freqbodygyrojerkmagnitudestddev
Variable: average frequency body gyro jerk magnitude standard deviation

Label: freqbodygyrojerkmagnitudemeanfreq
Variable: average frequency body gyro jerk magnitude mean frequency
