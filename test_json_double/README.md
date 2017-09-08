## Summary

| plugin                    | Double(-1.234e-5)  | Long(12345e3) |
|---------------------------|--------------------|---------------|
| embulk-filter-expand_json | OK                 | NG            |
| json parser (builtin)     | OK                 | NG            |


## sample

input data

```
{ "double":-1.234e-5, "string":"string","long":12345e3, "boolean":true }
```

`embulk preview test_json.yml`

```
+-----------------------------------------------------------------------+
|                                                           record:json |
+-----------------------------------------------------------------------+
| {"string":"string","boolean":true,"long":1.2345E7,"double":-1.234E-5} |
+-----------------------------------------------------------------------+
```

12345e3 -> 1.2345E7


## embulk exponential test

```
embulk preview -G test.yml
2017-08-29 22:52:53.338 +0900: Embulk v0.8.31
2017-08-29 22:52:56.183 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-expand_json (0.2.0)
2017-08-29 22:52:56.204 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-calc (0.1.0)
2017-08-29 22:52:56.235 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'test.json'
2017-08-29 22:52:56.235 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-29 22:52:56.238 +0900 [INFO] (0001:preview): Loading files [test.json]
2017-08-29 22:52:56.248 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-08-29 22:52:56.305 +0900 [INFO] (0001:preview): removed column: name: record, type: json, index: 0
2017-08-29 22:52:56.305 +0900 [INFO] (0001:preview): added column: name: double, type: double, options: {}, index: 0
2017-08-29 22:52:56.305 +0900 [INFO] (0001:preview): added column: name: string, type: string, options: {}, index: 1
2017-08-29 22:52:56.305 +0900 [INFO] (0001:preview): added column: name: long, type: long, options: {}, index: 2
2017-08-29 22:52:56.305 +0900 [INFO] (0001:preview): added column: name: boolean, type: boolean, options: {}, index: 3
*************************** 1 ***************************
 double ( double) : -1.2340000000000002E-4
 string ( string) : string
   long (   long) : 12,345
boolean (boolean) : true
```


## parse long column with exp value.

```
2017-08-30 08:48:26.183 +0900: Embulk v0.8.31
2017-08-30 08:48:29.022 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-expand_json (0.2.0)
2017-08-30 08:48:29.044 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-calc (0.1.0)
2017-08-30 08:48:29.074 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'test.json'
2017-08-30 08:48:29.074 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-30 08:48:29.077 +0900 [INFO] (0001:preview): Loading files [test.json]
2017-08-30 08:48:29.086 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-08-30 08:48:29.143 +0900 [INFO] (0001:preview): removed column: name: record, type: json, index: 0
2017-08-30 08:48:29.143 +0900 [INFO] (0001:preview): added column: name: double, type: double, options: {}, index: 0
2017-08-30 08:48:29.143 +0900 [INFO] (0001:preview): added column: name: string, type: string, options: {}, index: 1
2017-08-30 08:48:29.143 +0900 [INFO] (0001:preview): added column: name: long, type: long, options: {}, index: 2
2017-08-30 08:48:29.143 +0900 [INFO] (0001:preview): added column: name: boolean, type: boolean, options: {}, index: 3
2017-08-30 08:48:29.218 +0900 [WARN] (0001:preview): Skipped an invalid record (Failed to parse '1.2345E7' as long)
org.embulk.exec.NoSampleException: No input records to preview
	at org.embulk.exec.PreviewExecutor$SamplingPageOutput.finish(PreviewExecutor.java:204)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.filter.calc.CalcFilterPlugin$1.finish(CalcFilterPlugin.java:119)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.filter.expand_json.FilteredPageOutput.finish(FilteredPageOutput.java:239)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.standards.JsonParserPlugin.run(JsonParserPlugin.java:135)
	at org.embulk.spi.FileInputRunner.run(FileInputRunner.java:156)
	at org.embulk.exec.PreviewExecutor$2$1.run(PreviewExecutor.java:141)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:96)
	at org.embulk.spi.util.Filters$RecursiveControl$1.run(Filters.java:92)
	at org.embulk.filter.calc.CalcFilterPlugin.transaction(CalcFilterPlugin.java:65)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:87)
	at org.embulk.spi.util.Filters$RecursiveControl$1.run(Filters.java:92)
	at org.embulk.filter.expand_json.ExpandJsonFilterPlugin.transaction(ExpandJsonFilterPlugin.java:74)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:87)
	at org.embulk.spi.util.Filters.transaction(Filters.java:49)
	at org.embulk.exec.PreviewExecutor$2.run(PreviewExecutor.java:130)
	at org.embulk.spi.FileInputRunner$RunnerControl$1$1.run(FileInputRunner.java:126)
	at org.embulk.standards.JsonParserPlugin.transaction(JsonParserPlugin.java:82)
	at org.embulk.spi.FileInputRunner$RunnerControl$1.run(FileInputRunner.java:120)
	at org.embulk.spi.util.Decoders$RecursiveControl.transaction(Decoders.java:77)
	at org.embulk.spi.util.Decoders.transaction(Decoders.java:33)
	at org.embulk.spi.FileInputRunner$RunnerControl.run(FileInputRunner.java:117)
	at org.embulk.exec.BufferFileInputPlugin.transaction(BufferFileInputPlugin.java:26)
	at org.embulk.spi.FileInputRunner.transaction(FileInputRunner.java:67)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:127)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:111)
	at org.embulk.exec.PreviewExecutor.access$000(PreviewExecutor.java:31)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:83)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:79)
	at org.embulk.spi.Exec.doWith(Exec.java:25)
	at org.embulk.exec.PreviewExecutor.preview(PreviewExecutor.java:79)
	at org.embulk.EmbulkEmbed.preview(EmbulkEmbed.java:169)
	at org.embulk.EmbulkRunner.previewInternal(EmbulkRunner.java:259)
	at org.embulk.EmbulkRunner.preview(EmbulkRunner.java:129)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:470)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:99)
	at org.embulk.cli.Main.main(Main.java:28)

Error: No input records to preview
```

