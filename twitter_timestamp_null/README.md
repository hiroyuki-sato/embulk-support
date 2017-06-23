
```
2017-06-24 00:32:16.585 +0900: Embulk v0.8.25
2017-06-24 00:32:27.960 +0900 [INFO] (0001:preview): Listing local files at directory 'csv' filtering filename by prefix 'sample_'
2017-06-24 00:32:27.962 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-06-24 00:32:27.965 +0900 [INFO] (0001:preview): Loading files [csv/sample_01.csv]
2017-06-24 00:32:27.974 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
+---------+--------------+-------------------------+-------------------------+----------------------------+
| id:long | account:long |          time:timestamp |      purchase:timestamp |             comment:string |
+---------+--------------+-------------------------+-------------------------+----------------------------+
|       1 |       32,864 | 2015-01-27 19:23:49 UTC | 2015-01-27 00:00:00 UTC |                     embulk |
|       2 |       14,824 | 2015-01-27 19:01:23 UTC | 2015-01-27 00:00:00 UTC |               embulk jruby |
|       3 |       27,559 | 2015-01-28 02:20:02 UTC | 2015-01-28 00:00:00 UTC | Embulk "csv" parser plugin |
|       4 |       11,270 | 2015-01-29 11:54:36 UTC |                         |                            |
+---------+--------------+-------------------------+-------------------------+----------------------------+
```


