GetCleanProject
===============

##CodeBook for Coursera Getting and Cleaning Data project

Per project requirements, this Code Book describes the variables, data and transformations performed to prepare the Tidy data output.

###Variables



###Data
The data sources that are used to produce the Tidy data consist of the following files that are part of the zip filehttps://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip :
- X_train.txt
- X_test.txt
- y_train.txt
- y_test.txt
- subject_train.txt
- subject_test.txt
- features.txt

###Transformations
The following transformations were performed to produce the Tidy data set output:
1. Read the training and test data measurements from X_train and X_test
2. Combine X_train and X_test into one data frame
3. Read the training and test activity codes from y_train and y_test
4. Combine y_train and y_test into one vector and add it as a column to the data frame
5. Read the training and test subject codes from subject_train and subject_test
6. Combine subject_train and subject_test into one vector, convert the codes to descriptive activities, and add it as a column to the data frame
7. Make the column names tidy by reading features.txt, making names all lower case, and removing punctuation
8. Subset the data frame to select only columns representing mean and standard deviation of measurements
9. Calculate the column averages of the subset by subject and activity
10. Output a data set containing the averages of means and standard deviations with a column indicating subject and activity
