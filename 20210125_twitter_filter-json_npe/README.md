
##


```
embulk run both_filters.yml
2021-01-25 22:24:26.286 +0900: Embulk v0.9.23
2021-01-25 22:24:27.417 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2021-01-25 22:24:30.317 +0900 [INFO] (main): Gem's home and path are set by default: "/Users/user/.embulk/lib/gems"
2021-01-25 22:24:31.584 +0900 [INFO] (main): Started Embulk v0.9.23
2021-01-25 22:24:31.748 +0900 [INFO] (0001:transaction): Loaded plugin embulk-filter-flatten_json (0.0.2)
2021-01-25 22:24:31.816 +0900 [INFO] (0001:transaction): Loaded plugin embulk-filter-expand_json (0.5.2)
2021-01-25 22:24:31.873 +0900 [INFO] (0001:transaction): Loaded plugin embulk-parser-none (0.2.0)
2021-01-25 22:24:31.891 +0900 [INFO] (0001:transaction): Listing local files at directory '.' filtering filename by prefix 'test_data.json'
2021-01-25 22:24:31.892 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2021-01-25 22:24:31.896 +0900 [INFO] (0001:transaction): Loading files [./test_data.json]
2021-01-25 22:24:31.960 +0900 [INFO] (0001:transaction): removed column: name: payload, type: string, index: 0
2021-01-25 22:24:31.960 +0900 [INFO] (0001:transaction): added column: name: author__login, type: string, options: {}, index: 0
2021-01-25 22:24:31.960 +0900 [INFO] (0001:transaction): added column: name: createdAt, type: string, options: {}, index: 1
2021-01-25 22:24:31.960 +0900 [INFO] (0001:transaction): added column: name: additions, type: string, options: {}, index: 2
2021-01-25 22:24:31.961 +0900 [INFO] (0001:transaction): added column: name: deletions, type: string, options: {}, index: 3
2021-01-25 22:24:31.961 +0900 [INFO] (0001:transaction): added column: name: commits__nodes_0__commit__authoredDate, type: string, options: {}, index: 4
2021-01-25 22:24:31.961 +0900 [INFO] (0001:transaction): added column: name: mergedAt, type: string, options: {}, index: 5
2021-01-25 22:24:31.961 +0900 [INFO] (0001:transaction): added column: name: title, type: string, options: {}, index: 6
2021-01-25 22:24:31.961 +0900 [INFO] (0001:transaction): added column: name: url, type: string, options: {}, index: 7
2021-01-25 22:24:31.967 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2021-01-25 22:24:31.975 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
XXXXXXXX,2021-01-22T23:40:55Z,2,0,,2021-01-22T23:47:34Z,XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX,https://XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
...
XXXXXXXX,2021-01-22T23:40:55Z,2,0,,2021-01-22T23:47:34Z,XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX,https://XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
org.embulk.deps.buffer.PooledBufferAllocatorImpl$BufferDoubleReleasedException: A Buffer detected double release() calls. The buffer has already been released at:
	at org.embulk.deps.buffer.PooledBufferAllocatorImpl$BufferBasedOnNettyByteBuf.release(PooledBufferAllocatorImpl.java:40)
	at org.embulk.spi.PageReader.close(PageReader.java:151)
	at org.embulk.filter.flatten_json.FlattenJsonFilterPlugin$1.close(FlattenJsonFilterPlugin.java:117)
	at org.embulk.spi.CloseResource.close(CloseResource.java:25)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput.close(LocalExecutorPlugin.java:453)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.runInputTask(LocalExecutorPlugin.java:281)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor.access$100(LocalExecutorPlugin.java:194)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:233)
	at org.embulk.exec.LocalExecutorPlugin$ScatterExecutor$1.call(LocalExecutorPlugin.java:230)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)
Caused by: java.lang.Throwable
	at org.embulk.deps.buffer.PooledBufferAllocatorImpl$BufferBasedOnNettyByteBuf.release(PooledBufferAllocatorImpl.java:45)
	at org.embulk.spi.Page.release(Page.java:68)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput$OutputWorker.call(LocalExecutorPlugin.java:360)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput$OutputWorker.call(LocalExecutorPlugin.java:291)
	... 4 more
2021-01-25 22:24:32.188 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
org.embulk.exec.PartialExecutionException: java.lang.NullPointerException
	at org.embulk.exec.BulkLoader$LoaderState.buildPartialExecuteException(BulkLoader.java:340)
	at org.embulk.exec.BulkLoader.doRun(BulkLoader.java:566)
	at org.embulk.exec.BulkLoader.access$000(BulkLoader.java:35)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:353)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:350)
	at org.embulk.spi.Exec.doWith(Exec.java:22)
	at org.embulk.exec.BulkLoader.run(BulkLoader.java:350)
	at org.embulk.EmbulkEmbed.run(EmbulkEmbed.java:242)
	at org.embulk.EmbulkRunner.runInternal(EmbulkRunner.java:291)
	at org.embulk.EmbulkRunner.run(EmbulkRunner.java:155)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:431)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:90)
	at org.embulk.cli.Main.main(Main.java:64)
Caused by: java.lang.NullPointerException
	at org.embulk.spi.PageBuilder.writeString(PageBuilder.java:159)
	at org.embulk.spi.PageBuilder.access$1300(PageBuilder.java:13)
	at org.embulk.spi.PageBuilder$StringColumnValue.writeNotNull(PageBuilder.java:453)
	at org.embulk.spi.PageBuilder$AbstractColumnValue.write(PageBuilder.java:372)
	at org.embulk.spi.PageBuilder$Row.write(PageBuilder.java:311)
	at org.embulk.spi.PageBuilder$Row.access$800(PageBuilder.java:247)
	at org.embulk.spi.PageBuilder.addRecord(PageBuilder.java:185)
	at org.embulk.filter.expand_json.FilteredPageOutput.add(FilteredPageOutput.java:239)
	at org.embulk.spi.PageBuilder.doFlush(PageBuilder.java:214)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:226)
	at org.embulk.filter.flatten_json.FlattenJsonFilterPlugin$1.add(FlattenJsonFilterPlugin.java:100)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput$OutputWorker.call(LocalExecutorPlugin.java:351)
	at org.embulk.exec.LocalExecutorPlugin$ScatterTransactionalPageOutput$OutputWorker.call(LocalExecutorPlugin.java:291)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
	at java.lang.Thread.run(Thread.java:748)

Error: java.lang.NullPointerException
```
