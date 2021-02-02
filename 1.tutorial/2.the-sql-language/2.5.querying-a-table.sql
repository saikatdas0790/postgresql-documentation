select *
from weather;

select city,
  temp_lo,
  temp_hi,
  prcp,
  date
from weather;

select city,
  (temp_hi + temp_lo) / 2 as temp_avg,
  date
from weather;

select *
from weather
where city = 'San Francisco'
  and prcp > 0.0;

select *
from weather
order by city;

select *
from weather
order by city,
  temp_lo;

select distinct city
from weather;

select distinct city
from weather
order by city;