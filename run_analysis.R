run_analysis <- function(){
  ## Get the features.txt files, to create column names.
  featureList <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
  featureVector <-as.vector(featureList[,2])
  
  ## Get the data for the project, add non-descriptive column names.
  testSubjects <- read.csv("UCI HAR Dataset/test/subject_test.txt", col.names="subjectNumber",header=FALSE)
  testData <- read.csv("UCI HAR Dataset/test/X_test.txt",sep="", col.names=featureVector,header=FALSE)
  testActivity <- read.csv("UCI HAR Dataset/test/y_test.txt", col.names="activityNumber",header=FALSE)
  trainSubjects <- read.csv("UCI HAR Dataset/train/subject_train.txt", col.names="subjectNumber",header=FALSE)
  trainData <- read.csv("UCI HAR Dataset/train/X_train.txt",sep="", col.names=featureVector,header=FALSE)
  trainActivity <- read.csv("UCI HAR Dataset/train/y_train.txt", col.names="activityNumber",header=FALSE)
  
  ## Pull the data for #3 - don't do it yet, just pull the data.
  activityDefinition <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="",header=FALSE)
  
  ## add id numbers to the data for merging them later.
  testSubjects$idnum <- seq.int(nrow(testSubjects))
  testData$idnum <- seq.int(nrow(testData))
  testActivity$idnum <- seq.int(nrow(testActivity))
  
  trainSubjects$idnum <- seq.int(nrow(trainSubjects))+2946
  trainData$idnum <- seq.int(nrow(trainData))+2946
  trainActivity$idnum <- seq.int(nrow(trainActivity))+2946

  testList <- list(testSubjects,testData,testActivity)
  trainList <- list(trainSubjects,trainData,trainActivity)
  
  ## Do #1. Merge training and test sets into giant data set. 
  testData <- join_all(testList)
  trainData<- join_all(trainList)
  allData<-rbind(testData,trainData)
  
  ## Do #2, remove all columns that are not ".mean()" or ".std()"
  ## I am removing .meanFreq() columns, according to my understanding of #2.
  cleanTidyData<-select(allData, subjectNumber, contains("mean"),contains("std"), activityNumber)
  
  ## Do #3, change the activity code (1-6) for the descriptive Activity Name (e.g., "WALKING")
  cleanTidyData<-mutate(cleanTidyData, activityDescription=as.character(activityDefinition[activityNumber,2]))
  cleanTidyData<-select(cleanTidyData,-activityNumber)
  
  ## Do #4, change the variable names to be more descriptive.
  ## I'm using camelCase because I find long lower case names to be unintelligible.
  ## Mostly, it's just a lot of substitutions
  descriptiveNames <- names(cleanTidyData)
  descriptiveNames <- lapply(descriptiveNames,
                        function(x){
                          if(grepl("mean",x)){
                            x<-paste("average",x,sep="");
                            gsub("mean","",x)}else if (grepl("std",x)){
                              
                              x<-paste("stDev",x,sep="");
                              gsub("std","",x)}
                          else{x}
                        }
  )
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("fBodyBody","Frequency",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("tBody","Time",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("fBody","Frequency",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("fBodyBody","Frequency",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("Acc","Accelerometer",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("Gyro","Gyroscope",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("Mag","Magnitude",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("....X","XAxis",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("....Y","YAxis",x)})
  descriptiveNames <- lapply(descriptiveNames, function(x){gsub("....Z","ZAxis",x)})
  
  names(cleanTidyData) <- descriptiveNames
  
  ## Do #5 - the data is grouped, the averages are found
  ## the result is written to a file called "outputdata.csv"
  smallTidyData <- cleanTidyData %>% group_by(subjectNumber,activityDescription) %>% summarise_each(funs(mean))
  write.table(smallTidyData,"outputdata.txt", row.name=FALSE)
}