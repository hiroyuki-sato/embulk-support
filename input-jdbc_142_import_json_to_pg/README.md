
```
CREATE TABLE meisai (
    version_id smallint,
    version character(4),
    shouhin_id character(8)[],
    pg_created_at timestamp without time zone,
    pg_updated_at timestamp without time zone
);
```


```
insert into meisai values(1,'1.0','{"apple","banana","peach"}',current_timestamp,current_timestamp);
```


