
```
2018-04-05 19:41:45.244 +0900: Embulk v0.9.5
2018-04-05 19:41:46.039 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-05 19:41:46.092 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'example.csv'
2018-04-05 19:41:46.093 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2018-04-05 19:41:46.100 +0900 [INFO] (0001:preview): Loading files [example.csv]
2018-04-05 19:41:46.110 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
*************************** 1 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 90
   string (   string) : l6lTsvxd
   double (   double) : 903.4
  boolean (  boolean) : true
*************************** 2 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 91
   string (   string) : XoALSEQg
   double (   double) : 394.5
  boolean (  boolean) : true
*************************** 3 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 92
   string (   string) : 0hgDRI_m
   double (   double) : 810.9
  boolean (  boolean) : true
*************************** 4 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 93
   string (   string) : KjCRAc-A
   double (   double) : 477.4
  boolean (  boolean) : true
*************************** 5 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 94
   string (   string) : fyQVGlT8
   double (   double) : 725.3
  boolean (  boolean) : true
*************************** 6 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 95
   string (   string) : FpBYRPWK
   double (   double) : 316.6
  boolean (  boolean) : true
*************************** 7 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 96
   string (   string) : 9ikvnUqp
   double (   double) : 369.5
  boolean (  boolean) : true
*************************** 8 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 97
   string (   string) : RRNYDAzK
   double (   double) : 506.5
  boolean (  boolean) : true
*************************** 9 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 90
   string (   string) : l6lTsvxd
   double (   double) : 903.4
  boolean (  boolean) : false
*************************** 10 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 91
   string (   string) : XoALSEQg
   double (   double) : 394.5
  boolean (  boolean) : false
*************************** 11 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 92
   string (   string) : 0hgDRI_m
   double (   double) : 810.9
  boolean (  boolean) : false
*************************** 12 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 93
   string (   string) : KjCRAc-A
   double (   double) : 477.4
  boolean (  boolean) : false
*************************** 13 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 94
   string (   string) : fyQVGlT8
   double (   double) : 725.3
  boolean (  boolean) : false
*************************** 14 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 95
   string (   string) : FpBYRPWK
   double (   double) : 316.6
  boolean (  boolean) : false
*************************** 15 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 96
   string (   string) : 9ikvnUqp
   double (   double) : 369.5
  boolean (  boolean) : false
*************************** 16 ***************************
     date (timestamp) : 2015-07-13 00:00:00 UTC
timestamp (timestamp) : 2015-07-13 00:00:00.100 UTC
     null (   string) : 
     long (     long) : 97
   string (   string) : RRNYDAzK
   double (   double) : 506.5
  boolean (  boolean) : false
```

## strftime test.

```yaml
filters:
  - type: insert
    columns:
    - timestamp_format:
  - type: ruby_proc
    columns:
    - name: timestamp_format
      skip_nil: false
      proc: |
        ->(_,record) do
          if t = record["timestamp"]
            t.strftime("%Y-%m-%d %H:%M:%S.%6N %:z")
          else
            nil
            "hoge"
          end
        end
  - type: column
    columns:
    - { name: timestamp_format }
```


```csv
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
2015-07-13 00:00:00.000100 +00:00
```

## JRuby strftime test.

```
% embulk irb
2018-04-05 18:16:27.353 +0900: Embulk v0.9.5
irb(main):001:0> require 'time'
=> true
irb(main):002:0> t = Time.strptime("2015-07-13 00:00:00.100000","%Y-%m-%d %H:%M:%S.%N")
=> 2015-07-13 00:00:00 +0900
irb(main):003:0> l = t.utc
=> 2015-07-12 15:00:00 UTC
irb(main):004:0> puts l.strftime("%Y-%m-%d %H:%M:%S.%6N %:z")
2015-07-12 15:00:00.100000 +00:00
=> nil
```
