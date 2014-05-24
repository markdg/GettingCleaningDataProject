GetCleanProject
===============

##CodeBook for Coursera Getting and Cleaning Data project

Per project requirements, this Code Book describes the variables, data and transformations performed to prepare the Tidy data output.

###Variables
The variables names provided in the features.txt file are sufficiently descriptive when taken together with the explanations below. They only need to be made tidy by removing punctuation and making lower case. The resulting variable names follow.

The following variable names are defined as follows:
- First character "t" inidicates time domain measurement, "f" indicates Fourier transform of measurement.
- Body is self explanatory.
- Acceleration is separated into x, y and z directions as indicated by the suffix x, y or z, respectively
- Gravity is in x, y and z directions is separated from body acceleration.
- Jerk is a calculated value from the time derivative of acceleration in each direction.
- Means and standard deviations are the variables extracted from the complete original data set. Averages of the means and standard deviations are computed for the tidy data set output.
- Final column variable is the subject number and subject activity of which there are 180 combinations of subject 1 through 30 performing six activities.

1. tbodyaccmeanx
2. tbodyaccmeany
3. tbodyaccmeanz
4. tgravityaccmeanx
5. tgravityaccmeany
6. tgravityaccmeanz
7. tbodyaccjerkmeanx
8. tbodyaccjerkmeany
9. tbodyaccjerkmeanz
10. tbodygyromeanx
11. tbodygyromeany
12. tbodygyromeanz
13. tbodygyrojerkmeanx
14. tbodygyrojerkmeany
15. tbodygyrojerkmeanz
16. tbodyaccmagmean
17. tgravityaccmagmean
18. tbodyaccjerkmagmean
19. tbodygyromagmean
20. tbodygyrojerkmagmean
21. fbodyaccmeanx
22. fbodyaccmeany
23. fbodyaccmeanz
24. fbodyaccmeanfreqx
25. fbodyaccmeanfreqy
26. fbodyaccmeanfreqz
27. fbodyaccjerkmeanx
28. fbodyaccjerkmeany
29. fbodyaccjerkmeanz
30. fbodyaccjerkmeanfreqx
31. fbodyaccjerkmeanfreqy
32. fbodyaccjerkmeanfreqz
33. fbodygyromeanx
34. fbodygyromeany
35. fbodygyromeanz
36. fbodygyromeanfreqx
37. fbodygyromeanfreqy
38. fbodygyromeanfreqz
39. fbodyaccmagmean
40. fbodyaccmagmeanfreq
41. fbodybodyaccjerkmagmean
42. fbodybodyaccjerkmagmeanfreq
43. fbodybodygyromagmean
44. fbodybodygyromagmeanfreq
45. fbodybodygyrojerkmagmean
46. fbodybodygyrojerkmagmeanfreq
47. angletbodyaccmeangravity
48. angletbodyaccjerkmeangravitymean
49. angletbodygyromeangravitymean
50. angletbodygyrojerkmeangravitymean
51. anglexgravitymean
52. angleygravitymean
53. anglezgravitymean
54. tbodyaccstdx
55. tbodyaccstdy
56. tbodyaccstdz
57. tgravityaccstdx
58. tgravityaccstdy
59. tgravityaccstdz
60. tbodyaccjerkstdx
61. tbodyaccjerkstdy
62. tbodyaccjerkstdz
63. tbodygyrostdx
64. tbodygyrostdy
65. tbodygyrostdz
66. tbodygyrojerkstdx
67. tbodygyrojerkstdy
68. tbodygyrojerkstdz
69. tbodyaccmagstd
70. tgravityaccmagstd
71. tbodyaccjerkmagstd
72. tbodygyromagstd
73. tbodygyrojerkmagstd
74. fbodyaccstdx
75. fbodyaccstdy
76. fbodyaccstdz
77. fbodyaccjerkstdx
78. fbodyaccjerkstdy
79. fbodyaccjerkstdz
80. fbodygyrostdx
81. fbodygyrostdy
82. fbodygyrostdz
83. fbodyaccmagstd
84. fbodybodyaccjerkmagstd
85. fbodybodygyromagstd
86. fbodybodygyrojerkmagstd
87. subjectactivity

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
