#1 View of noc_regions table
select * from noc_regions;

#2 view of athlete_events table
select * from athlete_events;

#3 count the number of records in noc_regions table
select count(*) from noc_regions;

#4 count the number of records in athlete_event table
select count(*) from athlete_events;

#5 Total number of athlete by NOC
select NOC,count(distinct ID) as Total_athlete from athlete_events group by NOC;

#6 total number of male and female
select NOC,sex,count(distinct ID) as total_athlete from athlete_events group by NOC,sex;

#7 average age of athlete participated by NOC
select NOC,avg(age) as average_age from athlete_events group by NOC;

#8 Total number of medal won by each NOC
select NOC,count(medal) as total_medal from athlete_events where medal is not null group by NOC;

#9 maximun medal won by which NOC
select NOC,count(medal) as total_medalby_NOC from athlete_events where medal is not null group by NOC order by total_medalby_NOC desc limit 1;

#10 Top 10 NOC's with most medal.
select NOC,count(medal) as total_medal from athlete_events where medal is not null group by NOC order by total_medal desc limit 10;

#11 Number of athlete who have won atleast one medal by NOC
select NOC,count(medal) as total_medal from athlete_events where medal is not null group by NOC having total_medal <0;

#12 Number of athletes who have participated in both winter and summer events.
select NOC,count(distinct ID) as total_athletes from athlete_events where Season in('summer','winter') group by NOC HAVING COUNT(DISTINCT Season)>1;

#13 Number of athletes who have won medal in both individual and team events by NOC.
select NOC, ID,count(distinct event) as total_events from athlete_events where medal is not null group by NOC,ID having count(distinct event)>1;

#14 Number  of athlete who have won medal in multiple sports by NOC.
select NOC,ID,count(distinct sports) as total_sports from athlete_events where medal is not null group by NOC,ID having total_sports >1;

#15 Average height and weight of athlete who have won medal by NOC.
select NOC,avg(height),avg(weight) from athlete_events where medal is not null and Height is not null and weigt is not null group by NOC;

#16 Number of athletes who have won medal in team events by NOC.
select NOC,count(distinct ID) as athlete_team_events from athlete_events where medal is not null and event like '%team' group by NOC;

#17 Countries with athlete over ceritain height.
select distinct NOC from athlete_events where (select avg(height) from athlete_events);

#18 Name and Id of athlete who participated in both the summer and winter.
select ID,name from athlete_events where ID in (select ID from athlete_events group by ID having count(distinct season)>1);

#19Countries with the highest number of female athlete.
select NOC,count(distinct ID) as female_athlete from athlete_events where sex='F' group by NOC order by female_athlete desc limit 1;

#20 Countries with the most medal as per athlete (minimum 10 atghlete).
select NOC,round(cast(count(*) as float) / count(distinct ID),2) as medal_per_athlete from athlete_events where medal is not null group by NOC having count(distinct ID) >10 order by medal_per_athlete desc;

#21 Countries with the most medal in a single olympics.
select NOC,year,count(*) as total_medals from athlete_events
 where medal is not null group by NOC,
 year order by total_medals desc limit 1;

#22 Countries with the most medal in each lympic year.
select NOC,year,count(*) as total_medals from athlete_events
 where medal is not null group by NOC,year having count(*)=
(select max(medal_count) from (select NOC,year,count(*)
as medal_count from athlete_events where medal is not null group by NOC,year)
as subquery where  subquery.year=athlete_events.year);


# 23 Athlete who won meal in all the olympic they participated in.
select ID,name from athlete_events where ID in(select ID
from athlete_events where medal is not null
group by ID having count(distinct year)=count(distinct games));


# 24 Countries with athlete oveer a certain height.
select ID,name,count(*) as
total_medals 
from athlete_events where medal is not null
group by ID,name 
having total_medals >1;


# 25 Athletes who the most medals in the same event in consecutive olympic.
select ID,name,event from athlete_events where ID in( select ID from athlete_events
where medal is not null
group by ID,event having
count(distinct year)> 1);