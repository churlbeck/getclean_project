# load required libraries
require(data.table)
require(plyr)
require(dplyr)

####################################################################
# Acquire the input data for processing
####################################################################

# check if the data is already available
if (!dir.exists("UCI HAR Dataset"))
  {

  # if not, then check if the archive exists
  dataFile <- "getdata-projectfiles-UCI HAR Dataset.zip"
  
  if (!file.exists(dataFile))
    {
    # if not, then download it from the internet
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    
    print(c("downloading ", fileURL))
    download.file(fileURL, dataFile)
    }
  
  # unzip the archive
  print(c("unzipping ", dataFile))
  unzip(dataFile)
  }

# set the working directory for easier access to the extracted files
setwd("./UCI HAR Dataset")

####################################################################
# Load and combine the subject data
####################################################################

# read the subject files
subject_train <-  fread("./train/subject_train.txt")
subject_test <- fread("./test/subject_test.txt")

# combine the training and testing data
subject <- rbind(subject_train, subject_test)

# name the column
colnames(subject) <- "subject_id"

####################################################################
# Load and combine the y-data
####################################################################

# read the y-files and corresponding activity labels
y_train <- fread("./train/y_train.txt")
y_test <- fread("./test/y_test.txt")
activity_labels <- fread("./activity_labels.txt")

# combine the training and testing data
y <- rbind(y_train, y_test)

# enhance the y-data with meaningful names taken from activity_labels; use "join"
# because it maintains the original sort order of the y dataset
y <- join(y, activity_labels)

# name the columns and drop the activity_id column
colnames(y) <- c("activity_id", "activity")
y$activity_id <- NULL

####################################################################
# Load and combine the x-data
####################################################################

# load the names of all features (500+ expected)
all_features <- fread("features.txt", select = 2)

# create an integer vector to logically indicate which features have "mean()" or "std()"
# in their name; only these features will be targetted for extraction
features_select <- unlist(lapply(all_features, function(x) { grep("mean\\(\\)|std\\(\\)", x) }))

# create a character vector of the names of only the feature we are interested in;
# to be used as column names
features <- unlist(all_features[features_select])

# beautify the column names (not strictly necessary but "recommended");
# remove "()" and replace dashes with underscores 
features <- gsub("\\(\\)", "", features)
features <- gsub("-", "_", features)

# load the x data for train and test cases, selecting only the features of interest, and
# using the column names previously defined
x_train <- fread("./train/X_train.txt", col.names = features, select = features_select)
x_test <- fread("./test/X_test.txt", col.names = features, select = features_select)

# combine the training and testing data
x <- rbind(x_train, x_test)

####################################################################
# Combine all of the data together into one master table
####################################################################

master <- cbind(subject, y, x)

####################################################################
# Create a summarized version of the master table and write it
# to disk
####################################################################

master_summary <- group_by(master, subject_id, activity) %>% summarise_each("mean")

write.table(master_summary, file = "master_summary.txt", row.name = FALSE)

####################################################################
# Cleanup the environment (just to be polite)
####################################################################
rm(x, y, subject, x_test, x_train, y_test, y_train, subject_test, subject_train)
rm(activity_labels, all_features, features, features_select)
setwd("..")