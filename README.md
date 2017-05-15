# The code is divided in 8 segments from A to H, there are comments in the code specifying each segment and its function.


  ### A Sets the root folder on which the files are stored to a variable
   
  ### B Set the path and name for each file to a respective variable, using the root's folder variable
  
  ### C Reads all Files to their respective Data Frames
 
  ### D Merges the Dataframes (Addresses point 1 "Merges the training and the test sets to create one data set.")
  
  #### -First -> Mereges the Test_DF and Train_D by row bind into Merged_DF
  #### -Second -> Merges the Test_Activities_DF and Train_Activities_DF by row bind into Merged_Activities_DF
  #### -Third -> Merges the Test_Sub_DF and Train_Sub_DF by row bind into Merged_Subjects_DF
 
  ### D.a Renames all the Activities by their description  (Addresses point 3 "Uses descriptive activity names to name the activities in the data set")
  
  ###  Finally -> Merges by column bind the Merged_Activities_DF and Merged_Subjects_DF and Merged_DF into  Merged_DF 
  
  ### E Rename Columns (Addresses point 4 "Appropriately labels the data set with descriptive variable names.")
  
  #### -First -> Creates a vector containing "Activity" and "Subject"
  #### -Second -> Appends all the column names stored in Column_Names_DF
  #### -Third -> Renames all the column names of the DF Merged_DF
 
  ### F Selects Columns With mean or std (And the Activity and Subject Column) (Addresses point 2 "Extracts only the measurements on the mean and standard deviation for each measurement.")
  

  ### G Creates a new DF (Addresses point 5 "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")

  #### -Groups by activity and subject and summarize using mean for each column, the result is stored in Final_DF variable
  
  ### H Writes a Txt File containing the Final_DF DF named My_Tidy_Data_Set.txt
