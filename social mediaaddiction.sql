SELECT * FROM mediasocial.`students social media addiction`;

select academic_level,count(age)
  from  `students social media addiction`
  where Age >20
  group by Academic_Level;

select Most_Used_Platform, avg(Avg_Daily_Usage_Hours) as usage_hour
  from `students social media addiction`
  group by Most_Used_Platform
  order by usage_Hour desc; 

select Most_Used_Platform,count(Most_Used_Platform) as TotalCount,Affects_Academic_Performance
  from `students social media addiction`
  where Affects_Academic_Performance ='Yes'
  group by Most_Used_Platform
  order by TotalCount desc;

select country,age,count(age) as totalnum,avg(Addicted_Score)
  from `students social media addiction`
  group by country,age,Addicted_Score
  order by age desc,Addicted_Score desc;

select age,count(age) as number_of_sameage,avg(Addicted_Score) as avgAddicted_score
  from `students social media addiction`
  group by age
  order by avgAddicted_score desc;

select age,max(Addicted_Score)
  from `students social media addiction`
  group by age;

select gender,avg(Mental_Health_Score)
  from `students social media addiction`
  group by gender;

select Most_Used_Platform,count(Most_Used_Platform) as total,Relationship_Status
  from `students social media addiction`
  where Relationship_Status = 'single'
  group by Most_Used_Platform
  order by total desc;

