drop table if exists cities cascade;

create table cities (
  city varchar(80) primary key,
  location point
);

drop table if exists weather cascade;

create table weather (
  city varchar(80) references cities(city),
  temp_lo int,
  temp_hi int,
  prcp real,
  date date
);

select *
from myview;