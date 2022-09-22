use Sports_stats;
SELECT *
FROM Athlete_Events


SELECT 
Medal from Athlete_Events


UPDATE Athlete_Events
SET Medal = 'No Medal'
WHERE Medal = 'NA';

UPDATE Athlete_Events
SET Sex = 'Female'
WHERE Sex = 'F';
UPDATE Athlete_Events
SET Sex = 'Male'
WHERE Sex = 'M';



/** ALTER TABLE Athlete_Events
DROP COLUMN ;
**/

--Athlete's--
SELECT 
ID, Name, Sex, Age, Height, Weight
from Athlete_Events


--BMI--
SELECT
Age, Weight, Height, (Weight/Height)*100 as Body_Mass_Index_Percentage
FROM Athlete_Events

/** Defining sex **/
/** SELECT 
CASE WHEN 'Sex'= 'M'
THEN 'Male'
Else 'Female'
END AS Sex;
**/




--Medal Count--
SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Gold';

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Silver';

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Bronze';



--Medal Count According to Gender--
SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Gold'
AND Sex = 'Female'
;

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Gold'
AND Sex = 'Male'
;

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Silver'
AND Sex = 'Female';

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Silver'
AND Sex = 'Male'
;

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Bronze'
AND Sex = 'Female';

SELECT COUNT(*)
FROM Athlete_Events
WHERE Medal = 'Bronze'
AND Sex = 'Male'
;


SELECT Medal
FROM Athlete_Events
WHERE Medal IS NOT NULL;


SELECT 
 Name, Sex, Age, Team
from Athlete_Events
order by 3,4



SELECT 
 Name, Team, Sport, Medal
from Athlete_Events
order by 1,2

SELECT
Team,Event, Medal
FROM Athlete_Events
order by 1,2


SELECT 
Team, Medal
FROM Athlete_Events
ORDER BY 1,2 

SELECT 
Sex, Medal
FROM Athlete_Events
ORDER BY 1,2

SELECT 
Sex, Sport, Medal
FROM Athlete_Events
Order by 3,1


SELECT
Year, Games
FROM Athlete_Events as


/**SELECT 
substring(Year,1,charindex(' ',Year)-1) as Col1,
substring(Year,charindex(' ',Year)+1,len(Year)) as Col2 
FROM Athlete_Events
**/


SELECT
Games,Year
FROM Athlete_Events

/** SELECT 
CASE 
WHEN 'Medal' = 'NA' 
THEN 'No Medal'
ELSE 'Medal'
END AS Medal **/




SELECT
Age, Medal
FROM Athlete_Events;


SELECT 
Team, Medal
FROM Athlete_Events





SELECT Age
CASE
	WHEN Age < 18 THEN 'Under 18'
	WHEN Age BETWEEN 18 AND 25 THEN '18-25'
	WHEN Age BETWEEN 25 AND 30 THEN '25-30'
	WHEN Age > 30 THEN 'OVER 30'
END AS Age_Group
FROM Athlete_Events;
