# Code Book for tidydata.txt
  
### Additional Information can be retrieved from file features_info.txt inside the "getdata-projectfiles-UCI HAR Dataset.zip" or "UCI HAR Dataset.zip" that can be get from "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip".
  
### This tidydata.txt have only the calculated Means (except the columns Subject and ActivityName), grouped by ActivityName and Subject, from the following columns existents on file provided and with the same names:
  
Subject - The subject ID   
ActivityName - Name of Activity  
  
tBodyAccMean-X, tBodyAccMean-Y, tBodyAccMean-Z  
tBodyAccStd-X, tBodyAccStd-Y, tBodyAccStd-Z  
tGravityAccMean-X, tGravityAccMean-Y, tGravityAccMean-Z  
tGravityAccStd-X, tGravityAccStd-Y, tGravityAccStd-Z  
tBodyAccJerkMean-X, tBodyAccJerkMean-Y, tBodyAccJerkMean-Z  
tBodyAccJerkStd-X, tBodyAccJerkStd-Y, tBodyAccJerkStd-Z  
tBodyGyroMean-X, tBodyGyroMean-Y, tBodyGyroMean-Z  
tBodyGyroStd-X, tBodyGyroStd-Y, tBodyGyroStd-Z  
tBodyGyroJerkMean-X, tBodyGyroJerkMean-Y, tBodyGyroJerkMean-Z  
tBodyGyroJerkStd-X, tBodyGyroJerkStd-Y, tBodyGyroJerkStd-Z  
  
fBodyAccMean-X fBodyAccMean-Y fBodyAccMean-Z  
fBodyAccStd-X fBodyAccStd-Y fBodyAccStd-Z  
fBodyAccJerkMean-X fBodyAccJerkMean-Y fBodyAccJerkMean-Z  
fBodyAccJerkStd-X fBodyAccJerkStd-Y fBodyAccJerkStd-Z  
fBodyGyroMean-X fBodyGyroMean-Y fBodyGyroMean-Z  
fBodyGyroStd-X fBodyGyroStd-Y fBodyGyroStd-Z  
  
tBodyAccMagMean tBodyAccMagStd  
tGravityAccMagMean tGravityAccMagStd  
tBodyAccJerkMagMean tBodyAccJerkMagStd  
tBodyGyroMagMean tBodyGyroMagStd  
tBodyGyroJerkMagMean tBodyGyroJerkMagStd   
  
fBodyAccMagMean fBodyAccMagStd  
fBodyBodyAccJerkMagMean fBodyBodyAccJerkMagStd  
fBodyBodyGyroMagMean fBodyBodyGyroMagStd  
fBodyBodyGyroJerkMagMean fBodyBodyGyroJerkMagStd  
  
###The following description for the variables names where taken from the file features_info.txt:  
  
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.   
  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
  
These signals were used to estimate variables of the feature vector for each pattern:   
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."