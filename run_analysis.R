run_analysis <- function() {

#set your workingdirectory here
#a directory called "UCI HAR Dataset" (the samsung dataset) should be in this workingdirectory
#the structure of the unpacked zip-file containing this data should not be changed        
setwd("C:/Users/Frank/R/Getting and Cleaning Data/Assignment") 

#trick to import only the first number of columns specified here to speed up the build proces
import_n_rows = NULL
import_n_rows <- -1 #set -1 for all rows

#step 1: import columnnames from features.txt
colnames = read.table("./UCI HAR Dataset/features.txt", 
                   sep="", 
                   col.names=c("number","fieldname"))

#step 2: clean imported columnnames with only letters
colnames.vector <- gsub("[^a-z]","",as.vector(colnames$fieldname), ignore.case = T)

#step 3: import the activitylabels from activity_labels.txt
activityLabels = read.table("./UCI HAR Dataset/activity_labels.txt", 
                 sep="", 
                 col.names=c("activityId","activityDescription"))

#===================================== START: IMPORT TESTDATA ================================
#step 4: import the subject-ids from test/subject_test.txt
subjectTest = read.table("./UCI HAR Dataset/test/subject_test.txt", 
                         sep="",
                         col.names=c("subject"),
                         nrows = import_n_rows)

#step 5: import the activity-numbers from test/y_test.txt
yTest = read.table("./UCI HAR Dataset/test/y_test.txt", 
               sep="", 
               col.names=c("activityId"),
               nrows = import_n_rows)

#step 6: bind the subject and activity-numbers and then merge the activity_labels from step 3
yTestActivity <- merge(x = cbind(subjectTest,yTest), activityLabels, by = "activityId", all = TRUE, sort = FALSE)

#step 7: change the order
yTestActivity_order <- yTestActivity[,c("subject","activityId","activityDescription")]

#step 8: import the testdate from test/X_test.txt
xTest = read.table("./UCI HAR Dataset/test/X_test.txt", 
                          sep="", 
                          col.names = colnames.vector,  
                          nrows = import_n_rows)

#===================================== END  : IMPORT TESTDATA ================================

#===================================== START: IMPORT TRAINDATA ===============================

#step 9: import the subject-ids from train/subject_train.txt
subjectTrain = read.table("./UCI HAR Dataset/train/subject_train.txt", 
                          sep="",
                          col.names=c("subject"),
                          nrows = import_n_rows)

#step 10: import the activity-numbers from train/y_train.txt
yTrain = read.table("./UCI HAR Dataset/train/y_train.txt", 
                   sep="", 
                   col.names=c("activityId"),
                   nrows = import_n_rows)

#step 11:  bind the subject and activity-numbers and then merge the activity_labels from step 3
yTrainActivity <- merge(x = cbind(subjectTrain,yTrain), y = activityLabels, by = "activityId", all = TRUE, sort = FALSE)

#step 12: change the order
yTrainActivity_order <- yTrainActivity[,c("subject","activityId","activityDescription")]

#step 13: import the testdate from train/X_train.txt
xTrain = read.table("./UCI HAR Dataset/train/X_train.txt", 
                   sep="", 
                   col.names =  colnames.vector,  
                   nrows = import_n_rows)
#===================================== END  : IMPORT TRAINDATA ===============================

#step 14: merge columns (settype = testset), subject-ids, activities, activity-descriptions and testdata
mergeTestData <- cbind(setType = "testset", yTestActivity_order, xTest)

#step 15: merge columns (settype = trainset), subject-ids, activities, activity-descriptions and testdata
mergeTrainData <- cbind(setType = "trainset", yTrainActivity_order, xTrain)

#step 16: join the two datasets
mergeTotalData <- rbind(mergeTestData, mergeTrainData)

#step 17: which columnnumbers contain "mean" and "std"
colnrs_mean <- grep("mean", colnames.vector, ignore.case = T, useBytes = FALSE)
colnrs_std <- grep("std", colnames.vector, ignore.case = T, useBytes = FALSE)
colnrs_import <- sort(c(colnrs_mean,colnrs_std),decreasing = FALSE)

#step 18: columnnames with meanFreq should be excluded
colnrs_meanfreq <- grep("meanfreq", colnames.vector, ignore.case = T, useBytes = FALSE)
colnrs_import_def <- colnrs_import[!colnrs_import %in% colnrs_meanfreq]

#step 19: only filter the relevant data (mean and std and of course "setType","subject","activityId","activityDescription") 
mergeTotalData.filter <- subset(mergeTotalData, select = c("setType","subject","activityId","activityDescription", colnames.vector[colnrs_import_def]))   

#step 20: calculate the means by "subject","activityId","activityDescription"
library(data.table)
result <- data.frame(data.table(mergeTotalData.filter)[, lapply(.SD, mean), by=c("subject","activityId","activityDescription"), .SDcols=5:ncol(mergeTotalData.filter)][order(subject,activityId)])

#step 21: show result
result

# Write CSV in R to workingdirectory. The result is called MyData.csv
#write.csv(result, file = "MyData.csv")

# Write txt in R to workingdirectory. The result is called MyData.txt
#write.table(result, 'MyData.txt', row.names=FALSE)
}



