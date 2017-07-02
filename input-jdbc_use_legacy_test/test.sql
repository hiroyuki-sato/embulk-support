drop table if exists time_test;
create table time_test (
  id          integer   not null,
  c_date_time datetime  not null,
  c_date      date      not null,
  c_timestamp timestamp not null
);

insert into time_test values(1,'2017-07-01','2017-07-01','2017-07-01');
