Codebook.txt file for the data used in the script run_analysis.R

===================================
Created by: Frank Boersma
Date: May 2014
Function name: run_analysis.R 
===================================

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

Variables: Features are normalized and bounded within [-1,1]
===================================
original fieldname	changed to
tBodyAcc-mean()-X	tBodyAccmeanX
tBodyAcc-mean()-Y	tBodyAccmeanY
tBodyAcc-mean()-Z	tBodyAccmeanZ
tBodyAcc-std()-X	tBodyAccstdX
tBodyAcc-std()-Y	tBodyAccstdY
tBodyAcc-std()-Z	tBodyAccstdZ
tGravityAcc-mean()-X	tGravityAccmeanX
tGravityAcc-mean()-Y	tGravityAccmeanY
tGravityAcc-mean()-Z	tGravityAccmeanZ
tGravityAcc-std()-X	tGravityAccstdX
tGravityAcc-std()-Y	tGravityAccstdY
tGravityAcc-std()-Z	tGravityAccstdZ
tBodyAccJerk-mean()-X	tBodyAccJerkmeanX
tBodyAccJerk-mean()-Y	tBodyAccJerkmeanY
tBodyAccJerk-mean()-Z	tBodyAccJerkmeanZ
tBodyAccJerk-std()-X	tBodyAccJerkstdX
tBodyAccJerk-std()-Y	tBodyAccJerkstdY
tBodyAccJerk-std()-Z	tBodyAccJerkstdZ
tBodyGyro-mean()-X	tBodyGyromeanX
tBodyGyro-mean()-Y	tBodyGyromeanY
tBodyGyro-mean()-Z	tBodyGyromeanZ
tBodyGyro-std()-X	tBodyGyrostdX
tBodyGyro-std()-Y	tBodyGyrostdY
tBodyGyro-std()-Z	tBodyGyrostdZ
tBodyGyroJerk-mean()-X	tBodyGyroJerkmeanX
tBodyGyroJerk-mean()-Y	tBodyGyroJerkmeanY
tBodyGyroJerk-mean()-Z	tBodyGyroJerkmeanZ
tBodyGyroJerk-std()-X	tBodyGyroJerkstdX
tBodyGyroJerk-std()-Y	tBodyGyroJerkstdY
tBodyGyroJerk-std()-Z	tBodyGyroJerkstdZ
tBodyAccMag-mean()	tBodyAccMagmean
tBodyAccMag-std()	tBodyAccMagstd
tGravityAccMag-mean()	tGravityAccMagmean
tGravityAccMag-std()	tGravityAccMagstd
tBodyAccJerkMag-mean()	tBodyAccJerkMagmean
tBodyAccJerkMag-std()	tBodyAccJerkMagstd
tBodyGyroMag-mean()	tBodyGyroMagmean
tBodyGyroMag-std()	tBodyGyroMagstd
tBodyGyroJerkMag-mean()	tBodyGyroJerkMagmean
tBodyGyroJerkMag-std()	tBodyGyroJerkMagstd
fBodyAcc-mean()-X	fBodyAccmeanX
fBodyAcc-mean()-Y	fBodyAccmeanY
fBodyAcc-mean()-Z	fBodyAccmeanZ
fBodyAcc-std()-X	fBodyAccstdX
fBodyAcc-std()-Y	fBodyAccstdY
fBodyAcc-std()-Z	fBodyAccstdZ
fBodyAccJerk-mean()-X	fBodyAccJerkmeanX
fBodyAccJerk-mean()-Y	fBodyAccJerkmeanY
fBodyAccJerk-mean()-Z	fBodyAccJerkmeanZ
fBodyAccJerk-std()-X	fBodyAccJerkstdX
fBodyAccJerk-std()-Y	fBodyAccJerkstdY
fBodyAccJerk-std()-Z	fBodyAccJerkstdZ
fBodyGyro-mean()-X	fBodyGyromeanX
fBodyGyro-mean()-Y	fBodyGyromeanY
fBodyGyro-mean()-Z	fBodyGyromeanZ
fBodyGyro-std()-X	fBodyGyrostdX
fBodyGyro-std()-Y	fBodyGyrostdY
fBodyGyro-std()-Z	fBodyGyrostdZ
fBodyAccMag-mean()	fBodyAccMagmean
fBodyAccMag-std()	fBodyAccMagstd
fBodyBodyAccJerkMag-mean()	fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMag-std()	fBodyBodyAccJerkMagstd
fBodyBodyGyroMag-mean()	fBodyBodyGyroMagmean
fBodyBodyGyroMag-std()	fBodyBodyGyroMagstd
fBodyBodyGyroJerkMag-mean()	fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMag-std()	fBodyBodyGyroJerkMagstd
angle(tBodyAccMean,gravity)	angletBodyAccMeangravity
angle(tBodyAccJerkMean),gravityMean)	angletBodyAccJerkMeangravityMean
angle(tBodyGyroMean,gravityMean)	angletBodyGyroMeangravityMean
angle(tBodyGyroJerkMean,gravityMean)	angletBodyGyroJerkMeangravityMean
angle(X,gravityMean)	angleXgravityMean
angle(Y,gravityMean)	angleYgravityMean
angle(Z,gravityMean)	angleZgravityMean