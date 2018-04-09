## Can not find InputPlugin 'postgresql' error

[Can not find InputPlugin 'postgresql' error](https://github.com/embulk/embulk/issues/1001)


```yaml
in:
  type: postgresql
  host: localhost
  user: user
  database: embulk_test
  table: users
  password: xxx
out:
  type: stdout
```

```yaml
+embulk_test:
  sh>: embulk run embulk_test.yml
```




```
digdag run test.dig
2018-04-09 09:21:06 +0900: Digdag v0.9.24
2018-04-09 09:21:08 +0900 [WARN] (main): Using a new session time 2018-04-09T00:00:00+00:00.
2018-04-09 09:21:08 +0900 [INFO] (main): Using session /Users/user/OpenProjects/embulk/embulk-support/core_1001_plugin_not_found/.digdag/status/20180409T000000+0000.
2018-04-09 09:21:08 +0900 [INFO] (main): Starting a new session project id=1 workflow name=test session_time=2018-04-09T00:00:00+00:00
2018-04-09 09:21:09 +0900 [INFO] (0017@[0:default]+test+embulk_test): sh>: embulk run embulk_test.yml
2018-04-09 09:21:09.433 +0900: Embulk v0.9.5
2018-04-09 09:21:10.251 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 09:21:12.862 +0900 [INFO] (0001:transaction): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2018-04-09 09:21:13.862 +0900 [INFO] (0001:transaction): Loaded plugin embulk-input-postgresql (0.9.1)
2018-04-09 09:21:13.916 +0900 [INFO] (0001:transaction): JDBC Driver = /Users/user/.embulk/lib/gems/gems/embulk-input-postgresql-0.9.1/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2018-04-09 09:21:13.924 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-04-09 09:21:13.988 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-04-09 09:21:14.007 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2018-04-09 09:21:14.100 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2018-04-09 09:21:14.106 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2018-04-09 09:21:14.192 +0900 [INFO] (0016:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-04-09 09:21:14.200 +0900 [INFO] (0016:task-0000): SQL: SET search_path TO "public"
2018-04-09 09:21:14.205 +0900 [INFO] (0016:task-0000): SQL: DECLARE cur NO SCROLL CURSOR FOR SELECT * FROM "users"
2018-04-09 09:21:14.209 +0900 [INFO] (0016:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-04-09 09:21:14.211 +0900 [INFO] (0016:task-0000): > 0.00 seconds
2018-04-09 09:21:14.215 +0900 [INFO] (0016:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-04-09 09:21:14.216 +0900 [INFO] (0016:task-0000): > 0.00 seconds
sample_user1,sample_user1@example.com,
sample_user2,sample_user2@example.com,
sample_user2,sample_user2@example.com,
sample_user1,sample_user1@example.com,1979-12-31
sample_user2,sample_user2@example.com,1000-01-05
sample_user2,sample_user2@example.com,0099-12-29
2018-04-09 09:21:14.220 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2018-04-09 09:21:14.227 +0900 [INFO] (main): Committed.
2018-04-09 09:21:14.227 +0900 [INFO] (main): Next config diff: {"in":{},"out":{}}
Success. Task state is saved at /Users/user/OpenProjects/embulk/embulk-support/core_1001_plugin_not_found/.digdag/status/20180409T000000+0000 directory.
  * Use --session <daily | hourly | "yyyy-MM-dd[ HH:mm:ss]"> to not reuse the last session time.
  * Use --rerun, --start +NAME, or --goal +NAME argument to rerun skipped tasks.
```
