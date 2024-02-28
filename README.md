# 120-YEARS-OF-OLYMPIC-DATA-ANALYSIS
I conducted a comprehensive case study on a dataset that contained information about all Olympic games played from Athens 1896 to Rio 2016. The dataset includes two main tables: olympics_history and noc_regions.

Dataset Information
Dataset Source: Kaggle - 120 Years of Olympic History (Athletes and Results)
Tables:
olympics_history: Individual athlete information in Olympic events.
noc_regions: National Olympics participant and their regions.
Dataset Overview
athlete_events.csv:

Total Rows: 271117
Total Columns: 15
Each row corresponds to an individual athlete competing in an Olympic event.
Column	Description
ID	Unique number for each athlete
Name	Athlete's name
Sex	M or F
Age	Integer
Height	In centimeters
Weight	In kilograms
Team	Team name
NOC	National Olympic Committee 3-letter code
Games	Year and season
Year	Integer
Season	Summer or Winter
City	Host city
Sport	Sport
Event	Event
Medal	Gold, Silver, Bronze, or NA

noc_regions:

Total Rows: 231

Total Columns: 3

Column	Description
NOC	National Olympic Committee 3-letter code
Region	Region name
Notes	Additional information about the region
23 Questions Explored
From the dataset, I explored the following 23 questions utilizing PostgreSQL:

1: count the number of records in noc_regions table.
2: count the number of records in athlete_event.
3: Total number of athlete by NOC.
4: total number of male and female.
5: average age of athlete participated by NOC.
6: Total number of medal won by each NOC.
7: maximun medal won by which NOC.
8: Top 10 NOC's with most medal.
9: Number of athlete who have won atleast on.
10:Number of athletes who have participated in both winter.
11:Number of athletes who have won medal in both individual.
12:Number  of athlete who have won medal in multiple sports by noc.
13:Average height and weight of athlete who have won medal by NOC.
14:Number of athletes who have won medal in team events by NOC.
15:Countries with athlete over ceritain height.
16:Name and Id of athlete who participated in both the summer and winter.
17:Countries with the highest number of female athlete.
18:Countries with the highest number of female athlete.
19:Countries with the most medal in a single olympics.
20:Countries with the most medal in each lympic year.
21:Athlete who won meal in all the olympic they participated in.
22:Countries with athlete oveer a certain height.
23:Athletes who the most medals in the same event in consecutive olympic.
