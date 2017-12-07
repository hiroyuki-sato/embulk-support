## embulk-input-mysql last_record bug.

* Embulk: 0.8.39
* embulk-input-mysql: 0.8.2
* MySQL: 5.7.19
* Server and Client timezone: JST.
* sample_data: sample.txt


```
mysql> select * from in_mysql_test;
+------+---------------------+-------+
| c0   | c1                  | c2    |
+------+---------------------+-------+
|    1 | 2017-12-01 00:00:00 | dummy |
|    2 | 2017-12-01 00:01:00 | dummy |
...
| 1440 | 2017-12-01 23:59:00 | dummy |
| 1441 | 2017-12-02 00:00:00 | dummy |
+------+---------------------+-------+

```

```yaml
in:
  type: mysql
  host: 127.0.0.1
  user: {{ env.mysql_user }}
  password: {{ env.mysql_password }}
  table: in_mysql_test
  database: embulk_test
  options: { useLegacyDatetimeCode: false }
  incremental_columns:
  - c1
  incremental: true

out:
  type: stdout
```

Execute `embulk run -o diff.yml input_mysql.yml.liquid`

```
in:
  last_record: ['2017-12-01T06:00:00.000000Z']
out: {}
```

```
1439,2017-12-01 14:58:00,dummy
1440,2017-12-01 14:59:00,dummy
1441,2017-12-01 15:00:00,dummy
2017-12-07 17:31:58.364 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2017-12-07 17:31:58.370 +0900 [INFO] (main): Committed.
2017-12-07 17:31:58.371 +0900 [INFO] (main): Next config diff: {"in":{"last_record":["2017-12-01T06:00:00.000000Z"]},"out":{}}
```

The `last_record` should be `2017-12-01T15:00:00.000000Z` but It set `2017-12-01T06:00:00.000000Z`
