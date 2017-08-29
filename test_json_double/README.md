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