### Parse long with exponential in expand_json

```
2017-08-30 08:49:34.640 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-expand_json (0.2.0)
2017-08-30 08:49:34.661 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-calc (0.1.0)
2017-08-30 08:49:34.691 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'test.json'
2017-08-30 08:49:34.692 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-30 08:49:34.694 +0900 [INFO] (0001:preview): Loading files [test.json]
2017-08-30 08:49:34.702 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-08-30 08:49:34.770 +0900 [INFO] (0001:preview): Loaded plugin embulk-parser-none (0.2.0)
2017-08-30 08:49:34.786 +0900 [INFO] (0001:preview): removed column: name: record, type: string, index: 0
2017-08-30 08:49:34.786 +0900 [INFO] (0001:preview): added column: name: double, type: double, options: {}, index: 0
2017-08-30 08:49:34.786 +0900 [INFO] (0001:preview): added column: name: string, type: string, options: {}, index: 1
2017-08-30 08:49:34.786 +0900 [INFO] (0001:preview): added column: name: long, type: long, options: {}, index: 2
2017-08-30 08:49:34.786 +0900 [INFO] (0001:preview): added column: name: boolean, type: boolean, options: {}, index: 3
2017-08-30 08:49:34.847 +0900 [WARN] (0001:preview): Skipped an invalid record (Failed to parse '1.2345E7' as long)
org.embulk.exec.NoSampleException: No input records to preview
	at org.embulk.exec.PreviewExecutor$SamplingPageOutput.finish(PreviewExecutor.java:204)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.filter.calc.CalcFilterPlugin$1.finish(CalcFilterPlugin.java:119)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.filter.expand_json.FilteredPageOutput.finish(FilteredPageOutput.java:239)
	at org.embulk.spi.PageBuilder.finish(PageBuilder.java:264)
	at org.embulk.parser.NoneParserPlugin.run(NoneParserPlugin.java:76)
	at org.embulk.spi.FileInputRunner.run(FileInputRunner.java:156)
	at org.embulk.exec.PreviewExecutor$2$1.run(PreviewExecutor.java:141)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:96)
	at org.embulk.spi.util.Filters$RecursiveControl$1.run(Filters.java:92)
	at org.embulk.filter.calc.CalcFilterPlugin.transaction(CalcFilterPlugin.java:65)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:87)
	at org.embulk.spi.util.Filters$RecursiveControl$1.run(Filters.java:92)
	at org.embulk.filter.expand_json.ExpandJsonFilterPlugin.transaction(ExpandJsonFilterPlugin.java:74)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:87)
	at org.embulk.spi.util.Filters.transaction(Filters.java:49)
	at org.embulk.exec.PreviewExecutor$2.run(PreviewExecutor.java:130)
	at org.embulk.spi.FileInputRunner$RunnerControl$1$1.run(FileInputRunner.java:126)
	at org.embulk.parser.NoneParserPlugin.transaction(NoneParserPlugin.java:51)
	at org.embulk.spi.FileInputRunner$RunnerControl$1.run(FileInputRunner.java:120)
	at org.embulk.spi.util.Decoders$RecursiveControl.transaction(Decoders.java:77)
	at org.embulk.spi.util.Decoders.transaction(Decoders.java:33)
	at org.embulk.spi.FileInputRunner$RunnerControl.run(FileInputRunner.java:117)
	at org.embulk.exec.BufferFileInputPlugin.transaction(BufferFileInputPlugin.java:26)
	at org.embulk.spi.FileInputRunner.transaction(FileInputRunner.java:67)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:127)
	at org.embulk.exec.PreviewExecutor.doPreview(PreviewExecutor.java:111)
	at org.embulk.exec.PreviewExecutor.access$000(PreviewExecutor.java:31)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:83)
	at org.embulk.exec.PreviewExecutor$1.run(PreviewExecutor.java:79)
	at org.embulk.spi.Exec.doWith(Exec.java:25)
	at org.embulk.exec.PreviewExecutor.preview(PreviewExecutor.java:79)
	at org.embulk.EmbulkEmbed.preview(EmbulkEmbed.java:169)
	at org.embulk.EmbulkRunner.previewInternal(EmbulkRunner.java:259)
	at org.embulk.EmbulkRunner.preview(EmbulkRunner.java:129)
	at org.embulk.cli.EmbulkRun.runSubcommand(EmbulkRun.java:470)
	at org.embulk.cli.EmbulkRun.run(EmbulkRun.java:99)
	at org.embulk.cli.Main.main(Main.java:28)

Error: No input records to preview
```

## Biglong

```
+----------------------------------+
|                      record:json |
+----------------------------------+
| {"biglong":92233720368547758070} |
+----------------------------------+
```
