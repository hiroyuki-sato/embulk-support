
```
2017-07-24 13:29:47.991 +0900: Embulk v0.8.28-TESTING5
2017-07-24 13:29:49.727 +0900 [INFO] (0001:transaction): Loaded plugin embulk-output-postgresql (0.7.10)
2017-07-24 13:29:49.770 +0900 [INFO] (0001:transaction): Listing local files at directory 'hoge/csv' filtering filename by prefix 'sample_'
2017-07-24 13:29:49.771 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-07-24 13:29:49.775 +0900 [INFO] (0001:transaction): Loading files [hoge/csv/sample_01.csv, hoge/csv/sample_02.csv, hoge/csv/sample_03.csv]
2017-07-24 13:29:49.816 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 6 = input tasks 3 * 2
2017-07-24 13:29:49.837 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:49.933 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2017-07-24 13:29:49.935 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:49.936 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2017-07-24 13:29:49.936 +0900 [INFO] (0001:transaction): Using insert mode
2017-07-24 13:29:49.972 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp000" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:49.977 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:49.983 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp001" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:49.986 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:49.989 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp002" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:49.992 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:49.995 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp003" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:49.998 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:50.001 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp004" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:50.004 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:50.007 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE "public"."resume_test_21426780_bl_tmp005" ("id" BIGINT, "account" BIGINT, "time" TIMESTAMP WITH TIME ZONE, "purchase" TIMESTAMP WITH TIME ZONE, "comment" TEXT)
2017-07-24 13:29:50.010 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-07-24 13:29:50.072 +0900 [INFO] (0001:transaction): {done:  0 / 3, running: 0}
2017-07-24 13:29:50.102 +0900 [INFO] (0016:task-0001): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.103 +0900 [INFO] (0017:task-0002): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.105 +0900 [INFO] (0015:task-0000): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.123 +0900 [INFO] (0015:task-0000): SQL: SET search_path TO "public"
2017-07-24 13:29:50.127 +0900 [INFO] (0015:task-0000): > 0.00 seconds
2017-07-24 13:29:50.128 +0900 [INFO] (0015:task-0000): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp000" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.133 +0900 [INFO] (0015:task-0000): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.137 +0900 [INFO] (0017:task-0002): SQL: SET search_path TO "public"
2017-07-24 13:29:50.141 +0900 [INFO] (0016:task-0001): SQL: SET search_path TO "public"
2017-07-24 13:29:50.142 +0900 [INFO] (0017:task-0002): > 0.00 seconds
2017-07-24 13:29:50.142 +0900 [INFO] (0017:task-0002): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp004" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.143 +0900 [INFO] (0017:task-0002): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.147 +0900 [INFO] (0016:task-0001): > 0.01 seconds
2017-07-24 13:29:50.147 +0900 [INFO] (0016:task-0001): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp002" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.149 +0900 [INFO] (0016:task-0001): Connecting to jdbc:postgresql://127.0.0.1:5432/embulk_test options {user=hsato, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2017-07-24 13:29:50.161 +0900 [INFO] (0015:task-0000): SQL: SET search_path TO "public"
2017-07-24 13:29:50.163 +0900 [INFO] (0015:task-0000): > 0.00 seconds
2017-07-24 13:29:50.164 +0900 [INFO] (0015:task-0000): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp001" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.192 +0900 [INFO] (0017:task-0002): SQL: SET search_path TO "public"
2017-07-24 13:29:50.195 +0900 [INFO] (0017:task-0002): > 0.00 seconds
2017-07-24 13:29:50.195 +0900 [INFO] (0017:task-0002): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp005" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.205 +0900 [INFO] (0016:task-0001): SQL: SET search_path TO "public"
2017-07-24 13:29:50.247 +0900 [INFO] (0016:task-0001): > 0.04 seconds
2017-07-24 13:29:50.247 +0900 [INFO] (0016:task-0001): Copy SQL: COPY "public"."resume_test_21426780_bl_tmp003" ("id", "account", "time", "purchase", "comment") FROM STDIN
2017-07-24 13:29:50.269 +0900 [INFO] (0017:task-0002): Loading 4 rows (338 bytes)
2017-07-24 13:29:50.270 +0900 [INFO] (0015:task-0000): Loading 4 rows (338 bytes)
2017-07-24 13:29:50.275 +0900 [INFO] (0017:task-0002): > 0.01 seconds (loaded 4 rows in total)
2017-07-24 13:29:50.279 +0900 [INFO] (0015:task-0000): > 0.01 seconds (loaded 4 rows in total)
2017-07-24 13:29:50.281 +0900 [INFO] (0001:transaction): {done:  3 / 3, running: 0}
2017-07-24 13:29:50.281 +0900 [INFO] (0001:transaction): {done:  3 / 3, running: 0}
2017-07-24 13:29:50.281 +0900 [INFO] (0001:transaction): {done:  3 / 3, running: 0}
[INFO] Writing resume state to 'resume.yml'
[INFO] Resume state is written. Run the transaction again with -r option to resume or use "cleanup" subcommand to delete intermediate data.
java.lang.RuntimeException: org.embulk.spi.DataException: Invalid record at line 3: aaa,14824,2015-01-27 19:01:23,20150127,embulk jruby
	at org.embulk.EmbulkRunner.runInternal(EmbulkRunner.java:360)
	at org.embulk.EmbulkRunner.run(EmbulkRunner.java:173)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:475)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:99)
	at org.embulk.cli.EmbulkBundle.checkBundleWithEmbulkVersion(EmbulkBundle.java:42)
	at org.embulk.cli.EmbulkBundle.checkBundle(EmbulkBundle.java:15)
	at org.embulk.cli.Main.main(Main.java:26)
Caused by: org.embulk.spi.DataException: Invalid record at line 3: aaa,14824,2015-01-27 19:01:23,20150127,embulk jruby
	at org.embulk.standards.CsvParserPlugin.run(CsvParserPlugin.java:368)
	at org.embulk.spi.FileInputRunner.run(FileInputRunner.java:156)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.runInputTask(LocalExecutorPlugin.java:294)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.access$000(LocalExecutorPlugin.java:212)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:257)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:253)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.embulk.standards.CsvParserPlugin$CsvRecordValidateException: java.lang.NumberFormatException: For input string: "aaa"
	at org.embulk.standards.CsvParserPlugin$1.longColumn(CsvParserPlugin.java:280)
	at org.embulk.spi.Column.visit(Column.java:54)
	at org.embulk.spi.Schema.visitColumns(Schema.java:81)
	at org.embulk.standards.CsvParserPlugin.run(CsvParserPlugin.java:259)
	... 9 more
Caused by: java.lang.NumberFormatException: For input string: "aaa"
	at java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)
	at java.lang.Long.parseLong(Long.java:589)
	at java.lang.Long.parseLong(Long.java:631)
	at org.embulk.standards.CsvParserPlugin$1.longColumn(CsvParserPlugin.java:277)
	... 12 more

Error: org.embulk.spi.DataException: Invalid record at line 3: aaa,14824,2015-01-27 19:01:23,20150127,embulk jruby
```
