## Embulk

[Use of deprecated core methods around JRuby ScriptingContainer and Timestamp](https://github.com/embulk/embulk/issues/745)

embulk-filer-row 0.5.0 use new API `TimestampParser(String format, DateTimeZone defaultTimeZone)`

### 0.8.30

```
embulk preview config.yml
2017-08-24 22:22:48.365 +0900: Embulk v0.8.30
2017-08-24 22:22:50.999 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-row (0.5.0)
2017-08-24 22:22:51.017 +0900 [INFO] (0001:preview): Listing local files at directory 'fuga/csv' filtering filename by prefix 'sample_'
2017-08-24 22:22:51.017 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-24 22:22:51.020 +0900 [INFO] (0001:preview): Loading files [fuga/csv/sample_01.csv.gz]
2017-08-24 22:22:51.026 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
+---------+--------------+-------------------------+-------------------------+----------------------------+
| id:long | account:long |          time:timestamp |      purchase:timestamp |             comment:string |
+---------+--------------+-------------------------+-------------------------+----------------------------+
|       1 |       32,864 | 2015-01-27 19:23:49 UTC | 2015-01-27 00:00:00 UTC |                     embulk |
|       2 |       14,824 | 2015-01-27 19:01:23 UTC | 2015-01-27 00:00:00 UTC |               embulk jruby |
|       3 |       27,559 | 2015-01-28 02:20:02 UTC | 2015-01-28 00:00:00 UTC | Embulk "csv" parser plugin |
|       4 |       11,270 | 2015-01-29 11:54:36 UTC | 2015-01-29 00:00:00 UTC |                            |
+---------+--------------+-------------------------+-------------------------+----------------------------+
```

### 0.8.27

```
2017-08-24 22:13:07.156 +0900: Embulk v0.8.27
2017-08-24 22:13:08.219 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-row (0.5.0)
2017-08-24 22:13:08.240 +0900 [INFO] (0001:preview): Listing local files at directory '/private/tmp/fuga/csv' filtering filename by prefix 'sample_'
2017-08-24 22:13:08.241 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-24 22:13:08.243 +0900 [INFO] (0001:preview): Loading files [/private/tmp/fuga/csv/sample_01.csv.gz]
2017-08-24 22:13:08.251 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
LoadError: load error: embulk/command/embulk_main -- java.lang.NoSuchMethodError: org.embulk.spi.time.TimestampParser.<init>(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)V
  require at org/jruby/RubyKernel.java:956
  require at uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/rubygems/core_ext/kernel_require.rb:55
   <main> at file:/private/tmp/embulk-0.8.27.jar!/embulk/command/embulk_bundle.rb:46
```

