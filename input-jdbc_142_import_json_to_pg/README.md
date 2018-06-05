
* macOS 10.13.4
* PostgreSQL: 9.6.2
* Embulk 0.9.7
* embulk-input-postgrsql: 0.9.1
* embulk-output-postgrsql: 0.8.0

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

```yaml
in:
  type: postgresql
  database: embulk_test
  table: meisai
  host: localhost
  user: user
  password:
  column_options:
    version_id: { type: long }
    version: { type: string }
    shouhin_id: { type: json , value_type: json }
    pg_created_at: { type: timestamp , format: '%Y-%m-%d %H:%M:%S' }
    pg_updated_at: { type: timestamp , format: '%Y-%m-%d %H:%M:%S' }
out:
  type: postgresql
  database: embulk_test
  table: meisai_out
  host: localhost
  user: user
  password:
  mode: insert
  column_options:
    version_id: { type: smallint }
    version: { type: character(4) }
    shouhin_id: { type: json }
    pg_created_at: { type: timestamp without time zone }
    pg_updated_at: { type: timestamp without time zone }

```




```
2018-06-05 16:57:04.743 +0900: Embulk v0.9.7
2018-06-05 16:57:05.946 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2018-06-05 16:57:08.812 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2018-06-05 16:57:09.852 +0900 [INFO] (main): Started Embulk v0.9.7
2018-06-05 16:57:09.939 +0900 [INFO] (0001:transaction): Loaded plugin embulk-input-postgresql (0.9.1)
2018-06-05 16:57:09.983 +0900 [INFO] (0001:transaction): Loaded plugin embulk-output-postgresql (0.8.0)
2018-06-05 16:57:10.032 +0900 [INFO] (0001:transaction): JDBC Driver = /Users/user/.embulk/lib/gems/gems/embulk-input-postgresql-0.9.1/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2018-06-05 16:57:10.041 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.112 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-06-05 16:57:10.125 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2018-06-05 16:57:10.212 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2018-06-05 16:57:10.238 +0900 [INFO] (0001:transaction): JDBC Driver = /Users/user/.embulk/lib/gems/gems/embulk-output-postgresql-0.8.0/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2018-06-05 16:57:10.246 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.314 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-06-05 16:57:10.316 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.316 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2018-06-05 16:57:10.316 +0900 [INFO] (0001:transaction): Using insert mode
2018-06-05 16:57:10.338 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."meisai_out_00000163cef32141_embulk000" ("version_id" smallint, "version" character(4), "shouhin_id" json, "pg_created_at" timestamp without time zone, "pg_updated_at" timestamp without time zone)
2018-06-05 16:57:10.352 +0900 [INFO] (0001:transaction): > 0.01 seconds
2018-06-05 16:57:10.354 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."meisai_out_00000163cef32141_embulk001" ("version_id" smallint, "version" character(4), "shouhin_id" json, "pg_created_at" timestamp without time zone, "pg_updated_at" timestamp without time zone)
2018-06-05 16:57:10.358 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.358 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."meisai_out_00000163cef32141_embulk002" ("version_id" smallint, "version" character(4), "shouhin_id" json, "pg_created_at" timestamp without time zone, "pg_updated_at" timestamp without time zone)
2018-06-05 16:57:10.362 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.363 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."meisai_out_00000163cef32141_embulk003" ("version_id" smallint, "version" character(4), "shouhin_id" json, "pg_created_at" timestamp without time zone, "pg_updated_at" timestamp without time zone)
2018-06-05 16:57:10.366 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.420 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2018-06-05 16:57:10.449 +0900 [INFO] (0017:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.465 +0900 [INFO] (0017:task-0000): SQL: SET search_path TO "public"
2018-06-05 16:57:10.466 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.467 +0900 [INFO] (0017:task-0000): Copy SQL: COPY "public"."meisai_out_00000163cef32141_embulk000" ("version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at") FROM STDIN
2018-06-05 16:57:10.474 +0900 [INFO] (0017:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.485 +0900 [INFO] (0017:task-0000): SQL: SET search_path TO "public"
2018-06-05 16:57:10.486 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.486 +0900 [INFO] (0017:task-0000): Copy SQL: COPY "public"."meisai_out_00000163cef32141_embulk001" ("version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at") FROM STDIN
2018-06-05 16:57:10.491 +0900 [INFO] (0017:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.499 +0900 [INFO] (0017:task-0000): SQL: SET search_path TO "public"
2018-06-05 16:57:10.499 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.500 +0900 [INFO] (0017:task-0000): Copy SQL: COPY "public"."meisai_out_00000163cef32141_embulk002" ("version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at") FROM STDIN
2018-06-05 16:57:10.503 +0900 [INFO] (0017:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.512 +0900 [INFO] (0017:task-0000): SQL: SET search_path TO "public"
2018-06-05 16:57:10.513 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.513 +0900 [INFO] (0017:task-0000): Copy SQL: COPY "public"."meisai_out_00000163cef32141_embulk003" ("version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at") FROM STDIN
2018-06-05 16:57:10.579 +0900 [INFO] (0017:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.586 +0900 [INFO] (0017:task-0000): SQL: SET search_path TO "public"
2018-06-05 16:57:10.589 +0900 [INFO] (0017:task-0000): SQL: DECLARE cur NO SCROLL CURSOR FOR SELECT * FROM "meisai"
2018-06-05 16:57:10.591 +0900 [INFO] (0017:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-06-05 16:57:10.592 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.610 +0900 [INFO] (0017:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-06-05 16:57:10.610 +0900 [INFO] (0017:task-0000): > 0.00 seconds
2018-06-05 16:57:10.612 +0900 [INFO] (0017:task-0000): Loading 1 rows (106 bytes)
2018-06-05 16:57:10.618 +0900 [INFO] (0017:task-0000): > 0.01 seconds (loaded 1 rows in total)
2018-06-05 16:57:10.620 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2018-06-05 16:57:10.621 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=28800}
2018-06-05 16:57:10.627 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-06-05 16:57:10.628 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.628 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS "public"."meisai_out" ("version_id" smallint, "version" character(4), "shouhin_id" json, "pg_created_at" timestamp without time zone, "pg_updated_at" timestamp without time zone)
2018-06-05 16:57:10.631 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.632 +0900 [INFO] (0001:transaction): SQL: INSERT INTO "public"."meisai_out" ("version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at") SELECT "version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at" FROM "public"."meisai_out_00000163cef32141_embulk000" UNION ALL SELECT "version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at" FROM "public"."meisai_out_00000163cef32141_embulk001" UNION ALL SELECT "version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at" FROM "public"."meisai_out_00000163cef32141_embulk002" UNION ALL SELECT "version_id", "version", "shouhin_id", "pg_created_at", "pg_updated_at" FROM "public"."meisai_out_00000163cef32141_embulk003"
2018-06-05 16:57:10.634 +0900 [INFO] (0001:transaction): > 0.00 seconds (1 rows)
2018-06-05 16:57:10.640 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-06-05 16:57:10.646 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-06-05 16:57:10.647 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.647 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."meisai_out_00000163cef32141_embulk000"
2018-06-05 16:57:10.649 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.650 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."meisai_out_00000163cef32141_embulk001"
2018-06-05 16:57:10.651 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.651 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."meisai_out_00000163cef32141_embulk002"
2018-06-05 16:57:10.652 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.653 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."meisai_out_00000163cef32141_embulk003"
2018-06-05 16:57:10.654 +0900 [INFO] (0001:transaction): > 0.00 seconds
2018-06-05 16:57:10.656 +0900 [INFO] (main): Committed.
2018-06-05 16:57:10.657 +0900 [INFO] (main): Next config diff: {"in":{},"out":{}}
```

```
embulk_test=# select * from meisai_out;
-[ RECORD 1 ]-+-----------------------------------
version_id    | 1
version       | 1.0
shouhin_id    | ["apple   ","banana  ","peach   "]
pg_created_at | 2018-06-05 03:55:43.915771
pg_updated_at | 2018-06-05 03:55:43.915771
```
