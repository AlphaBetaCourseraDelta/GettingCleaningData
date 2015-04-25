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

There are a total of 66 measurement columns.  They're as follows:
**averageTimeAccelerometerXAxis**
average of the means of the time signal from the accelerometer due to body movement on the X axis
**averageTimeAccelerometerYAxis**
average of the means of the time signal from the accelerometer due to body movement on the Y axis
**averageTimeAccelerometerZAxis**
average of the means of the time signal from the accelerometer due to body movement on the Z axis
**averageTimeGravityAccelerometerXAxis**
average of the means of the time signal from the accelerometer due to gravity on the X axis
**averageTimeGravityAccelerometerYAxis**
average of the means of the time signal from the accelerometer due to gravity on the Y axis
**averageTimeGravityAccelerometerZAxis**
average of the means of the time signal from the accelerometer due to gravity on the Z axis
**averageTimeAccelerometerJerkXAxis**
average of the means of the jerk signal from the accelerometer due to body movement on the X axis
**averageTimeAccelerometerJerkYAxis**
average of the means of the jerk signal from the accelerometer due to body movement on the Y axis
**averageTimeAccelerometerJerkZAxis**
average of the means of the jerk signal from the accelerometer due to body movement on the Z axis
**averageTimeGyroscopeXAxis**
average of the means of the time signal from the gyroscope due to body movement on the X axis
**averageTimeGyroscopeYAxis**
average of the means of the time signal from the gyroscope due to body movement on the Y axis
**averageTimeGyroscopeZAxis**
average of the means of the time signal from the gyroscope due to body movement on the Z axis
**averageTimeGyroscopeJerkXAxis**
average of the means of the jerk signal fom the gyroscope due to body movement on the X axis
**averageTimeGyroscopeJerkYAxis**
average of the means of the jerk signal fom the gyroscope due to body movement on the Y axis
**averageTimeGyroscopeJerkZAxis**
average of the means of the jerk signal fom the gyroscope due to body movement on the Z axis
**averageTimeAccelerometerMagnitude**
average of the means of the magnitude of the accelerometer signal due to body movement calculated by the Euclidian norm
**averageTimeGravityAccelerometerMagnitude**
average of the means of the magnitude of the signal from the accelerometer due to gravity calculated by the Euclidian norm
**averageTimeAccelerometerJerkMagnitude**
average of the means of the magnitude of the accelerometer jerk signal due to body movement using the Euclidian norm
**averageTimeGyroscopeMagnitude**
average of the means of the magnitude of the gyroscope signal due to body movement calculated by the Euclidian norm
**averageTimeGyroscopeJerkMagnitude**
average of the means of the magnitude of the gyroscope jerk signal due to body movement calculated by the Euclidian norm
**averageFrequencyAccelerometerXAxis**
average of the means of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the X axis
**averageFrequencyAccelerometerYAxis**
average of the means of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the Y axis
**averageFrequencyAccelerometerZAxis**
average of the means of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the Z axis
**averageFrequencyAccelerometerJerkXAxis**
average of the means of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the X axis
**averageFrequencyAccelerometerJerkYAxis**
average of the means of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the Y axis
**averageFrequencyAccelerometerJerkZAxis**
average of the means of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the Z axis
**averageFrequencyGyroscopeXAxis**
average of the means of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the X axis
**averageFrequencyGyroscopeYAxis**
average of the means of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the Y axis
**averageFrequencyGyroscopeZAxis**
average of the means of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the Z axis
**averageFrequencyAccelerometerMagnitude**
average of the means of the Fast Fourier Transform of the magnitude of the accelerometer signal due to body movement calculated by the Euclidian norm
**averageFrequencyAccelerometerJerkMagnitude**
average of the means of the Fast Fourier Transform of the magnitude of the accelerometer jerk signal due to body movement using the Euclidian norm
**averageFrequencyGyroscopeMagnitude**
average of the means of the Fast Fourier Transform of the magnitude of the gyroscope signal due to body movement calculated by the Euclidian norm
**averageFrequencyGyroscopeJerkMagnitude**
average of the means of the Fast Fourier Transform of the magnitude of the gyroscope jerk signal due to body movement calculated by the Euclidian norm
**stDevTimeAccelerometerXAxis**
average of the standard deviations of the time signal from the accelerometer due to body movement on the X axis
**stDevTimeAccelerometerYAxis**
average of the standard deviations of the time signal from the accelerometer due to body movement on the Y axis
**stDevTimeAccelerometerZAxis**
average of the standard deviations of the time signal from the accelerometer due to body movement on the Z axis
**stDevTimeGravityAccelerometerXAxis**
average of the standard deviations of the time signal from the accelerometer due to gravity on the X axis
**stDevTimeGravityAccelerometerYAxis**
average of the standard deviations of the time signal from the accelerometer due to gravity on the Y axis
**stDevTimeGravityAccelerometerZAxis**
average of the standard deviations of the time signal from the accelerometer due to gravity on the Z axis
**stDevTimeAccelerometerJerkXAxis**
average of the standard deviations of the jerk signal from the accelerometer due to body movement on the X axis
**stDevTimeAccelerometerJerkYAxis**
average of the standard deviations of the jerk signal from the accelerometer due to body movement on the Y axis
**stDevTimeAccelerometerJerkZAxis**
average of the standard deviations of the jerk signal from the accelerometer due to body movement on the Z axis
**stDevTimeGyroscopeXAxis**
average of the standard deviations of the time signal from the gyroscope due to body movement on the X axis
**stDevTimeGyroscopeYAxis**
average of the standard deviations of the time signal from the gyroscope due to body movement on the Y axis
**stDevTimeGyroscopeZAxis**
average of the standard deviations of the time signal from the gyroscope due to body movement on the Z axis
**stDevTimeGyroscopeJerkXAxis**
average of the standard deviations of the jerk signal fom the gyroscope due to body movement on the X axis
**stDevTimeGyroscopeJerkYAxis**
average of the standard deviations of the jerk signal fom the gyroscope due to body movement on the Y axis
**stDevTimeGyroscopeJerkZAxis**
average of the standard deviations of the jerk signal fom the gyroscope due to body movement on the Z axis
**stDevTimeAccelerometerMagnitude**
average of the standard deviations of the magnitude of the accelerometer signal due to body movement calculated by the Euclidian norm
**stDevTimeGravityAccelerometerMagnitude**
average of the standard deviations of the magnitude of the signal from the accelerometer due to gravity calculated by the Euclidian norm
**stDevTimeAccelerometerJerkMagnitude**
average of the standard deviations of the magnitude of the accelerometer jerk signal due to body movement using the Euclidian norm
**stDevTimeGyroscopeMagnitude**
average of the standard deviations of the magnitude of the gyroscope signal due to body movement calculated by the Euclidian norm
**stDevTimeGyroscopeJerkMagnitude**
average of the standard deviations of the magnitude of the gyroscope jerk signal due to body movement calculated by the Euclidian norm
**stDevFrequencyAccelerometerXAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the X axis
**stDevFrequencyAccelerometerYAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the Y axis
**stDevFrequencyAccelerometerZAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the accelerometer due to body movement on the Z axis
**stDevFrequencyAccelerometerJerkXAxis**
average of the standard deviations of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the X axis
**stDevFrequencyAccelerometerJerkYAxis**
average of the standard deviations of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the Y axis
**stDevFrequencyAccelerometerJerkZAxis**
average of the standard deviations of the Fast Fourier Transform of the jerk signal from the accelerometer due to body movement on the Z axis
**stDevFrequencyGyroscopeXAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the X axis
**stDevFrequencyGyroscopeYAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the Y axis
**stDevFrequencyGyroscopeZAxis**
average of the standard deviations of the Fast Fourier Transform of the time signal from the gyroscope due to body movement on the Z axis
**stDevFrequencyAccelerometerMagnitude**
average of the standard deviations of the Fast Fourier Transform of the magnitude of the accelerometer signal due to body movement calculated by the Euclidian norm
**stDevFrequencyAccelerometerJerkMagnitude**
average of the standard deviations of the Fast Fourier Transform of the magnitude of the accelerometer jerk signal due to body movement using the Euclidian norm
**stDevFrequencyGyroscopeMagnitude**
average of the standard deviations of the Fast Fourier Transform of the magnitude of the gyroscope signal due to body movement calculated by the Euclidian norm
**stDevFrequencyGyroscopeJerkMagnitude**
average of the standard deviations of the Fast Fourier Transform of the magnitude of the gyroscope jerk signal due to body movement calculated by the Euclidian norm

