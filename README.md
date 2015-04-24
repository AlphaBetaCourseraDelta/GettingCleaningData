# Run Analysis


run_analysis.R takes the data from the Human Activity Recognition Using Smartphones Data Set and prepares it for further analysis.
Detailed information about the initial data set can be found [at the UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). But in short, the raw data from the set is composed of multiple files - some containing subject information, some containing unlabeled data, some containing labels, some containing translations between the data in the table and english codes, some containing an even more detailed breakdown of the main data. The data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This script takes the first level of data, puts it all together, makes some of it more descriptive by using English words rather than code numbers, and labels it.  In this analysis, the data is further reduced to just the mean and standard deviation variables (identified by the presence of "mean()" and "std()").  The script finally produces a file called "outputdata.txt" that contains the averages of the selected variables by test subject and activity.

run_analysis.R assumes that the dplyr and plyr packages have been installed.  It also assumes that the folder **UCI HAR Dataset** will be in the working directory.  It should contain the following files and folders:
* features.txt
* activity_labels.txt
* **test**
  * subject_test.txt
  * X_test.txt
  * y_test.txt
* **train**
  * subject_train.txt
  * X_train.txt
  * y_train.txt
  
 Additional comments are in the script itself and more information about the data can be found in the codebook.