GetCleanProject
===============

##Repo for Coursera Getting and Cleaning Data project


Assumes the directory structure as created by unzipping the file in a working directory, resulting in a subdirectory called "HCI DAR Dataset" containing the features file and subdirectories /train and /test containing data. The run_analysis.R script runs in the working directory and accesses the appropriate files in the subdirectories. The script's final output, the tidy data set of means and stds, is saved in the working directory. Rules for tidy names discussed in lecture have been followed, which are no capital letters, no punctuation or non-alphanumeric characters.

###Step 1
>"Merges the training and the test sets to create one data set."

Script uses read.table to read the X_train.txt and X_test.txt files from the /training and /test subdirectories and combines them into one data frame.
Then it reads the subject_train.txt and subject_test.txt files, combines them, and adds this as a column to the data frame.
Then it reads the activity files y_train.txt and y_test.txt, combines them, and adds this as a column to the data frame.

###Step 2
>"Extracts only the measurements on the mean and standard deviation for each measurement."

That means all column names containing "mean" or "std". The column names are first made tidy following the rules discussed in the lectures, which is all lower case and all punctuation removed. The tidy names are added to the data frame.
Then the script subsets with grep for "mean and "std" and builds a new data frame of just the mean and std measurements.
The subject and activity columns are also added to this new data frame as they will be used in step 5.

###Step 3
>"Uses descriptive activity names to name the activities in the data set."

The activity numbers 1 through 6 are converted to their descriptive values as listed in the activity_labels.txt file, and made tidy per the tidy rules of all lower case and no punctuation.

###Step 4
>"Appropriately labels the data set with descriptive activity names."

All labels for rows and columns are made descriptive and tidy according to the tidy name rules mentioned above.
Column names are descriptive as provided in the features.txt file and just need to be made tidy. Further details of the meaning of each is in the CodeBook.md file.
Note that the script identifiese 84 duplicate column names. According to the Community TA on the dicussion forums this is likely due to truncation by the source software. These duplicates are presumably the X, Y, and Z components of the named variables. Although not used in this project, they would need to be resolved if additional processing was required.

###Step 5
>"Creates a second, independent tidy data set with the average of each variable for each activity and each subject."

The recommendation by the Community TA in this thread https://class.coursera.org/getdata-003/forum/thread?thread_id=129#comment-773 is that the starting point for step 5 is the mean and standard deviation data set from step 2. So that is what was done.
