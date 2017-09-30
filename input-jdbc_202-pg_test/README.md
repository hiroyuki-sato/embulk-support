## embulk-input_liquid_test

```
embulk run conf.yml.liquid
2017-10-01 08:43:35.612 +0900: Embulk v0.8.35
2017-10-01 08:43:41.051 +0900 [INFO] (0001:transaction): Loaded plugin embulk-output-postgresql (0.7.10)
2017-10-01 08:43:41.085 +0900 [INFO] (0001:transaction): Listing local files at directory 'test_data' filtering filename by prefix 'test.csv'
2017-10-01 08:43:41.088 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-10-01 08:43:41.091 +0900 [INFO] (0001:transaction): Loading files [test_data/test.csv]
2017-10-01 08:43:41.127 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2017-10-01 08:43:41.147 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.212 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:43:41.214 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.214 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2017-10-01 08:43:41.214 +0900 [INFO] (0001:transaction): Using insert mode
2017-10-01 08:43:41.237 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_3314c840_bl_tmp000" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:43:41.241 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.244 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_3314c840_bl_tmp001" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:43:41.246 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.248 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_3314c840_bl_tmp002" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:43:41.251 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.252 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_3314c840_bl_tmp003" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:43:41.254 +0900 [INFO] (0001:transaction): > 0.00 seconds
[WARN] Plugin uses deprecated constructor of org.embulk.spi.time.TimestampFormatter.
[WARN] Report plugins in your config at: https://github.com/embulk/embulk/issues/745
2017-10-01 08:43:41.291 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2017-10-01 08:43:41.315 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.327 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:43:41.328 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:43:41.329 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_3314c840_bl_tmp000" ("a", "b", "c") FROM STDIN
2017-10-01 08:43:41.332 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.343 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:43:41.344 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:43:41.344 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_3314c840_bl_tmp001" ("a", "b", "c") FROM STDIN
2017-10-01 08:43:41.347 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.354 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:43:41.355 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:43:41.356 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_3314c840_bl_tmp002" ("a", "b", "c") FROM STDIN
2017-10-01 08:43:41.360 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.366 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:43:41.367 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:43:41.367 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_3314c840_bl_tmp003" ("a", "b", "c") FROM STDIN
2017-10-01 08:43:41.404 +0900 [INFO] (0018:task-0000): Loading 1 rows (6 bytes)
2017-10-01 08:43:41.411 +0900 [INFO] (0018:task-0000): > 0.01 seconds (loaded 1 rows in total)
2017-10-01 08:43:41.413 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2017-10-01 08:43:41.414 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=28800}
2017-10-01 08:43:41.421 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:43:41.422 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.424 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS "public"."embulk_test" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:43:41.427 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.427 +0900 [INFO] (0001:transaction): SQL: INSERT INTO "public"."embulk_test" ("a", "b", "c") SELECT "a", "b", "c" FROM "public"."embulk_test_3314c840_bl_tmp000" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_3314c840_bl_tmp001" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_3314c840_bl_tmp002" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_3314c840_bl_tmp003"
2017-10-01 08:43:41.429 +0900 [INFO] (0001:transaction): > 0.00 seconds (1 rows)
HOST=localhost
2017-10-01 08:43:41.434 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:43:41.442 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:43:41.443 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.443 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_3314c840_bl_tmp000"
2017-10-01 08:43:41.445 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.446 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_3314c840_bl_tmp001"
2017-10-01 08:43:41.447 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.447 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_3314c840_bl_tmp002"
2017-10-01 08:43:41.449 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.449 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_3314c840_bl_tmp003"
2017-10-01 08:43:41.450 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:43:41.452 +0900 [INFO] (main): Committed.
2017-10-01 08:43:41.452 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"test_data/test.csv"},"out":{}}out
```
