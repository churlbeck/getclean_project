DATA DICTIONARY


subject_id

	A number (from 1 to 30) identifying a participant in the study.

activity

	A phrase denoting one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by each particpant.

The remaining 66 attributes describe the features of each set of measurements.  The measurements describe accelerometer and gyroscope 3-axial raw signals obtained from a cell phone worn on the particpants' bodies.

The features are normalized and bounded within [-1, 1] and then averaged for each participant + activity combination.  Because the dataset represents the mean of either a normalized mean or a normalized standard deviation, no units of measurements are given.

Each feature is composed of the following elements:

 	time - time domain signal, captured at a constant rate of 50 Hz and filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise
	freq - frequency domain signal

	Body - The body motion component of the sensor acceleration signal
	Gravity - The gravitational component of the sensor acceleration signal.  The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
	
	Acc - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
	Gyro - Triaxial Angular velocity from the gyroscope

	Jerk - Jerk signals derived in time from the body linear acceleration and angular velocity	
	Mag - the magnitude of these three-dimensional signals, calculated using the Euclidean norm
	
	mean - Mean value
	std - Standard deviation

	X - the 3-axial signal in the X direction
	Y - the 3-axial signal in the Y direction
	Z - the 3-axial signal in the Z direction

The complete set of variables that were estimated from these signals are:

	time_BodyAcc_mean_X
	time_BodyAcc_mean_Y
	time_BodyAcc_mean_Z
	time_BodyAcc_std_X
	time_BodyAcc_std_Y
	time_BodyAcc_std_Z
	time_GravityAcc_mean_X
	time_GravityAcc_mean_Y
	time_GravityAcc_mean_Z
	time_GravityAcc_std_X
	time_GravityAcc_std_Y
	time_GravityAcc_std_Z
	time_BodyAccJerk_mean_X
	time_BodyAccJerk_mean_Y
	time_BodyAccJerk_mean_Z
	time_BodyAccJerk_std_X
	time_BodyAccJerk_std_Y
	time_BodyAccJerk_std_Z
	time_BodyGyro_mean_X
	time_BodyGyro_mean_Y
	time_BodyGyro_mean_Z
	time_BodyGyro_std_X
	time_BodyGyro_std_Y
	time_BodyGyro_std_Z
	time_BodyGyroJerk_mean_X
	time_BodyGyroJerk_mean_Y
	time_BodyGyroJerk_mean_Z
	time_BodyGyroJerk_std_X
	time_BodyGyroJerk_std_Y
	time_BodyGyroJerk_std_Z
	time_BodyAccMag_mean
	time_BodyAccMag_std
	time_GravityAccMag_mean
	time_GravityAccMag_std
	time_BodyAccJerkMag_mean
	time_BodyAccJerkMag_std
	time_BodyGyroMag_mean
	time_BodyGyroMag_std
	time_BodyGyroJerkMag_mean
	time_BodyGyroJerkMag_std
	freq_BodyAcc_mean_X
	freq_BodyAcc_mean_Y
	freq_BodyAcc_mean_Z
	freq_BodyAcc_std_X
	freq_BodyAcc_std_Y
	freq_BodyAcc_std_Z
	freq_BodyAccJerk_mean_X
	freq_BodyAccJerk_mean_Y
	freq_BodyAccJerk_mean_Z
	freq_BodyAccJerk_std_X
	freq_BodyAccJerk_std_Y
	freq_BodyAccJerk_std_Z
	freq_BodyGyro_mean_X
	freq_BodyGyro_mean_Y
	freq_BodyGyro_mean_Z
	freq_BodyGyro_std_X
	freq_BodyGyro_std_Y
	freq_BodyGyro_std_Z
	freq_BodyAccMag_mean
	freq_BodyAccMag_std
	freq_BodyBodyAccJerkMag_mean
	freq_BodyBodyAccJerkMag_std
	freq_BodyBodyGyroMag_mean
	freq_BodyBodyGyroMag_std
	freq_BodyBodyGyroJerkMag_mean
	freq_BodyBodyGyroJerkMag_std
