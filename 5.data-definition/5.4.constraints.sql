drop table if exists products;

create table products (
  product_no integer,
  name text,
  price numeric check (price > 0)
);

drop table if exists products;

create table products (
  product_no integer,
  name text,
  price numeric constraint positive_price check (price > 0)
);

drop table if exists products;

create table products (
  product_no integer,
  name text,
  price numeric check (price > 0),
  discounted_price numeric check (discounted_price > 0),
  check (price > discounted_price)
);

drop table if exists products;

create table products (
  product_no integer,
  name text,
  price numeric,
  check (price > 0),
  discounted_price numeric,
  check (discounted_price > 0),
  constraint valid_discount check (price > discounted_price)
);

drop table if exists products;

create table products (
  product_no integer not null,
  name text not null,
  price numeric not null check (price > 0)
);

drop table if exists products;

create table products (
  product_no integer primary key,
  name text,
  price numeric
);

create table orders (
  order_id integer primary key,
  shipping_address text
);

create table order_items (
  product_no integer references products on delete restrict,
  order_id integer references orders on delete cascade,
  quantity integer,
  primary key (product_no, order_id)
);