# ReadMe.md file for script run_analysis.R #

**Created by:** Frank Boersma
**Date:** May 2014
**Function name:** run_analysis.R 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

Purpose of this script is to calculate the means of different variables from an external dataset per subject per activity.

This dataset can be downloaded from the link below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description of the dataset is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Important:
* A directory called "UCI HAR Dataset" (the samsung dataset) should be in your workingdirectory
* The structure of the unpacked zip-file containing this data should not be changed  

- step 1: the columnnames from /UCI HAR Dataset/features.txt are imported into R
- step 2: the columnnames are being cleaned: all other characters than the letters a-z are replaced by "" and put them into a vector called colnames.vector
- step 3: the activitylabels (like 1=WALKING, 2=WALKING_UPSTAIRS and so on) from /UCI HAR Dataset/activity_labels.txt 
are imported into R

The following steps are available for the Testdata (steps 4 - 8) and Traindata (steps 9 - 13). 
Their purpose and actions are equivalent:

- step 4: import the subject-ids from /UCI HAR Dataset/test/subject_test.txt and give it the columnname "subject"
- step 5: import the activity-numbers from /UCI HAR Dataset/test/y_test.txt and give it the columnname "activityId"
- step 6: bind the subject and activity-numbers and then merge the activity_labels from step 3
- step 7: the order of step 6 is not very logical, so in this step the order of the columns is changed
- step 8: import the testdate from /UCI HAR Dataset/test/X_test.txt. The columnnames are set here from the vector 
from step 2 (colnames.vector)

- step 9: see step 4, but then for /UCI HAR Dataset/train/subject_train.txt
- step 10: see step 5, but then for /UCI HAR Dataset/train/y_train.txt
- step 11: see step 6
- step 12: see step 7
- step 13: see step 8, but then for /UCI HAR Dataset/train/X_train.txt 

- step 14: merge columns (a column settype is added with the value "testset"), subject-ids, activities, activity-descriptions and testdata
- step 15: merge columns (a column settype is added with the value "trainset"), subject-ids, activities, activity-descriptions and traindata
- step 16: merge the sets from step 14 (testdata) and 15 (traindata)

- step 17: get the positions from the vector colnames.vector for colnames containing the word "mean" and the same way for colnames containing the word "std". The positions of these colnames are combined and ordered in a vector called "colnrs_import "
- step 18: there are columnnames containing "meanfreq". They should be excluded from the dataset. 
This step get the positions from the vector colnames.vector for colnames containing the word "meanfreq" are excluded from the vector from step 17. Now we have a clean vector containing the positions of the columnnames that contains the right variables (all the names of these variables are in the Codebook.txt file)
- step 19: only filter the relevant data from mergeTotalData (mean and std and of course "setType","subject","activityId","activityDescription")

- step 20: first open library(data.table). then calculate the means by "subject","activityId","activityDescription". 
Some conversions between data.frame and data.table are necessary to get the right formats
- step 21: show the results!

**Run the whole run_analysis.R function in R**
**Then enter run_analysis() to see the results!**
