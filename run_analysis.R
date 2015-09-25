# Part 1: Read all data files into R
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE,sep ="" )
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE,sep ="" )
x_test<-read.table("./UCI HAR Dataset/test/x_test.txt",header=FALSE,sep ="" )
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE,sep ="" )
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE,sep ="" )
x_train<-read.table("./UCI HAR Dataset/train/x_train.txt",header=FALSE,sep ="" )
features<-read.table("./UCI HAR Dataset/features.txt",header=FALSE,sep ="" )
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE,sep ="" )

# Part 2: Create a master data frame from both data sets (test and train)
#Create a new column called "Treatment" so that analysis can be done on test and train factors
# Set col names including activity labels and subject IDs
# used make.names() to clean up features' names and to comply with R naming rules

test_data<-cbind(Treatment="Test",subject_test,y_test,x_test)
train_data<-cbind(Treatment="Train",subject_train,y_train,x_train)
master_data<-rbind(test_data,train_data)
colnames(master_data)[1:564]<-c("Treatment","Subject_ID","Activity",make.names(features$V2,unique = TRUE))

# Part 3: Create data_set by subsetting only means and std dev columns from master_data for further analysis
library(dplyr)
data_set<-select(master_data,Treatment,Subject_ID,Activity,contains("mean",ignore.case=TRUE),contains("std",ignore.case=TRUE))

# Merge data with activity_labels to replace ID with activity descriptions
data_set<-merge(data_set,activity_labels,by.x = "Activity",by.y = "V1",all = TRUE)
data_set<-select(data_set,Treatment,Subj_ID=Subject_ID,Activity=V2,tBodyAcc.mean...X:fBodyBodyGyroJerkMag.std..)


# Part 4: Group, summarize and arrange to create a tidy_data file
tidy_data<-group_by(data_set,Treatment,Activity,Subj_ID)
tidy_data<-summarise_each(tidy_data,c("mean"))
tidy_data<-arrange(tidy_data,Treatment,Subj_ID,Activity)

# Output file to text file
write.table(tidy_data,file="tidy_data.txt",sep="|",row.names = FALSE)

#Peers. Please use the following command to read the table and view contents
df<-read.table("tidy_data.txt",sep="|",header = TRUE)