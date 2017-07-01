
`mysql --default-character-set=utf8 -u root -p embulk_test`


```
mysql> select * from utf8mb4_test;
+----+-----------+-------+
| id | name      | emoji |
+----+-----------+-------+
|  1 | 寿司      | ?     |
|  2 | ビール    | ?     |
+----+-----------+-------+
2 rows in set (0.00 sec)
```


`mysql --default-character-set=utf8mb4 -u root -p embulk_test`

```
mysql> select * from utf8mb4_test;
+----+-----------+-------+
| id | name      | emoji |
+----+-----------+-------+
|  1 | 寿司      | 🍣      |
|  2 | ビール    | 🍻      |
+----+-----------+-------+
2 rows in set (0.00 sec)
```


```
2017-07-01 21:34:32.462 +0900: Embulk v0.8.26
2017-07-01 21:34:44.400 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-mysql (0.8.4)
2017-07-01 21:34:44.439 +0900 [INFO] (0001:preview): Fetch size is 10000. Using server-side prepared statement.
2017-07-01 21:34:44.710 +0900 [INFO] (0001:preview): Using JDBC Driver mysql-connector-java-5.1.34 ( Revision: jess.balint@oracle.com-20141014163213-wqbwpf1ok2kvo1om )
2017-07-01 21:34:44.711 +0900 [WARN] (0001:preview): This plugin will update MySQL Connector/J version in the near future release.
2017-07-01 21:34:44.711 +0900 [WARN] (0001:preview): It has some incompatibility changes.
2017-07-01 21:34:44.711 +0900 [WARN] (0001:preview): For example, the 5.1.35 introduced `noTimezoneConversionForDateType` and `cacheDefaultTimezone` options.
2017-07-01 21:34:44.711 +0900 [WARN] (0001:preview): Please read a document and make sure configuration carefully before updating the plugin.
2017-07-01 21:34:44.715 +0900 [WARN] (0001:preview): The plugin will set `useLegacyDatetimeCode=false` by default in future.
2017-07-01 21:34:44.832 +0900 [INFO] (0001:preview): Fetch size is 10000. Using server-side prepared statement.
2017-07-01 21:34:44.844 +0900 [INFO] (0001:preview): SQL: SELECT * FROM `utf8mb4_test`
2017-07-01 21:34:44.848 +0900 [INFO] (0001:preview): > 0.00 seconds
+---------+-------------+--------------+
| id:long | name:string | emoji:string |
+---------+-------------+--------------+
|       1 |          寿司 |           🍣 |
|       2 |         ビール |           🍻 |
+---------+-------------+--------------+
```
