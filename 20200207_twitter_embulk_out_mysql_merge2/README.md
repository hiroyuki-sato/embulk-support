
## 

* OS: macOS 10.14.6
* Embulk 0.9.23
* embulk-output-mysql: 0.8.7
* MySQL: 8.0.16 Homebrew

```
drop table example;
```

```
embulk run config.yml
```

```
mysql> show fields from example;
+----------+------------+------+-----+---------+-------+
| Field    | Type       | Null | Key | Default | Extra |
+----------+------------+------+-----+---------+-------+
| id       | int(11)    | NO   | PRI | NULL    |       |
| account  | bigint(20) | YES  |     | NULL    |       |
| time     | timestamp  | YES  |     | NULL    |       |
| purchase | timestamp  | YES  |     | NULL    |       |
| comment  | text       | YES  |     | NULL    |       |
+----------+------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
```


```
select * from example;
+----+---------+---------------------+---------------------+----------------------------+
| id | account | time                | purchase            | comment                    |
+----+---------+---------------------+---------------------+----------------------------+
|  1 |   32864 | NULL                | NULL                | embulk                     |
|  2 |   14824 | NULL                | NULL                | embulk jruby               |
|  3 |   27559 | 2015-01-28 11:20:02 | 2015-01-28 09:00:00 | Embulk "csv" parser plugin |
|  4 |   11270 | 2015-01-29 20:54:36 | 2015-01-29 09:00:00 | NULL                       |
+----+---------+---------------------+---------------------+----------------------------+
4 rows in set (0.00 sec)
```
