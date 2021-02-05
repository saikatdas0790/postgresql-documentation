drop table if exists products;

create table products (
  product_no serial,
  name text,
  price numeric default 9.99
);