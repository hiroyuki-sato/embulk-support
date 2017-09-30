## embulk-input_liquid_test

```
embulk run conf.yml.liquid
2017-10-01 08:57:28.906 +0900: Embulk v0.8.35
2017-10-01 08:57:34.506 +0900 [INFO] (0001:transaction): Loaded plugin embulk-output-postgresql (0.7.11)
2017-10-01 08:57:34.591 +0900 [INFO] (0001:transaction): Listing local files at directory 'test_data' filtering filename by prefix 'test.csv'
2017-10-01 08:57:34.592 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-10-01 08:57:34.596 +0900 [INFO] (0001:transaction): Loading files [test_data/test.csv]
2017-10-01 08:57:34.643 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2017-10-01 08:57:34.667 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.744 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:57:34.747 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.748 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2017-10-01 08:57:34.748 +0900 [INFO] (0001:transaction): Using insert mode
2017-10-01 08:57:34.785 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_12e50940_bl_tmp000" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:57:34.789 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.792 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_12e50940_bl_tmp001" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:57:34.795 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.798 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_12e50940_bl_tmp002" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:57:34.800 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.802 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."embulk_test_12e50940_bl_tmp003" ("a" TEXT, "b" TEXT, "c" TEXT)
2017-10-01 08:57:34.804 +0900 [INFO] (0001:transaction): > 0.00 seconds
[WARN] Plugin uses deprecated constructor of org.embulk.spi.time.TimestampFormatter.
[WARN] Report plugins in your config at: https://github.com/embulk/embulk/issues/745
2017-10-01 08:57:34.833 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2017-10-01 08:57:34.858 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.866 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:57:34.867 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:57:34.868 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_12e50940_bl_tmp000" ("a", "b", "c") FROM STDIN
2017-10-01 08:57:34.871 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.878 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:57:34.879 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:57:34.879 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_12e50940_bl_tmp001" ("a", "b", "c") FROM STDIN
2017-10-01 08:57:34.880 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.887 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:57:34.888 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:57:34.888 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_12e50940_bl_tmp002" ("a", "b", "c") FROM STDIN
2017-10-01 08:57:34.890 +0900 [INFO] (0018:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.897 +0900 [INFO] (0018:task-0000): SQL: SET search_path TO "public"
2017-10-01 08:57:34.899 +0900 [INFO] (0018:task-0000): > 0.00 seconds
2017-10-01 08:57:34.899 +0900 [INFO] (0018:task-0000): Copy SQL: COPY "public"."embulk_test_12e50940_bl_tmp003" ("a", "b", "c") FROM STDIN
2017-10-01 08:57:34.937 +0900 [INFO] (0018:task-0000): Loading 1 rows (6 bytes)
2017-10-01 08:57:34.944 +0900 [INFO] (0018:task-0000): > 0.01 seconds (loaded 1 rows in total)
2017-10-01 08:57:34.946 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2017-10-01 08:57:34.947 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=28800}
2017-10-01 08:57:34.952 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:57:34.953 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.953 +0900 [INFO] (0001:transaction): SQL: INSERT INTO "public"."embulk_test" ("a", "b", "c") SELECT "a", "b", "c" FROM "public"."embulk_test_12e50940_bl_tmp000" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_12e50940_bl_tmp001" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_12e50940_bl_tmp002" UNION ALL SELECT "a", "b", "c" FROM "public"."embulk_test_12e50940_bl_tmp003"
2017-10-01 08:57:34.955 +0900 [INFO] (0001:transaction): > 0.00 seconds (1 rows)
2017-10-01 08:57:34.960 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {user=user, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-10-01 08:57:34.970 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-10-01 08:57:34.971 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.971 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_12e50940_bl_tmp000"
2017-10-01 08:57:34.974 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.974 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_12e50940_bl_tmp001"
2017-10-01 08:57:34.977 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.977 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_12e50940_bl_tmp002"
2017-10-01 08:57:34.979 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.979 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS "public"."embulk_test_12e50940_bl_tmp003"
2017-10-01 08:57:34.980 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-10-01 08:57:34.982 +0900 [INFO] (main): Committed.
2017-10-01 08:57:34.982 +0900 [INFO] (main): Next config diff: {"in":{"last_path":"test_data/test.csv"},"out":{}}
```
