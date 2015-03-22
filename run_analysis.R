## 1. Merges the training and the test sets to create one data set

# loading Test set - y_test and subject_test now rows of main TestData
TestData          <- read.table("test/X_test.txt")
TestData[,562]    <- read.table("test/y_test.txt")
TestData[,563]    <- read.table("test/subject_test.txt")

# loading Training set - y_train and subject_train now rows of main TrainData
TrainData         <- read.table("train/X_train.txt")
TrainData[,562]   <- read.table("train/y_train.txt")
TrainData[,563]   <- read.table("train/subject_train.txt")

# loading activity names
Activities        <- read.table("activity_labels.txt")

# loading columns of X Data
cLabels           <- read.table("features.txt", colClasses="character")

# Merging data, rbind both in one data set, adding column names
AllData           <- rbind(TestData, TrainData)
colnames(AllData) <- c(cLabels[,2], "Activity", "Subject")

## 2.Extracts only the measurements on the mean and standard deviation for each measurement.

# Selecting colnames with std and mean + Activity and Subjects
MeanStdCols       <- c(grep("mean\\(|std\\(", colnames(AllData)), 562, 563)

# AllData with only Std and Mean cols +  Activity and Subjects
AllDataStdMean    <- AllData[,MeanStdCols]

## 3.Uses descriptive activity names to name the activities in the data set

# Add Activities Names to AllDataStdMean in new data AllDSMActNames
colnames(Activities) <- c("ids", "ActivityName")
AllDSMActNames       <- merge(AllDataStdMean, Activities, by.x="Activity", by.y="ids")

## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the 
##    average of each variable for each activity and each subject.

# removes last column that don't have any value able to mean
DataStdMeanTemp       <- AllDSMActNames[,2:69]

# Changes the names with "-std()" and "-mean()" by "Std" and "Mean"
colnames(DataStdMeanTemp) <- sub("-std()", "Std", colnames(DataStdMeanTemp),fixed=TRUE)
colnames(DataStdMeanTemp) <- sub("-mean()", "Mean", colnames(DataStdMeanTemp),fixed=TRUE)

#Generates tidy data with average of each Variable for each activity and each subject
tidy       <- aggregate(. ~ Subject + ActivityName, data=DataStdMeanTemp, FUN=mean)

#Write file tidydata.txt
write.table(tidy,file="tidydata.txt",row.names=FALSE)
