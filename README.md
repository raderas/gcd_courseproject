# Getting and Cleaning Data Course Project
This repo contains the scriptfile run_analysis.R which takes the data from Human activity recognition through smartphones dataset avaliable in <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

The data is originally presented in a series of files separated in two datasets for train subjects and test subjects, with separate files for subject identification and activity labelling for each dataset.

The scriptfile **run_analysis.R** generates a single dataset from train and test data, merges the datasets with teir corresponding subject identifier and activity label and reduces the number of variables only to those that represent a mean or std function. Finally, it generates a new dataset wich detail the mean calculations of every variable for each subject and activity wich is stored in the file **tidydataset.txt**

It also includes the file **CodeBook.md** which is a markdown file that details the steps followed to perform the transformations over the original dataset, as well as a description of everycolumn in the resulting dataset to aid in further analysis.
