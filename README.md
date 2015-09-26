getdata-032 Course Project on Tidy Data
=========
This repository (repo) contains step-by-step instructions to process experimental raw data from Samsung smart phones which can be download as zip file [link - 61MB](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). For more information on the experiment and the data set, please visit the [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The repo contains the following two files:

1. run_analysis.R
2. CodeBook.md

## Understanding run_analysis.R
The R script contains all the required code to process the raw data files and output a tidy data set with average of each variable for each activity and each subject. IMPORTANT: It is assumed that required raw data is already unzipped into the working directory of R. The script has four main sections

1. Read all raw files into R
2. Combine both 'test' and 'train' data sets into one master data set and cleanup variable names
3. Subset the master data set so that only variables pertaining to "mean" or "std" are selected (86 out of 561) for further processing.
4. Group and summarize variables by averaging each variable for each activity and subject. A tidy data set called 'tidy-data.txt' is written to working directory to be uploaded for peer evaluation.

## Understanding the CodeBook.md
The code book contains brief explanation of the variables in the raw data, names of each variable from the tidy data set (summarized sub set of raw data), their position, and values or explantion.