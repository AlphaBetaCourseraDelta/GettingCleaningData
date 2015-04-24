# Data Dictionary - outputdata.txt
Following is the information for the columns in the outputdata.txt file, for more detailed information about the values, please see the features_info.txt file in the [dataset](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip)


### subjectNumber
Subject ID Number for the tests

### activityDescription
A description for the activity being measured. Possible values are:
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

## Measurements
The remainder of the variables are the average of the values in the original dataset for that subject doing that activity.  The names of the columns indicate:
* whether this is the average of means (average) or of standard deviations (stDev)
* whether it is the time signal (Time) or the Fast Fourier Transform of a time signal (Frequency)
* the measurement
* the axis of measurement when it is applicable
for example, the "stDevTimeGyroscopeYAxis" column is the average of the standard deviations of the time domain signals from the gyroscope on the Y axis.  The table below shows the 10 types of measurements, whether they have both time and FFT, and whether they were measured on multiple dimensions

Measurement | Description | Time or FFT(Frequency)|Multiple Axes
------------|-------------|--------------------|-------------
Accelerometer |signal from the accelerometer due to body movement|Both|yes
AccelerometerJerk|jerk signal from the accelerometer due to body movement|Both|yes
AccelerometerJerkMagnitude|magnitude of the accelerometer jerk signal due to body movement using the Euclidian norm|Both|
AccelerometerMagnitude|magnitude of the accelerometer signal due to body movement calculated by the Euclidian norm|Both|
Gyroscope|signal from the gyroscope due to body movement|Both|yes
GyroscopeJerk|jerk signal fom the gyroscope due to body movement|Time Only|yes
GyroscopeJerkMagnitude|magnitude of the gyroscope jerk signal due to body movement calculated by the Euclidian norm|Both|
GyroscopeMagnitude|magnitude of the gyroscope signal due to body movement calculated by the Euclidian norm|Both|
GravityAccelerometer|signal from the accelerometer due to gravity|Time Only|yes
GravityAccelerometerMagnitude|magnitude of the signal from the accelerometer due to gravity calculated by the Euclidian norm|Time Only

There are a total of 66 measurement columns.