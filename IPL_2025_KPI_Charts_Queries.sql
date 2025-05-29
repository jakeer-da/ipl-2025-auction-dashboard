-- 1st KPI Chart

select Role, Count(*) as Count
from (select role from retained_players
union all
select role from sold_players) as Combined_Players
group by role
order by  count desc;

-- 2nd KPI Chart

select Country, Sold as Total_Sold
from `auction_summary-1`
order by Total_Sold desc;

-- 3rd KPI Chart

select Team, concat(sum(salary),' Cr') as Retained_Price
from retained_players
group by team;

select Team, 
concat(round(sum(`Auctioned Price (Lakhs)`)/100,2),' Cr') as Sold_Price
from sold_players
group by team;

-- 4th KPI Chart

select player as Top_5_Retained_Players, Salary
from retained_players
order by salary desc
limit 10;

-- 5th KPI Chart

select player as Top_5_Sold_Players, 
round((select(`Auctioned price (lakhs)`/100)),2) as Sold_Price_Cr
from sold_players
order by Sold_Price_Cr desc
limit 5;
 
-- 6th KPI Chart

select Team, 
`Tol Retained`, 
`Tol bought`,
`Open Slots`,
`Filled Slot`
from team_summary;






