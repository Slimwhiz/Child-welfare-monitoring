/*
Use Database
We have imported the datas
*/

/*Because we imported the data as crimes_data_clean, we need to rename*/


/*Views*/
SELECT TOP 10 * FROM [dbo].[crimes_data]

-- Crimes count over the time period
CREATE VIEW [Crimes_over_time] AS
SELECT MONTH, COUNT(CRIME_ID) AS [CrimeCount] FROM [crimes_data]
		GROUP BY [Month]

-- Different Crimes and who commits them
CREATE VIEW [Crime_types] AS
SELECT CRIME_TYPE, COUNT(CRIME_ID) AS [CrimeType] FROM [crimes_data]
		GROUP BY CRIME_TYPE

-- Top 10 Crime locations
CREATE VIEW [Top_crime_locations] AS 
SELECT TOP 10 Location, COUNT(CRIME_ID) AS [CrimeLocation] FROM [crimes_data]
		GROUP BY Location
		ORDER BY 2 DESC

CREATE VIEW [least_crime_locations] AS 
SELECT TOP 10 Location, COUNT(CRIME_ID) AS [CrimeLocation] FROM [crimes_data]
		GROUP BY Location
		ORDER BY 2 ASC