
drop table utf8mb4_test;

create table utf8mb4_test (
  id    integer      not null,
  name  varchar(255) not null,
  emoji varchar(255) not null
) charset utf8mb4;

-- show create table utf8mb4_test;

insert into utf8mb4_test values(1,"寿司","🍣");
insert into utf8mb4_test values(2,"ビール","🍻");

select * from utf8mb4_test;
