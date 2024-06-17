select * from geo;

#GROUP BY 

select g.Geo, sum(Amount) as 'Total Amount',round(avg(Amount),2) as 'Avg Amount' ,count(Boxes)  as 'Total Boxes'
from sales s
join geo g on g.GeoID = s.GeoID
group by g.Geo;

select pr.Category, p.team, sum(Amount) as 'sum of boxes', count(Boxes) as 'count of boxes'
from sales s
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p.Team <> ''
group by pr.Category, p.team
order by pr.Category, p.team;

select pr.Product, sum(Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc;

select pr.Product, sum(Amount) as 'Total Amount'
from sales s
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10;






