
```sql
create table input_test_001 (
  bangou int not null,
  num    int null,
  varstr varchar null,
  dt     timestamp null,
  time0  timestamp null,
  time6  timestamp null,
  time9  timestamp null
);

create table input_test_002 (
  id     int not null,
  num    int null,
  varstr varchar null,
  dt     timestamp null,
  time0  timestamp null,
  time6  timestamp null,
  time9  timestamp null
);

insert into input_test_001(bangou,num,varstr,dt) values (1,1,'test1','2018-12-13 0:0:0');
insert into input_test_002(id,num,varstr,dt) values (1,1,'test1','2018-12-13 0:0:0');

insert into input_test_001(bangou,num,varstr,dt) values (2,2,'test2','2018-12-13 1:0:0');
insert into input_test_002(id,num,varstr,dt) values (2,2,'test2','2018-12-13 1:0:0');
```

```yaml
in:
  type: postgresql
  host: localhost
  database: embulk_test
  user: user
  query: |-
    select
      bangou,
      dt,
      num,
      varstr
    from input_test_001 as a1
    where a1.dt >= :dt

#  where a1.dt >= '2018-12-13 0:0:30'
#
#  query: |-
#    select
#      a1.bangou,
#      a1.num,
#      a1.varstr
#    from input_test_001 a1,input_test_002 b1
#    where a1.num = b1.num
#    and a1.dt >= :dt
  incremental_columns: [dt]
  incremental: true
  use_raw_query_with_incremental: true
#  last_record: ['2018-12-13 0:0:30']
  last_record: ['2018-12-13']

out:
  type: stdoutin:
  type: postgresql
  host: localhost
  database: embulk_test
  user: user
  query: |-
    select
      bangou,
      dt,
      num,
      varstr
    from input_test_001 as a1
    where a1.dt >= :dt

#  where a1.dt >= '2018-12-13 0:0:30'
#
#  query: |-
#    select
#      a1.bangou,
#      a1.num,
#      a1.varstr
#    from input_test_001 a1,input_test_002 b1
#    where a1.num = b1.num
#    and a1.dt >= :dt
  incremental_columns: [dt]
  incremental: true
  use_raw_query_with_incremental: true
#  last_record: ['2018-12-13 0:0:30']
  last_record: ['2018-12-13']

out:
  type: stdout
```


```
2018-12-13 19:23:42.702 +0900: Embulk v0.9.11
2018-12-13 19:23:43.233 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2018-12-13 19:23:44.935 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2018-12-13 19:23:45.590 +0900 [INFO] (main): Started Embulk v0.9.11
2018-12-13 19:23:45.659 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-postgresql (0.9.3)
2018-12-13 19:23:45.691 +0900 [INFO] (0001:preview): JDBC Driver = /Users/user/.embulk/lib/gems/gems/embulk-input-postgresql-0.9.3/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2018-12-13 19:23:45.696 +0900 [INFO] (0001:preview): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-12-13 19:23:45.743 +0900 [INFO] (0001:preview): SQL: SET search_path TO "public"
2018-12-13 19:23:45.751 +0900 [INFO] (0001:preview): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
java.lang.IndexOutOfBoundsException: Index: 1, Size: 1
	at java.util.ArrayList.rangeCheck(ArrayList.java:657)
	at java.util.ArrayList.get(ArrayList.java:433)
	at org.embulk.input.jdbc.JdbcInputConnection.replacePlaceholder(JdbcInputConnection.java:397)
	at org.embulk.input.jdbc.JdbcInputConnection.wrapIncrementalQuery(JdbcInputConnection.java:307)
	at org.embulk.input.jdbc.AbstractJdbcInputPlugin.setupTask(AbstractJdbcInputPlugin.java:282)
	at org.embulk.input.jdbc.AbstractJdbcInputPlugin.transaction(AbstractJdbcInputPlugin.java:201)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:118)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:106)
	at org.embulk.exec.PreviewExecutor.access$000(PreviewExecutor.java:29)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:73)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:70)
	at org.embulk.spi.Exec.doWith(Exec.java:22)
	at org.embulk.exec.PreviewExecutor.preview(PreviewExecutor.java:70)
	at org.embulk.EmbulkEmbed.preview(EmbulkEmbed.java:151)
	at org.embulk.EmbulkRunner.previewInternal(EmbulkRunner.java:215)
	at org.embulk.EmbulkRunner.preview(EmbulkRunner.java:107)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:433)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:91)
	at org.embulk.cli.Main.main(Main.java:26)

Error: Index: 1, Size: 1
```
