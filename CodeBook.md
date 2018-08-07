Data Dictionary - Getting and Cleaning Data Course Project
==========================================================

This dataset contains measurements from experiments carried out with a
group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING\_UPSTAIRS,
WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and
gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been
video-recorded to label the data manually. The obtained dataset has been
randomly partitioned into two sets, where 70% of the volunteers was
selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. Variable names
and measurement definitions are described below.

Transformations applied
-----------------------

From the original set of files, the script run\_analysis.R executes the
following steps in order to generate the **tidydataset.txt** file.

1.  Loads the activity label definitions file and separates the
    identification numbers from their descriptive activity name.
2.  Loads the labels for the original datasets (the feature list which
    details all the measurements from the datasets)
3.  Applies a regular expression match filter to retain only the array
    indexes that contain measurements that correspond to mean or
    standard deviation of the variables.
4.  For both datasets, a load into memory is performed, then unwanted
    columns are removed keeping only those corresponding to mean or
    standard deviation of variables.
5.  The names of the remaining columns are assigned to the dataframes.
6.  Subject identifiers are loaded into memory from the corresponding
    files.
7.  Descriptive activity names are generated for every row of data.
8.  A new dataset is generated, both for train and test data, wich
    includes the subject identifiers, the descriptive activity labels,
    and the dataset filtered columns.
9.  Both datasets are combined using rbind function to generate a single
    dataset called *dataframe*
10. The dataset is melted into a new dataset called meltframe, assigning
    *subject* and *activity* as ids for each row and every other column
    as measure variables.
11. The final dataset called *meansframe* is generated with the dcast
    function over the meltframe with the formula
    `subject+activity ~ variable` and with the mean function.

After all proccessing ocurred, the `meansframe` was dumped into
**tidydataset.txt** file.

#### subject

    INTEGER

Identifier of the person measured.

#### activity  
CHARACTER-STRING Description of performed activity at the moment of
measuring.

#### tBodyAcc-mean()-X

    NUMERIC

Domain: time

Average value of mean body acceleration on X axis measured for *subject*
and *activity*

#### tBodyAcc-mean()-Y

    NUMERIC

Domain: time

Average value of mean body acceleration on Y axis measured for *subject*
and *activity*

#### tBodyAcc-mean()-Z

    NUMERIC

Domain: time

Average value of mean body acceleration on Z axis measured for *subject*
and *activity*

#### tBodyAcc-std()-X

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration on X axis
measured for *subject* and *activity*

#### tBodyAcc-std()-Y

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration on Y axis
measured for *subject* and *activity*

#### tBodyAcc-std()-Z

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration on Z axis
measured for *subject* and *activity*

#### tGravityAcc-mean()-X

    NUMERIC

Domain: time

Average value of mean of gravity acceleration on X axis measured for
*subject* and *activity*

#### tGravityAcc-mean()-Y

    NUMERIC

Domain: time

Average value of mean of gravity acceleration on Y axis measured for
*subject* and *activity*

#### tGravityAcc-mean()-Z

    NUMERIC

Domain: time

Average value of mean of gravity acceleration on Z axis measured for
*subject* and *activity*

#### tGravityAcc-std()-X

    NUMERIC

Domain: time

Average value of standard deviation of gravity acceleration on X axis
measured for *subject* and *activity*

#### tGravityAcc-std()-Y

    NUMERIC

Domain: time

Average value of standard deviation of gravity acceleration on Y axis
measured for *subject* and *activity*

#### tGravityAcc-std()-Z

    NUMERIC

Domain: time

Average value of standard deviation of gravity acceleration on Z axis
measured for *subject* and *activity*

#### tBodyAccJerk-mean()-X

    NUMERIC

Domain: time

Average value of mean body acceleration jerk on X axis measured for
*subject* and *activity*

#### tBodyAccJerk-mean()-Y

    NUMERIC

Domain: time

Average value of mean body acceleration jerk on Y axis measured for
*subject* and *activity*

