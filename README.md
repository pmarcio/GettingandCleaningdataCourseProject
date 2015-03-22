### Getting and Cleaning Data: Course Project

This repo has the files:

1) tidydata.txt - The tidy data for the Course Project

2) Readme.md - This file

3) run_analysis.R - The R script that generates the file tidydata.txt, processing the file "getdata-projectfiles-UCI HAR Dataset.zip". This file can be get from "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip".

4) Codebook.md - Information about the variables provided in tidydata.txt

## Instructions

1) The file "getdata-projectfiles-UCI HAR Dataset.zip" or"UCI HAR Dataset.zip" must be extracted and the script should be run inside the directory "UCI HAR Dataset" created in the process.

## What it does

After merging testing and training, labels are added and only columns that have to do with mean and standard deviation are kept.

Lastly, the script will create a tidy data set containing the means of all the columns per test subject and per activity.

This tidy dataset will be written to a file called tidydata.txt, which can also be found in this repository.

## Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.