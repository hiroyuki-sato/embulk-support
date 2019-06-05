
## PostgreSQL (embulk-input-postgrsql)

```
embulk preview config_pg.yml.liquid
2019-06-05 20:48:20.781 +0900: Embulk v0.9.17
2019-06-05 20:48:21.193 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2019-06-05 20:48:22.907 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2019-06-05 20:48:24.426 +0900 [INFO] (main): Started Embulk v0.9.17
2019-06-05 20:48:24.491 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-postgresql (0.9.3)
2019-06-05 20:48:24.526 +0900 [INFO] (0001:preview): JDBC Driver = /Users/user/.embulk/lib/gems/gems/embulk-input-postgresql-0.9.3/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2019-06-05 20:48:24.531 +0900 [INFO] (0001:preview): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2019-06-05 20:48:24.574 +0900 [INFO] (0001:preview): SQL: SET search_path TO "public"
2019-06-05 20:48:24.582 +0900 [INFO] (0001:preview): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2019-06-05 20:48:24.717 +0900 [INFO] (0001:preview): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2019-06-05 20:48:24.723 +0900 [INFO] (0001:preview): SQL: SET search_path TO "public"
2019-06-05 20:48:24.725 +0900 [INFO] (0001:preview): SQL: DECLARE cur NO SCROLL CURSOR FOR select * from japanese_test where name = 'もも'
2019-06-05 20:48:24.727 +0900 [INFO] (0001:preview): SQL: FETCH FORWARD 10000 FROM cur
2019-06-05 20:48:24.728 +0900 [INFO] (0001:preview): > 0.00 seconds
2019-06-05 20:48:24.730 +0900 [INFO] (0001:preview): SQL: FETCH FORWARD 10000 FROM cur
2019-06-05 20:48:24.731 +0900 [INFO] (0001:preview): > 0.00 seconds
+---------+-------------+
| id:long | name:string |
+---------+-------------+
|       3 |          もも |
+---------+-------------+
```

```yaml
in:
  type: postgresql
  host: localhost
  user: user
  database: embulk_test
  #query: "select * from japanese_test"
{% include 'common/pg_query' %}
out:
  type: stdout
```

```yaml
  query: "select * from japanese_test where name = 'もも'"
```

## SQLite3 (embulk-input-jdbc)

```
2019-06-05 21:31:39.638 +0900: Embulk v0.9.17
2019-06-05 21:31:40.300 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2019-06-05 21:31:42.508 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2019-06-05 21:31:44.148 +0900 [INFO] (main): Started Embulk v0.9.17
2019-06-05 21:31:44.231 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-jdbc (0.10.0)
2019-06-05 21:31:44.266 +0900 [INFO] (0001:preview): Connecting to jdbc:sqlite:/tmp/test.db options {}
2019-06-05 21:31:44.347 +0900 [INFO] (0001:preview): Using JDBC Driver 3.27.2.1
2019-06-05 21:31:44.441 +0900 [INFO] (0001:preview): Connecting to jdbc:sqlite:/tmp/test.db options {}
2019-06-05 21:31:44.442 +0900 [INFO] (0001:preview): SQL: select * from japanese_test where name = 'もも'
2019-06-05 21:31:44.444 +0900 [INFO] (0001:preview): > 0.00 seconds
+---------+-------------+
| id:long | name:string |
+---------+-------------+
|       3 |          もも |
+---------+-------------+
```


```yaml
in:
  type: jdbc
  driver_path: /tmp/sqlite-jdbc-3.27.2.1.jar
  driver_class: org.sqlite.JDBC
#  url: jdbc:sqlite:mydb.sqlite3
  url: jdbc:sqlite:/tmp/test.db
{% include 'common/pg_query' %}
out:
  type: stdout
```
