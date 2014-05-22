GetCleanProject
===============

##CodeBook for Coursera Getting and Cleaning Data project

Per project requirements, this Code Book describes the variables, data and transformations performed to prepare the Tidy data output.

###Variables
The variables names provided in the features.txt file are sufficiently descriptive when taken together with the explanation file. They only need to be made tidy by removing punctuation and making lower case. The resulting variable names follow.

1. tbodyaccmeanx
2. tbodyaccmeany
3. tbodyaccmeanz
4. tbodyaccstdx
5. tbodyaccstdy
6. tbodyaccstdz
7. tbodyaccmadx
8. tbodyaccmady
9. tbodyaccmadz
10. tbodyaccmaxx
11. tbodyaccmaxy
12. tbodyaccmaxz
13. tbodyaccminx
14. tbodyaccminy
15. tbodyaccminz
16. tbodyaccsma
17. tbodyaccenergyx
18. tbodyaccenergyy
19. tbodyaccenergyz
20. tbodyacciqrx
21. tbodyacciqry
22. tbodyacciqrz
23. tbodyaccentropyx
24. tbodyaccentropyy
25. tbodyaccentropyz
26. tbodyaccarcoeffx1
27. tbodyaccarcoeffx2
28. tbodyaccarcoeffx3
29. tbodyaccarcoeffx4
30. tbodyaccarcoeffy1
31. tbodyaccarcoeffy2
32. tbodyaccarcoeffy3
33. tbodyaccarcoeffy4
34. tbodyaccarcoeffz1
35. tbodyaccarcoeffz2
36. tbodyaccarcoeffz3
37. tbodyaccarcoeffz4
38. tbodyacccorrelationxy
39. tbodyacccorrelationxz
40. tbodyacccorrelationyz
41. tgravityaccmeanx
42. tgravityaccmeany
43. tgravityaccmeanz
44. tgravityaccstdx
45. tgravityaccstdy
46. tgravityaccstdz
47. tgravityaccmadx
48. tgravityaccmady
49. tgravityaccmadz
50. tgravityaccmaxx
51. tgravityaccmaxy
52. tgravityaccmaxz
53. tgravityaccminx
54. tgravityaccminy
55. tgravityaccminz
56. tgravityaccsma
57. tgravityaccenergyx
58. tgravityaccenergyy
59. tgravityaccenergyz
60. tgravityacciqrx
61. tgravityacciqry
62. tgravityacciqrz
63. tgravityaccentropyx
64. tgravityaccentropyy
65. tgravityaccentropyz
66. tgravityaccarcoeffx1
67. tgravityaccarcoeffx2
68. tgravityaccarcoeffx3
69. tgravityaccarcoeffx4
70. tgravityaccarcoeffy1
71. tgravityaccarcoeffy2
72. tgravityaccarcoeffy3
73. tgravityaccarcoeffy4
74. tgravityaccarcoeffz1
75. tgravityaccarcoeffz2
76. tgravityaccarcoeffz3
77. tgravityaccarcoeffz4
78. tgravityacccorrelationxy
79. tgravityacccorrelationxz
80. tgravityacccorrelationyz
81. tbodyaccjerkmeanx
82. tbodyaccjerkmeany
83. tbodyaccjerkmeanz
84. tbodyaccjerkstdx
85. tbodyaccjerkstdy
86. tbodyaccjerkstdz
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
