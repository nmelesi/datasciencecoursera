
# run_analysis.R

## Variables that contain file's paths

### Common Root Folder
  *folder -> Contains the path to the root folder where all files are stored "UCI HAR Dataset/"
  
#### Files path with Root Folder

  *Test_Data -> Contains the path to the test DB  " paste(folder,"test/X_test.txt", sep = "") "
  
  *Test_Activities -> Contains the path to the test activities DB " paste(folder,"test/y_test.txt", sep = ""  ) "
  
  *Train_Data -> Contains the path to the Train DB  " paste(folder,"train/X_train.txt", sep = "" ) "
  
  *Train_Activities -> Contains the path to the train activities DB " paste(folder,"train/y_train.txt", sep = "" ) "
  
  *Column_Names -> Contains the path to the file with the column headers " paste(folder,"features.txt", sep = "") "
  
  *Test_Sub -> Contains the path to the test's subjects DB  " paste(folder,"test/subject_test.txt", sep = "") "
  
  *Train_Sub -> Contains the path to the test's subjects DB " paste(folder,"train/subject_train.txt", sep = "") "
  