#### tBodyAccJerk-mean()-Z

    NUMERIC

Domain: time

Average value of mean body acceleration jerk on Z axis measured for
*subject* and *activity*

#### tBodyAccJerk-std()-X

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration jerk on X axis
measured for *subject* and *activity*

#### tBodyAccJerk-std()-Y

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration jerk on Y axis
measured for *subject* and *activity*

#### tBodyAccJerk-std()-Z

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration jerk on Z axis
measured for *subject* and *activity*

#### tBodyGyro-mean()-X

    NUMERIC

Domain: time

Average value of mean body gyroscope on X axis measured for *subject*
and *activity*

#### tBodyGyro-mean()-Y

    NUMERIC

Domain: time

Average value of mean body gyroscope on Y axis measured for *subject*
and *activity*

#### tBodyGyro-mean()-Z

    NUMERIC

Domain: time

Average value of mean body gyroscope on Z axis measured for *subject*
and *activity*

#### tBodyGyro-std()-X

    NUMERIC

Domain: time

Average value of standard deviation of body gyroscope on X axis measured
for *subject* and *activity*

#### tBodyGyro-std()-Y

    NUMERIC

Domain: time

Average value of standard deviation of body gyroscope on Y axis measured
for *subject* and *activity*

#### tBodyGyro-std()-Z

    NUMERIC

Domain: time

Average value of standard deviation of body gyroscope on Z axis measured
for *subject* and *activity*

#### tBodyGyroJerk-mean()-X

    NUMERIC

Domain: time

Average value of mean body gyroscope jerk on X axis measured for
*subject* and *activity*

#### tBodyGyroJerk-mean()-Y

    NUMERIC

Domain: time

Average value of mean body gyroscope jerk on Y axis measured for
*subject* and *activity*

#### tBodyGyroJerk-mean()-Z

    NUMERIC

Domain: time

Average value of mean body gyroscope jerk on Z axis measured for
*subject* and *activity*

#### tBodyGyroJerk-std()-X

    NUMERIC

Domain: time

Average value of standard deviation body gyroscope jerk on X axis
measured for *subject* and *activity*

#### tBodyGyroJerk-std()-Y

    NUMERIC

Domain: time

Average value of standard deviation body gyroscope jerk on Y axis
measured for *subject* and *activity*

#### tBodyGyroJerk-std()-Z

    NUMERIC

Domain: time

Average value of standard deviation body gyroscope jerk on Z axis
measured for *subject* and *activity*

#### tBodyAccMag-mean()

    NUMERIC

Domain: time

Average value of mean body acceleration magnitude measured for *subject*
and *activity*

#### tBodyAccMag-std()

    NUMERIC

Domain: time

Average value of standar deviation of body acceleration magnitude
measured for *subject* and *activity*

#### tGravityAccMag-mean()

    NUMERIC

Domain: time

Average value of mean gravity acceleration magnitude measured for
*subject* and *activity*

#### tGravityAccMag-std()

    NUMERIC

Domain: time

Average value of standard deviation of gravity acceleration magnitude
measured for *subject* and *activity*

#### tBodyAccJerkMag-mean()

    NUMERIC

Domain: time

Average value of mean body acceleration jerk magnitude measured for
*subject* and *activity*

#### tBodyAccJerkMag-std()

    NUMERIC

Domain: time

Average value of standard deviation of body acceleration jerk magnitude
measured for *subject* and *activity*

#### tBodyGyroMag-mean()

    NUMERIC

Domain: time

Average value of mean body gyroscope magnitude measured for *subject*
and *activity*

#### tBodyGyroMag-std()

    NUMERIC

Domain: time

Average value of standard deviation of body gyroscope magnitude measured
for *subject* and *activity*

#### tBodyGyroJerkMag-mean()

    NUMERIC

Domain: time

Average value of mean body gyroscope jerk magnitude measured for
*subject* and *activity*

#### tBodyGyroJerkMag-std()

    NUMERIC

