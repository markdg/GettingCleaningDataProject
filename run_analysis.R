## Getting and Cleaning Data Project ##

# Assumes the directory structure as created by unzipping the file in a working directory,
# resulting in a subdirectory called "HCI DAR Dataset" containing the features file and
# subdirectories /train and /test containing data. The run_analysis.R script runs in the
# working directory and accesses the appropraite files in the subdirectories. Its final
# output, the tidy data set of means and stds, is saved in the working directory.
# Rules for tidy names discussed in lecture have been followed, which are
# no capital letters, no punctuation or non-alphanumeric characters.

## Step 1 ##
# "Merges the training and the test sets to create one data set."
# I also tidy up the column names in this step so that I have clean names to 
# use in later steps.

# Get the column names and tidy them up
columnNames <- readLines("UCI HAR Dataset/features.txt")

# Tidy up column names - first element is a number, want only the name
columnNames <- strsplit(columnNames, " ")
secondElement <- function(x) {x[2]}
columnNames <- sapply(columnNames, secondElement)

# Tidy up column names - make all lower case
columnNames <- tolower(columnNames)

# Tidy up column names - remove non-alphanumerics
columnNames <- gsub("[\\(\\)\\,\\-]", "", columnNames)

# Find duplicates
dups <-which(duplicated(columnNames))
# Duplicate column names may have come from identical labels for columns that represent
# X, Y and Z compoents of some features. Presumably the original names were unique but
# then truncated, resulting in the duplicates. These would need to be resolved if
# further processing on those columns was to be performed. Without additional information
# not provided in the files it would be a questionable to just assume which are X, Y, 
# and Z compoents. So the names are left as duplicates in this exercise.

# Read the training and test data, combine into one data frame and add names
# read.fwf far too slow and hangs computer
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
Xdata <- rbind(Xtrain, Xtest)
names(Xdata) <- columnNames

# Read subject training and test, combine, add to data frame
Strain <- read.table("UCI HAR Dataset/train/subject_train.txt")
Stest <- read.table("UCI HAR Dataset/test/subject_test.txt")
Sdata <- rbind(Strain, Stest)
Xdata$subject <- Sdata

# Read activity training and test, combine, make descriptive labels, add to data frame
Atrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Atest <- read.table("UCI HAR Dataset/test/y_test.txt")
Adata <- rbind(Atrain, Atest)
names(Adata) <- "activity"
activityNames <- c("walking", "walkingupstairs", "walkingdownstairs", "sitting", "standing", "laying")
for (i in 1:6) { Adata$activity <- gsub(as.character(i), activityNames[i], Adata$activity) }
Xdata$activity <- Adata
## Step 1 Complete - Merged data set is called Xdata ##

## Step 2 ##
# "Extracts only the measurements on the mean and standard deviation for each measurement."
# That means all column names containing "mean" or "std".
# Note that column names have already been cleaned up and are all lowercase
# so I won't miss any when I grep for just the lowercase.
MS <- Xdata[, grep("mean", columnNames)]
MS <- cbind(MS, Xdata[, grep("std", columnNames)])
MS$subject <- Sdata
MS$activity <- Adata
## Step 2 Complete - Data set called MS ##

## Step 3 ##
# "Uses descriptive activity names to name the activities in the data set."
# This was done as part of Step 1 where activity numbers were converted to their
# corresponding names and then the column was added to the combined data set.
## Step 3 Complete - Descriptive activity names already included in merged data set ##

## Step 4 ##
# "Appropriately labels the data set with descriptive activity names."
# This was completed as part of Step 1 where column names and activity names were
# made tidy and descriptive.
## Step 4 Complete - Appropriate labels already included in merged data set ##

## Step 5 ##
# "Creates a second, independent tidy data set with the average of each variable for each
# activity and each subject."
# The recommendation by the Community TA in this thread
# https://class.coursera.org/getdata-003/forum/thread?thread_id=129#comment-773
# is that the starting point is the mean and std data set from step 2.
Tidy <- data.frame()
rowLabels <- vector()
for (i in 1:30)
  for (j in 1:6) {
    Tidy <- rbind(Tidy, colMeans(MS[MS$subject==i & MS$activity==activityNames[j],1:86]))
    rowLabels <- append(rowLabels, paste("subject", i, activityNames[j], sep=""))
  }
names(Tidy) <- columnNames[1:86]
Tidy$subjectactivity <- rowLabels
write.table(Tidy, file="Tidy.txt")
## Step 5 Complete - Tidy data set saved as Tidy.txt in working directory ##