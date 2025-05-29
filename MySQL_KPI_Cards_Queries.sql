
/* KPI Cards list

Total Registered Players
Total Auctioned Players
Total Sold Players
TotalRetained Price
Total Sold Price
Total Open Slots
Total Filled Slots

*/

select  sum(registered) as 'Tol Registered Players',
	    sum(Auctioned) as 'Tol Auctioned Players',
        sum(sold) as 'Tol Sold Players'
from `auction_summary-1`;

select
(select concat(sum(salary),' Cr')
from retained_players) as 'Tol Retained Price',

(select concat(round(sum(`Auctioned Price (Lakhs)`)/100,2),' Cr') 
from sold_players)as 'Tol Sold Price';



select  sum(`open slots`) as 'Open Slots',
		sum(`filled slot`) as 'Filled Slots'
from team_summary;



