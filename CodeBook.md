# Codebook.txt file for the data used in the script run_analysis.R #

**Created by:** Frank Boersma
**Date:** May 2014
**Function name:** run_analysis.R 


Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Purpose of this script is to calculate the means of different variables from an external dataset per subject per activity. 

These variables are below in this codebook (the orignal names from the dataset and the name it has been changed to in R).

setType: the type of colleced data traindata or testdata)
subject: the subject who performed the activity for each window sample. Its range is from 1 to 30. 
activityId: the id of the performed activities. Its range is from 1 to 6.
activityDescription: six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

**Variables: Features are normalized and bounded within [-1,1]**

*original fieldname:	changed to:*

1. - tBodyAcc-mean()-X	tBodyAccmeanX
1. - tBodyAcc-mean()-Y	tBodyAccmeanY
1. - tBodyAcc-mean()-Z	tBodyAccmeanZ
1. - tBodyAcc-std()-X	tBodyAccstdX
1. - tBodyAcc-std()-Y	tBodyAccstdY
1. - tBodyAcc-std()-Z	tBodyAccstdZ
1. - tGravityAcc-mean()-X	tGravityAccmeanX
1. - tGravityAcc-mean()-Y	tGravityAccmeanY
1. - tGravityAcc-mean()-Z	tGravityAccmeanZ
1. - tGravityAcc-std()-X	tGravityAccstdX
1. - tGravityAcc-std()-Y	tGravityAccstdY
1. - tGravityAcc-std()-Z	tGravityAccstdZ
1. - tBodyAccJerk-mean()-X	tBodyAccJerkmeanX
1. - tBodyAccJerk-mean()-Y	tBodyAccJerkmeanY
1. - tBodyAccJerk-mean()-Z	tBodyAccJerkmeanZ
1. - tBodyAccJerk-std()-X	tBodyAccJerkstdX
1. - tBodyAccJerk-std()-Y	tBodyAccJerkstdY
1. - tBodyAccJerk-std()-Z	tBodyAccJerkstdZ
1. - tBodyGyro-mean()-X	tBodyGyromeanX
1. - tBodyGyro-mean()-Y	tBodyGyromeanY
1. - tBodyGyro-mean()-Z	tBodyGyromeanZ
1. - tBodyGyro-std()-X	tBodyGyrostdX
1. - tBodyGyro-std()-Y	tBodyGyrostdY
1. - tBodyGyro-std()-Z	tBodyGyrostdZ
1. - tBodyGyroJerk-mean()-X	tBodyGyroJerkmeanX
1. - tBodyGyroJerk-mean()-Y	tBodyGyroJerkmeanY
1. - tBodyGyroJerk-mean()-Z	tBodyGyroJerkmeanZ
1. - tBodyGyroJerk-std()-X	tBodyGyroJerkstdX
1. - tBodyGyroJerk-std()-Y	tBodyGyroJerkstdY
1. - tBodyGyroJerk-std()-Z	tBodyGyroJerkstdZ
1. - tBodyAccMag-mean()	tBodyAccMagmean
1. - tBodyAccMag-std()	tBodyAccMagstd
1. - tGravityAccMag-mean()	tGravityAccMagmean
1. - tGravityAccMag-std()	tGravityAccMagstd
1. - tBodyAccJerkMag-mean()	tBodyAccJerkMagmean
1. - tBodyAccJerkMag-std()	tBodyAccJerkMagstd
1. - tBodyGyroMag-mean()	tBodyGyroMagmean
1. - tBodyGyroMag-std()	tBodyGyroMagstd
1. - tBodyGyroJerkMag-mean()	tBodyGyroJerkMagmean
1. - tBodyGyroJerkMag-std()	tBodyGyroJerkMagstd
1. - fBodyAcc-mean()-X	fBodyAccmeanX
1. - fBodyAcc-mean()-Y	fBodyAccmeanY
1. - fBodyAcc-mean()-Z	fBodyAccmeanZ
1. - fBodyAcc-std()-X	fBodyAccstdX
1. - fBodyAcc-std()-Y	fBodyAccstdY
1. - fBodyAcc-std()-Z	fBodyAccstdZ
1. - fBodyAccJerk-mean()-X	fBodyAccJerkmeanX
1. - fBodyAccJerk-mean()-Y	fBodyAccJerkmeanY
1. - fBodyAccJerk-mean()-Z	fBodyAccJerkmeanZ
1. - fBodyAccJerk-std()-X	fBodyAccJerkstdX
1. - fBodyAccJerk-std()-Y	fBodyAccJerkstdY
1. - fBodyAccJerk-std()-Z	fBodyAccJerkstdZ
1. - fBodyGyro-mean()-X	fBodyGyromeanX
1. - fBodyGyro-mean()-Y	fBodyGyromeanY
1. - fBodyGyro-mean()-Z	fBodyGyromeanZ
1. - fBodyGyro-std()-X	fBodyGyrostdX
1. - fBodyGyro-std()-Y	fBodyGyrostdY
1. - fBodyGyro-std()-Z	fBodyGyrostdZ
1. - fBodyAccMag-mean()	fBodyAccMagmean
1. - fBodyAccMag-std()	fBodyAccMagstd
1. - fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMagmean
1. - fBodyBodyAccJerkMag-std()	fBodyBodyAccJerkMagstd
1. - fBodyBodyGyroMag-mean()	fBodyBodyGyroMagmean
1. - fBodyBodyGyroMag-std()	fBodyBodyGyroMagstd
1. - fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMagmean
1. - fBodyBodyGyroJerkMag-std()	fBodyBodyGyroJerkMagstd
1. - angle(tBodyAccMean,gravity)	angletBodyAccMeangravity
1. - angle(tBodyAccJerkMean),gravityMean)	angletBodyAccJerkMeangravityMean
1. - angle(tBodyGyroMean,gravityMean)	angletBodyGyroMeangravityMean
1. - angle(tBodyGyroJerkMean,gravityMean)	angletBodyGyroJerkMeangravityMean
1. - angle(X,gravityMean)	angleXgravityMean
1. - angle(Y,gravityMean)	angleYgravityMean
1. - angle(Z,gravityMean)	angleZgravityMean
