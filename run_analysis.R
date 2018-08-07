library(reshape2)

## Clearing workspace
rm(list=ls())

## Loading activity label definitions
labeldata<-readLines(con="activity_labels.txt")
activitylabels<-array(sapply(labeldata,function(x){var<-strsplit(x," ");var[[1]][2]}))

## Loading feature list
featurelist <- read.table("features.txt",header=FALSE,colClasses = "character")

## Obtaining indexes of columns to keep from datasets 
## (only measurements on mean and standard deviation for each measurement)
keepcolumns<-grep("mean\\(|std",featurelist$V2)

## Loading training data
xtrain <- read.table("train/X_train.txt",header=FALSE)
## Keeping only required columns
xtrain <- xtrain[,keepcolumns]
## Assigning featurelist as headers to train data
names(xtrain) <- featurelist$V2[keepcolumns]

## Loading training subject identifiers
subjecttrain<-read.table("train/subject_train.txt",header=FALSE)

## Loading activity labels for training data
ytrain <- read.table("train/y_train.txt",header=FALSE)
trainactivitylabels<-sapply(ytrain$V1,function(x){activitylabels[x]})

## Generating full train data frame
trainframe<-cbind(data.frame("subject" = subjecttrain$V1,"activity" = trainactivitylabels),xtrain)

## Loading test data
xtest <- read.table("test/X_test.txt",header=FALSE)
## Keeping only required columns
xtest <- xtest[,keepcolumns]
## Assigning featurelist as headers to test data
names(xtest) <- featurelist$V2[keepcolumns]

## Loading test subject identifiers
subjecttest<-read.table("test/subject_test.txt",header=FALSE)

## Loading activity labels for test data
ytest <- read.table("test/y_test.txt",header=FALSE)
testactivitylabels<-sapply(ytest$V1,function(x){activitylabels[x]})

## Generating full test data frame
testframe<-cbind(data.frame("subject" = subjecttest$V1,"activity" = testactivitylabels),xtest)

## Merging training and test data sets
dataframe <- rbind(trainframe,testframe)

## Removing unused object to free up memory
rm(list = c("testframe","trainframe","subjecttest","subjecttrain","featurelist","xtest","xtrain","ytest","ytrain"))

## Melting dataframe to generate tidy dataframe
meltframe<-melt(dataframe,id=c("subject","activity"),measure.vars = names(dataframe)[3:length(names(dataframe))])

## Generating the new tidy frame
meansframe<-dcast(meltframe, subject+activity ~ variable,fun.aggregate = mean)