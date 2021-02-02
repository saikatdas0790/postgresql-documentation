select *
from weather,
  cities
where city = name;

select city,
  temp_lo,
  temp_hi,
  prcp,
  date,
  location
from weather,
  cities
where city = name;

select weather.city,
  weather.temp_lo,
  weather.temp_hi,
  weather.prcp,
  weather.date,
  cities.location
from weather,
  cities
where cities.name = weather.city;

select *
from weather
  inner join cities on (weather.city = cities.name);

select *
from weather
  left outer join cities on (weather.city = cities.name);

select W1.city,
  W1.temp_lo as low,
  W1.temp_hi as high,
  W2.city,
  W2.temp_lo as low,
  W2.temp_hi as high
from weather W1,
  weather W2
where W1.temp_lo < W2.temp_lo
  and W1.temp_hi > W2.temp_hi;

select *
from weather w,
  cities c
where w.city = c.name;