Create database IPL;

use IPL;

CREATE TABLE deliveries (
    id INT,
    inning INT,
    `over` INT,
    ball INT,
    batsman VARCHAR(225),
    non_striker VARCHAR(225),
    bowler VARCHAR(225),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    is_wicket INT,
    dismissal_kind VARCHAR(225),
    player_dismissed VARCHAR(225),
    fielder VARCHAR(225),
    extras_type VARCHAR(225),
    batting_team VARCHAR(225),
    bowling_team VARCHAR(225)
);
       
CREATE TABLE matches (
    id INT,
    city VARCHAR(225),
    date varchar(225),
    player_of_match VARCHAR(255),
    venue VARCHAR(255),
    neutral_venue INT,
    team1 VARCHAR(225),
    team2 VARCHAR(225),
    toss_winner VARCHAR(225),
    toss_decision VARCHAR(225),
    winner VARCHAR(225),
    result VARCHAR(225),
    result_margin INT,
    eliminator VARCHAR(225),
    method VARCHAR(225),
    umpire1 VARCHAR(225),
    umpire2 VARCHAR(225)
);      
       
     
-- Q5. Select top 20 rows pf the deliveries table

SELECT 
    *
FROM
    deliveries
LIMIT 20;


-- Q6. select top 20 of matches table.

SELECT 
    *
FROM
    matches
LIMIT 20;

-- Q7 Fetch data of all the matches played on 2nd may 2013

SELECT 
    *
FROM
    matches
WHERE
    date = '02-05-2013';
    
-- Q8. Fetch data of all the matches where the margin of victory is more than 100

SELECT 
    *
FROM
    matches
WHERE
    result_margin > 100;

-- Q9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date 

SELECT 
    *
FROM
    matches
WHERE
    result = 'tie'
ORDER BY date DESC;



-- Q10. Get the count of cities that have hosted an IPL match

SELECT
    COUNT(distinct city)
FROM
    matches;

-- Q11. Get the count of all the matches where there was elimination (superover bowled)

SELECT 
   count( *)
FROM
    matches
WHERE
    eliminator = 'y';
    
-- Q12. Get the count of all the matches where there was no elimination (not superover bowled)

SELECT 
   count( *)
FROM
    matches
WHERE
    eliminator = 'N';
    
-- Q13. Get the count of the time D/L (duckworth lewis) method was applied

SELECT 
    COUNT(*)
FROM
    matches
WHERE
    method = 'D/L';
    
-- Q14. Get the count of venue (stadium) that the match has been played

SELECT
    COUNT(distinct venue)
FROM
    matches;
    
    
-- Q15. Get the count of all deliveries with more than one innings.

SELECT 
   count(inning)
FROM
    deliveries
where inning > 1;


-- Q16. Get the count of all the deliveries with more tha one over

SELECT 
    COUNT(`over`)
FROM
    deliveries
WHERE
    `over` > 1;
    
-- Q17. Fetch data of all the deliveries with the minimum of one extra run

SELECT 
    *
FROM
    deliveries
WHERE
    extra_runs >= 1;
    
-- Q18. Fetch data of all the deliveries where the wicket is not 0.

SELECT 
    *
FROM
    deliveries
WHERE
    is_wicket > 0;