create database cricketdb;
use cricketdb;

select * from cricket_data limit 5;

UPDATE cricket_data
SET start_date = STR_TO_DATE(start_date, '%d-%m-%Y');

UPDATE cricket_data
SET end_date = STR_TO_DATE(end_date, '%d-%m-%Y');

update cricket_data
set start_date = left(start_date, 10);

update cricket_data
set end_date = left(end_date, 10);

alter table cricket_data
modify start_date date;

alter table cricket_data 
modify end_date date;

-- Q1: Total matches played

select count(*) as total_matches
from cricket_data;

-- Q2: हर season में कितने matches हुए?
select season, count(*) as total_matches
from cricket_data
group by season
order by season;

--- Q3: सबसे ज्यादा match जीतने वाली टीम

select winner, count(*) as Wons
from cricket_data
group by winner
order by wons desc limit 1;

--- Q4: Top 5 winning teams

select winner, count(*) as Wons
from cricket_data
group by winner
order by wons desc limit 5;

--- Q5: Toss जीतिर match जीतने वाली टीम कितनी बार?
select count(*) as toss_and_match_win
from cricket_data
where toss_won = winner;

 
--- Q6: Toss जीतिर batting vs bowling decision analysis
select decision, count(*) as total 
from cricket_data
group by decision;

--- Q7: Highest score (1st inning)
select max(first_inning_score) as highest_score
from cricket_data;

--- Q8: Lowest score (1st inning)
select min(first_inning_score) as lowest_score
from cricket_data;

--- Q9: Highest run chase (2nd inning)
select max(second_inning_score) as highest_run_chase
from cricket_data;

--- Q10: Player of the match सबसे ज्यादा बार किसे ममला?
select pom, count(*) as player_of_match
from cricket_data
group by pom
order by player_of_match desc limit 1;


--- Q11: Top 5 Player of the Match
select pom, count(*) as player_of_match
from cricket_data
group by pom
order by player_of_match desc limit 5;



--- Q12: Home team vs Away team performance
select home_team, count(*) as home_matches
from cricket_data
group by home_team;

select away_team, count(*) as away_matches
from cricket_data
group by away_team;



--- Q13: िौन सा venue सबसे ज्यादा matches host िरता है?
select venue_name, count(*) as matches
from cricket_data
group by venue_name
order by matches desc limit 5;

--- Q14: Matches where team won by chasing
select count(*) as chasing_wins
from cricket_data
where second_inning_score > first_inning_score;


--- Q15: Matches where team defended score
select count(*) as defended_wins
from cricket_data
where second_inning_score > first_inning_score;


--- Q16: हर season िा winner count
select season, winner, count(*) as wins
from cricket_data
group by season, winner
order by season, wins desc ;

--- Q17: सबसे ज्यादा toss जीतने वाली team
select toss_won, count(*) as toss_wins
from cricket_data
group by toss_won
order by toss_wins desc limit 1;

--- Q18: Avg score per match
select avg(first_inning_score) as avg_first_score,
avg(second_inning_score) as avg_second_score
from cricket_data;

--- Q19: Close matches (difference < 10 runs)
select * from cricket_data
where abs(first_inning_score-second_inning_score) < 10
limit 10;

--- Q20: Team-wise win percentage
select winner, count(*)*100.0/(select count(*) from cricket_data)as win_percentage
from cricket_data
group by winner
order by win_percentage desc ;
