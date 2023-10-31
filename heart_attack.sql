CREATE DATABASE Property;
USE Property;
SHOW DATABASES;
SELECT DATABASE();
SHOW TABLES;
DESC heart_attack;
SELECT *
FROM heart_attack;
# How many patients have healthy diet and minimum 4 exercise hours per week? 
SELECT COUNT(*) 
FROM heart_attack 
WHERE Diet = 'healthy' AND Exercise_Hours_Per_Week >= 4;

# Details of the patitents having unhealthy diet and country they are from? 
SELECT `Patient ID`, Diet, Country 
FROM heart_attack WHERE Diet = 'unhealthy'
 ORDER BY Country;
 
 # Mention how many heart attack patients are from each country?
 SELECT Country, COUNT(*) as Heart_Attack_Patients
FROM heart_attack
GROUP BY Country ORDER BY Country;

# Which country has the highest number of patients? 
SELECT Country, COUNT('Patient ID') AS NumberOfPatients 
FROM heart_attack 
GROUP BY Country 
ORDER BY NumberOfPatients DESC 
LIMIT 1;

# Country with the least amount of patients? 
SELECT Country, COUNT(`Patient ID`) as Number_of_Patients 
FROM heart_attack 
GROUP BY Country 
ORDER BY Number_of_Patients ASC 
LIMIT 1;

# List down the patients that have no apparent heart attack risk but indulge in smoking and have less than 2 physical activity days per week. 
 SELECT * 
FROM heart_attack 
WHERE Smoking = 1 
AND Physical_Activity_Days_Per_Week < 2 
AND Heart_Attack_Risk = 'No' ORDER BY Age DESC;

# List ten patients that have highest level of tryglycerides and are prone to heart attack risk. 
SELECT * 
FROM heart_attack 
WHERE Heart_Attack_Risk = 1 
ORDER BY Triglycerides DESC 
LIMIT 10;

# Calculate the total hours spent by a patient, sleeping and exercising. 
SELECT `Patient ID`, (Sleep_Hours_Per_Day * 7 + Exercise_Hours_Per_Week) AS Total_Hours
FROM heart_attack;

# List down all the patients from southern hemisphere. 
SELECT * FROM heart_attack 
WHERE Hemisphere = 'Southern Hemisphere';

# List down all the patients from northern hemisphere.
SELECT * FROM heart_attack 
WHERE Hemisphere = 'Northern Hemisphere';

# List down all the patients with smoking habits corresponding to their tryglycerides being more than 300 mg/dl.  
SELECT *
FROM heart_attack
WHERE Smoking = 1 AND Triglycerides > 300 ORDER BY Age DESC;

# Write down all the male patients above the age of 60 along with their diet being unhealthy.
 SELECT * 
FROM heart_attack 
WHERE Age > 60 
AND Sex = 'Male' 
AND Diet = 'Unhealthy' ORDER BY Cholesterol DESC;

# Write down all the female patients above the age of 60 along with their diet being unhealthy.
SELECT * 
FROM heart_attack 
WHERE Age > 60 
AND Sex = 'Female' 
AND Diet = 'Unhealthy' ORDER BY Cholesterol;