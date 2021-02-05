select max(temp_lo)
from weather;

select city
from weather
where temp_lo = (
    select max(temp_lo)
    from weather
  );

select city,
  max(temp_lo)
from weather
group by city;

select city,
  max(temp_lo)
from weather
group by city
having max(temp_lo) < 40;

select city,
  max(temp_lo)
from weather
where city like 'S%'
group by city
having max(temp_lo) < 40;