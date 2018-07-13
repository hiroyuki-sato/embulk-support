

```yaml
in:
  type: mysql
  user: user
  password: *****
  table: tinyint_sample
  database: embulk_test
  host: localhost
  column_options:
    tiny_flag: { type: boolean }
```

```
+---------+-------------------+
| id:long | tiny_flag:boolean |
+---------+-------------------+
|       1 |              true |
|       2 |             false |
+---------+-------------------+
```

```yaml
in:
  type: mysql
  user: user
  password: *****
  table: tinyint_sample
  database: embulk_test
  host: localhost
  column_options:
    tiny_flag: { type: long }
```

```
+---------+----------------+
| id:long | tiny_flag:long |
+---------+----------------+
|       1 |              1 |
|       2 |              0 |
+---------+----------------+
```