Domain: time

Average value of standard deviation of body gyroscope jerk magnitude
measured for *subject* and *activity*

#### fBodyAcc-mean()-X

    NUMERIC

Domain: frequency

Average value of mean body acceleration on X axis measured for *subject*
and *activity*

#### fBodyAcc-mean()-Y

    NUMERIC

Domain: frequency

Average value of mean body acceleration on Y axis measured for *subject*
and *activity*

#### fBodyAcc-mean()-Z

    NUMERIC

Domain: frequency

Average value of mean body acceleration on Z axis measured for *subject*
and *activity*

#### fBodyAcc-std()-X

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration on X axis
measured for *subject* and *activity*

#### fBodyAcc-std()-Y

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration on Y axis
measured for *subject* and *activity*

#### fBodyAcc-std()-Z

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration on Z axis
measured for *subject* and *activity*

#### fBodyAccJerk-mean()-X

    NUMERIC

Domain: frequency

Average value of mean body acceleration jerk on X axis measured for
*subject* and *activity*

#### fBodyAccJerk-mean()-Y

    NUMERIC

Domain: frequency

Average value of mean body acceleration jerk on Y axis measured for
*subject* and *activity*

#### fBodyAccJerk-mean()-Z

    NUMERIC

Domain: frequency

Average value of mean body acceleration jerk on Z axis measured for
*subject* and *activity*

#### fBodyAccJerk-std()-X

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration jerk on X axis
measured for *subject* and *activity*

#### fBodyAccJerk-std()-Y

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration jerk on Y axis
measured for *subject* and *activity*

#### fBodyAccJerk-std()-Z

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration jerk on Z axis
measured for *subject* and *activity*

#### fBodyGyro-mean()-X

    NUMERIC

Domain: frequency

Average value of mean body gyroscope on X axis measured for *subject*
and *activity*

#### fBodyGyro-mean()-Y

    NUMERIC

Domain: frequency

Average value of mean body gyroscope on Y axis measured for *subject*
and *activity*

#### fBodyGyro-mean()-Z

    NUMERIC

Domain: frequency

Average value of mean body gyroscope on Z axis measured for *subject*
and *activity*

#### fBodyGyro-std()-X

    NUMERIC

Domain: frequency

Average value of standard deviation of body gyroscope on X axis measured
for *subject* and *activity*

#### fBodyGyro-std()-Y

    NUMERIC

Domain: frequency

Average value of standard deviation of body gyroscope on Y axis measured
for *subject* and *activity*

#### fBodyGyro-std()-Z

    NUMERIC

Domain: frequency

Average value of standard deviation of body gyroscope on Z axis measured
for *subject* and *activity*

#### fBodyAccMag-mean()

    NUMERIC

Domain: frequency

Average value of mean body acceleration magnitude measured for *subject*
and *activity*

#### fBodyAccMag-std()

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration magnitude
measured for *subject* and *activity*

#### fBodyBodyAccJerkMag-mean()

    NUMERIC

Domain: frequency

Average value of mean body acceleration jerk magnitude measured for
*subject* and *activity*

#### fBodyBodyAccJerkMag-std()

    NUMERIC

Domain: frequency

Average value of standard deviation of body acceleration jerk magnitude
measured for *subject* and *activity*

#### fBodyBodyGyroMag-mean()

    NUMERIC

Domain: frequency

Average value of mean body gyroscope magnitude measured for *subject*
and *activity*

#### fBodyBodyGyroMag-std()

    NUMERIC

Domain: frequency

Average value of standard deviation of body gyroscope magnitude measured
for *subject* and *activity*

#### fBodyBodyGyroJerkMag-mean()

    NUMERIC

Domain: frequency

Average value of mean body gyroscope jerk magnitude measured for
*subject* and *activity*

#### fBodyBodyGyroJerkMag-std()

    NUMERIC

Domain: frequency

Average value of standard deviation of body gyroscope jerk magnitude
measured for *subject* and *activity*
