select * from sales;

select * from people;

select * from products;

#JOINS

select s.SaleDate, s.Amount, p.Salesperson
from sales s
join people p on p.SPID = s.SPID;

#LEFT JOIN

select s.PID, s.SaleDate, pr.Product, pr.Category, s.Amount
from sales s
left join products pr on pr.PID = s.PID;


select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID;

#WHERE TEAM ID DELISH
select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.Amount <500
and p.Team = 'Delish'
order by s.Amount desc
;

#WHERE TEAM IS EMPTY

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
where s.Amount <500
and p.Team = '';



select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team, g.Geo, g.Region
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = s.PID
join geo g on g.geoID = s.geoID
where s.Amount <500
and g.Geo in ( 'New Zealand', 'India');




