create view myview as
select city,
  temp_lo,
  temp_hi,
  prcp,
  date,
  location
from weather,
  cities
where city = name;

select *
from myview;