  library(dplyr)
  
  # A Root Folder
  
  folder <- "UCI HAR Dataset/"
  
  # B Files Path
  
  Test_Data <- paste(folder,"test/X_test.txt", sep = "")
  Test_Activities <- paste(folder,"test/y_test.txt", sep = ""  )
  Train_Data <- paste(folder,"train/X_train.txt", sep = "" )
  Train_Activities <- paste(folder,"train/y_train.txt", sep = "" )
  Column_Names <- paste(folder,"features.txt", sep = "")
  Test_Sub <- paste(folder,"test/subject_test.txt", sep = "")
  Train_Sub <- paste(folder,"train/subject_train.txt", sep = "")
    
  
  # C Read Files to Data Frame
  
  Test_DF <- read.table(Test_Data)
  Train_DF <- read.table(Train_Data)
  Test_Activities_DF <- read.table(Test_Activities)
  Train_Activities_DF <- read.table(Train_Activities)
  Test_Sub_DF <- read.table(Test_Sub)
  Train_Sub_DF <- read.table(Train_Sub)
  Column_Names_DF <- read.table(Column_Names)
  Column_Names_DF <- Column_Names_DF[,2]
  
  # D Merge Data Set (Addresses point 1 "Merges the training and the test sets to create one data set.")
  
  Merged_DF <- rbind(Test_DF,Train_DF)
  Merged_Activities_DF <- rbind(Test_Activities_DF,Train_Activities_DF)
  Merged_Subjects_DF <- rbind(Test_Sub_DF,Train_Sub_DF)

        # D.a Rename Activities (Addresses point 3 "Uses descriptive activity names to name the activities in the data set")
  
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 1] <- "WALKING"
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 2] <- "WALKING_UPSTAIRS"
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 3] <- "WALKING_DOWNSTAIRS"
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 4] <- "SITTING"
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 5] <- "STANDING"
  Merged_Activities_DF$V1[Merged_Activities_DF$V1 == 6] <- "LAYING"
  
  Merged_DF <- cbind(Merged_Activities_DF,Merged_Subjects_DF,Merged_DF)
  
  # E Rename Columns (Addresses point 4 "Appropriately labels the data set with descriptive variable names.")
  
  Activities <- c("Activity","Subject")
  Activities <- append(Activities,as.character(Column_Names_DF))
  colnames(Merged_DF) <- Activities
 
  # F Select Columns With mean or std (And the Activity Column) (Addresses point 2 "Extracts only the measurements on the mean and standard deviation for each measurement.")
  
  Mean_STD_DF <- Merged_DF[,grepl("Activity|Subject|mean()|std()", colnames(Merged_DF))]
  
  
  # G (Addresses point 5 "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")


  Final_DF <-  Mean_STD_DF %>% group_by(Activity,Subject) %>% summarize_all(funs(mean))
  
  # H Write Txt File 
  
  write.table(Final_DF,file = "My_Tidy_Data_Set.txt",row.names = FALSE)