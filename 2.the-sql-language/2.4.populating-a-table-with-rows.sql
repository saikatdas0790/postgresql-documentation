insert into weather
values ('San Francisco', 46, 50, 0.25, '1994-11-27');

insert into cities
values ('San Francisco', '(194.0, 53.0)');

insert into weather (city, temp_lo, temp_hi, prcp, date)
values ('San Francisco', 43, 57, 0.0, '1994-11-29');

insert into weather (date, city, temp_hi, temp_lo)
values ('1994-11-29', 'Hayward', 54, 37);