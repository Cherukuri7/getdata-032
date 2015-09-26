# Data Dictionary - tidy-data.txt

The variables for this data set come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ and prefixes 't' and 'f' denote time and frequency domains. The acceleration signals were further separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ). Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Also the magnitude of these three-dimensional signals were calculated  (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. All the raw signals were summarized for various statistical measures including mean and standard deviation.

The tidy data set contains a sub set of variables belonging to mean and standard deviation of raw signals. The first 3 variables (treatment, activity and subjectid) are factors and the rest of averaged variables belonging to mean and standard deviation of raw signals.


|Variable         | Position |Values or Explantion  |
| :-------------  |:---------| :-----|
|treatment        | 1       |factor of two levels (TEST, TRAIN)|
|activity         | 2       |factor of six levels (WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) |
|subjectid        | 3      |factor of 30 levels representing 30 people who participated in the experiment |
|tBodyAccmeanX, tBodyAccmeanY, tBodyAccmeanZ| 4-6|mean values of time domain body acceleration variables in X,Y, and Z axis |
|tGravityAccmeanX, tGravityAccmeanY, tGravityAccmeanZ| 7-9|mean values of time domain gravity acceleration variables in X,Y, and Z axis |
|tBodyAccJerkmeanX, tBodyAccJerkmeanY, tBodyAccJerkmeanZ| 10-12|mean values of time domain body jerk variables in X,Y, and Z axis |
|tBodyGyromeanX, tBodyGyromeanY, tBodyGyromeanZ| 13-15|mean values of time domain body gyroscopic variables in X,Y, and Z axis |
|tBodyGyroJerkmeanX, tBodyGyroJerkmeanY, tBodyGyroJerkmeanZ| 16-18|mean values of time domain body gyroscopic jerk variables in X,Y, and Z axis |
|tBodyAccMagmean| 19 |mean of magnitude values for time domain body acceleration variable |
|tGravityAccMagmean| 20 |mean of magnitude values for time domain gravity acceleration variable |
|tBodyAccJerkMagmean| 21 |mean of magnitude values for time domain body acceleration jerk variable |
|tBodyGyroMagmean| 22 |mean of magnitude values for time domain body gyroscopic variable |
|tBodyGyroJerkMagmean| 23 |mean of magnitude values for time domain body gyroscopic jerk variable |
|fBodyAccmeanX, fBodyAccmeanY, fBodyAccmeanZ| 24-26 |mean values of frequency domain body acceleration variables in X,Y and Z axis |
|fBodyAccmeanFreqX, fBodyAccmeanFreqY, fBodyAccmeanFreqZ| 27-29 |mean values of frequency domain body acceleration frequency variables in X,Y and Z axis |
|fBodyAccJerkmeanX, fBodyAccJerkmeanY, fBodyAccJerkmeanZ| 30-32 |mean values of frequency domain body acceleration jerk variables in X,Y and Z axis |
|fBodyAccJerkmeanFreqX, fBodyAccJerkmeanFreqY, fBodyAccJerkmeanFreqZ| 33-35 |mean values of frequency domain body acceleration jerk frequency variables in X,Y and Z axis |
|fBodyGyromeanX, fBodyGyromeanY, fBodyGyromeanZ| 36-38|mean values of frequency domain body gyroscopic variables in X,Y, and Z axis |
|fBodyGyromeanFreqX, fBodyGyromeanFreqY, fBodyGyromeanFreqZ| 39-41|mean values of frequency domain body gyroscopic frequency variables in X,Y, and Z axis |
|fBodyAccMagmean| 42 |mean of magnitude values of frequency domain body acceleration variable |
|fBodyAccMagmeanFreq| 43 |mean of magnitude values of frequency domain body acceleration frequency variable |
|fBodyBodyAccJerkMagmean| 44 |mean of magnitude values of frequency domain body acceleration jerk variable |
|fBodyBodyAccJerkMagmeanFreq| 45 |mean of magnitude mean values of frequency domain body acceleration jerk variable |
|fBodyBodyGyroMagmean| 46 |mean of magnitude values for frequency domain body gyroscopic variable |
|fBodyBodyGyroMagmeanFreq| 47 |mean of magnitude values for frequency domain body gyroscopic frequency variable |
|fBodyBodyGyroJerkMagmean| 48 |mean of magnitude values for frequency domain body gyroscopic jerk variable |
|fBodyBodyGyroJerkMagmeanFreq| 49 |mean of magnitude values for frequency domain body gyroscopic jerk frequency variable |
|angletBodyAccmeangravity, angletBodyAccJerkmeangravitymean, angletBodyGyromeangravitymean, angletBodyGyroJerkmeangravitymean, angleXgravitymean, angleYgravitymean, angleZgravitymean| 50-56| Variables obtained in signle window|
|tBodyAccstdX, tBodyAccstdY, tBodyAccstdZ| 57-59|std values of time domain body acceleration variables in X,Y, and Z axis |
|tGravityAccstdX, tGravityAccstdY, tGravityAccstdZ| 60-62|std values of time domain gravity acceleration variables in X,Y, and Z axis |
|tBodyAccJerkstdX, tBodyAccJerkstdY, tBodyAccJerkstdZ| 63-65|std values of time domain body jerk variables in X,Y, and Z axis |
|tBodyGyrostdX, tBodyGyrostdY, tBodyGyrostdZ| 66-68|std values of time domain body gyroscopic variables in X,Y, and Z axis |
|tBodyGyroJerkstdX, tBodyGyroJerkstdY, tBodyGyroJerkstdZ| 69-71|std values of time domain body gyroscopic jerk variables in X,Y, and Z axis |
|tBodyAccMagstd| 72 |std of magnitude values for time domain body acceleration variable |
|tGravityAccMagstd| 73 |std of magnitude values for time domain gravity acceleration variable |
|tBodyAccJerkMagstd| 74 |std of magnitude values for time domain body acceleration jerk variable |
|tBodyGyroMagstd| 75 |std of magnitude values for time domain body gyroscopic variable |
|tBodyGyroJerkMagstd| 76 |std of magnitude values for time domain body gyroscopic jerk variable |
|fBodyAccstdX, fBodyAccstdY, fBodyAccstdZ| 77-79 |std values of frequency domain body acceleration variables in X,Y and Z axis |
|fBodyAccstdFreqX, fBodyAccstdFreqY, fBodyAccstdFreqZ| 80-82 |std values of frequency domain body acceleration frequency variables in X,Y and Z axis |
|fBodyAccJerkstdX, fBodyAccJerkstdY, fBodyAccJerkstdZ| 83-85 |std values of frequency domain body acceleration jerk variables in X,Y and Z axis |
|fBodyAccMagstd| 86 |std of magnitude values of frequency domain body acceleration variable |
|fBodyBodyAccJerkMagstd| 87 |std of magnitude values of frequency domain body acceleration jerk variable |
|fBodyBodyGyroMagstd| 88 |std of magnitude values for frequency domain body gyroscopic variable |
|fBodyBodyGyroJerkMagstd| 89 |std of magnitude values for frequency domain body gyroscopic jerk variable |


