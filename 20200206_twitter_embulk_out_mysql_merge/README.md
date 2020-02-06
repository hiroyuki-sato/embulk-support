## prepare

```sql
create table example (
  id int not null primary key,
  account int not null,
  time time not null,
  purchase date not null,
  comment varchar(255) null
)
```

```
mysql> show fields from example;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| id       | int(11)      | NO   | PRI | NULL    |       |
| account  | int(11)      | NO   |     | NULL    |       |
| time     | time         | NO   |     | NULL    |       |
| purchase | date         | NO   |     | NULL    |       |
| comment  | varchar(255) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)
```

```yaml
out:
  type: mysql
  user: user
  password: password
  mode: merge
  table: example
  database: embulk_test
  host: localhost
```

```
embulk run config.yml
```

```
mysql> select * from example;
+----+---------+----------+------------+----------------------------+
| id | account | time     | purchase   | comment                    |
+----+---------+----------+------------+----------------------------+
|  1 |   32864 | 04:23:49 | 2015-01-27 | embulk                     |
|  2 |   14824 | 04:01:23 | 2015-01-27 | embulk jruby               |
|  3 |   27559 | 11:20:02 | 2015-01-28 | Embulk "csv" parser plugin |
|  4 |   11270 | 20:54:36 | 2015-01-29 | NULL                       |
+----+---------+----------+------------+----------------------------+
4 rows in set (0.00 sec)
```

### 2nd insert

Edit comment field

* embulk -> Embulk
* jruby -> Jruby

```
embulk run config.yml
```

```
mysql> select * from example;
+----+---------+----------+------------+----------------------------+
| id | account | time     | purchase   | comment                    |
+----+---------+----------+------------+----------------------------+
|  1 |   32864 | 04:23:49 | 2015-01-27 | Embulk                     |
|  2 |   14824 | 04:01:23 | 2015-01-27 | Embulk Jruby               |
|  3 |   27559 | 11:20:02 | 2015-01-28 | Embulk "csv" parser plugin |
|  4 |   11270 | 20:54:36 | 2015-01-29 | NULL                       |
+----+---------+----------+------------+----------------------------+
```

```sql
2020-02-06 17:22:26.281 +0900 [INFO] (0001:transaction): SQL:
INSERT INTO `example`
  (`id`, `account`,
   `time`, `purchase`,
   `comment`)
SELECT `id`, `account`, `time`, `purchase`, `comment`
 FROM `example_000001701997d4f9_embulk000`
UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment`
 FROM `example_000001701997d4f9_embulk001`
UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment`
 FROM `example_000001701997d4f9_embulk002`
UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment`
 FROM `example_000001701997d4f9_embulk003`
ON DUPLICATE KEY UPDATE `id` = VALUES(`id`), `account` = VALUES(`account`), `time` = VALUES(`time`), `purchase` = VALUES(`purchase`), `comment` = VALUES(`comment`)
```
