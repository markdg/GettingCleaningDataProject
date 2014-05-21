GetCleanProject
===============

##Repo for Coursera Getting and Cleaning Data project


Assumes the directory structure as created by unzipping the file in a working directory, resulting in a subdirectory called "HCI DAR Dataset" containing the features file and subdirectories /train and /test containing data. The run_analysis.R script runs in the working directory and accesses the appropriate files in the subdirectories. The script's final output, the tidy data set of means and stds, is saved in the working directory. Rules for tidy names discussed in lecture have been followed, which are no capital letters, no punctuation or non-alphanumeric characters.

###Step 5
>"Creates a second, independent tidy data set with the average of each variable for each activity and each subject."

The recommendation by the Community TA in this thread https://class.coursera.org/getdata-003/forum/thread?thread_id=129#comment-773 is that the starting point for step 5 is the mean and standard deviation data set from step 2. So that is what was done.
