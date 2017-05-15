
# run_analysis.R

## Variables 

  ### Variable with common Root Folder
  
   -folder -> Contains the path to the root folder where all files are stored "UCI HAR Dataset/"
  
  ### Variables with files' path with Root Folder

   -Test_Data -> Contains the path to the test DB  " paste(folder,"test/X_test.txt", sep = "") "
  
   -Test_Activities -> Contains the path to the test activities DB " paste(folder,"test/y_test.txt", sep = ""  ) "
  
   -Train_Data -> Contains the path to the Train DB  " paste(folder,"train/X_train.txt", sep = "" ) "
  
   -Train_Activities -> Contains the path to the train activities DB " paste(folder,"train/y_train.txt", sep = "" ) "
  
   -Column_Names -> Contains the path to the file with the column headers " paste(folder,"features.txt", sep = "") "
  
   -Test_Sub -> Contains the path to the test's subjects DB  " paste(folder,"test/subject_test.txt", sep = "") "
  
   -Train_Sub -> Contains the path to the test's subjects DB " paste(folder,"train/subject_train.txt", sep = "") "
  
  ### Variables of type data frame that contain the information of the files above

   -Test_DF -> Contains Test DB 
  
   -Train_DF -> Contains Train DB
  
   -Test_Activities_DF -> Contains Test Activities DB
  
   -Train_Activities_DF -> Contains Train Activities DB
  
   -Test_Sub_DF -> Contains Test Subjects DB
  
   -Train_Sub_DF -> Contains Train Subjects DB
  
   -Column_Names_DF -> Contains the Column headers
 
 ### Variables that contain merged DF
 
   -Merged_DF -> Contains the merge by row bind of Test_DF and Train_DF
   
   -Merged_Activities_DF -> Contains the merge by row bind of Test_Activities_DF and Train_Activities_DF
   
   -Merged_Subjects_DF -> Contains the merge by row bind of Test_Sub_DF and Train_Sub_DF 
 
 ### Other Variables  
 
   -Activities -> Contains the list of columns starting with c("Activity","Subject") and appending Column_Names_DF
   
   -Mean_STD_DF -> Data frame that contains point 5 of the assignment
   
   -Final_DF -> Data frame that contains point 2 of the assignment

# The Data

## ID Columns 

  -Activities (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING) 
  -Subjects 1 to 30
  
## Measured Variables

-tBodyAccMeanX
-tBodyAccMeanY
-tBodyAccMeanZ
-tBodyAccStdX
-tBodyAccStdY
-tBodyAccStdZ
-tGravityAccMeanX
-tGravityAccMeanY
-tGravityAccMeanZ
-tGravityAccStdX
-tGravityAccStdY
-tGravityAccStdZ
-tBodyAccJerkMeanX
-tBodyAccJerkMeanY
-tBodyAccJerkMeanZ
-tBodyAccJerkStdX
-tBodyAccJerkStdY
-tBodyAccJerkStdZ
-tBodyGyroMeanX
-tBodyGyroMeanY
-tBodyGyroMeanZ
-tBodyGyroStdX
-tBodyGyroStdY
-tBodyGyroStdZ
-tBodyGyroJerkMeanX
-tBodyGyroJerkMeanY
-tBodyGyroJerkMeanZ
-tBodyGyroJerkStdX
-tBodyGyroJerkStdY
-tBodyGyroJerkStdZ
-tBodyAccMagMean
-tBodyAccMagStd
-tGravityAccMagMean
-tGravityAccMagStd
-tBodyAccJerkMagMean
-tBodyAccJerkMagStd
-tBodyGyroMagMean
-tBodyGyroMagStd
-tBodyGyroJerkMagMean
-tBodyGyroJerkMagStd
-fBodyAccMeanX
-fBodyAccMeanY
-fBodyAccMeanZ
-fBodyAccStdX
-fBodyAccStdY
-fBodyAccStdZ
-fBodyAccMeanFreqX
-fBodyAccMeanFreqY
-fBodyAccMeanFreqZ
-fBodyAccJerkMeanX
-fBodyAccJerkMeanY
-fBodyAccJerkMeanZ
-fBodyAccJerkStdX
-fBodyAccJerkStdY
-fBodyAccJerkStdZ
-fBodyAccJerkMeanFreqX
-fBodyAccJerkMeanFreqY
-fBodyAccJerkMeanFreqZ
-fBodyGyroMeanX
-fBodyGyroMeanY
-fBodyGyroMeanZ
-fBodyGyroStdX
-fBodyGyroStdY
-fBodyGyroStdZ
-fBodyGyroMeanFreqX
-fBodyGyroMeanFreqY
-fBodyGyroMeanFreqZ
-fBodyAccMagMean
-fBodyAccMagStd
-fBodyAccMagMeanFreq
-fBodyBodyAccJerkMagMean
-fBodyBodyAccJerkMagStd
-fBodyBodyAccJerkMagMeanFreq
-fBodyBodyGyroMagMean
-fBodyBodyGyroMagStd
-fBodyBodyGyroMagMeanFreq
-fBodyBodyGyroJerkMagMean
-fBodyBodyGyroJerkMagStd
-fBodyBodyGyroJerkMagMeanFreq
