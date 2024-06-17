show tables; #to list all the tables

desc sales; #to understand what is specific available in the table use desc table name

select * from sales;

select Saledate, Amount, customers
from sales;

# Calculation in queries

select * from sales;

select SaleDate, Amount, Boxes, round((Amount / Boxes),1) as Amt_per_boxes
from sales;

# or other ways

select SaleDate, Amount, Boxes, round((Amount / Boxes),1) as 'Amount per boxes'
from sales;

# impose conditions

#WHERE CLAUSE

select * from sales;

select * from sales
where Amount > 10000
;

#ORDER BY

select * from sales
where Amount > 10000
order by amount desc
limit 5;

select * from sales
where geoid='G1'
order by PID, amount desc;

select * from sales
where amount>11000 and SaleDate >= '2022-01-01';

select SaleDate, Amount from sales
where amount >10000 and year(Saledate) = 2022
order by amount desc;


#BETWEEN

select * from sales
where Boxes > 0 and Boxes <=50
order by Boxes desc;

#Or we can use

select * from sales
where Boxes between 8 and 37;


#WEEKDAY FUNCTION	

select SaleDate, Amount, Boxes, weekday(Saledate) as 'Day of the week'
from sales 
where weekday(saledate) = 4
;

#USING MULTIPLE TABLES

select * from people;

select * 
from people
where team = 'Delish' or team = 'yummies'
;


#IN clause*

select *
from people
where team in('yummies', 'jucies');


#PATTERN MATCHING
#using like operator

#LIKE OPERATOR

select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';


#CASE OPERATOR

select * from sales;

select  SaleDate, Amount,
		case when amount <1000 then 'under1k'
				when amount <5000 then 'under5k'
                when amount <10000 then 'under10k'
                else '10k 0r more'
		end as 'Amount Category'
from sales;

























































