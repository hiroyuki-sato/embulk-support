
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

```
filters:
  - type: insert
    columns:
    - timestamp_format:
  - type: ruby_proc
    columns:
    - name: timestamp_format
      proc: |
        ->(_,record) do
          if t = record["timestamp"]
            t.strftime("%Y-%m-%d %H:%M:%S.%6N %:z")
          else
            nil
          end
        end
```


```
2015-07-13,2015-07-13 00:00:00.100000000,,90,l6lTsvxd,903.4,true,
2015-07-13,2015-07-13 00:00:00.100000000,,91,XoALSEQg,394.5,true,
2015-07-13,2015-07-13 00:00:00.100000000,,92,0hgDRI_m,810.9,true,
2015-07-13,2015-07-13 00:00:00.100000000,,93,KjCRAc-A,477.4,true,
2015-07-13,2015-07-13 00:00:00.100000000,,94,fyQVGlT8,725.3,true,
2015-07-13,2015-07-13 00:00:00.100000000,,95,FpBYRPWK,316.6,true,
2015-07-13,2015-07-13 00:00:00.100000000,,96,9ikvnUqp,369.5,true,
2015-07-13,2015-07-13 00:00:00.100000000,,97,RRNYDAzK,506.5,true,
2015-07-13,2015-07-13 00:00:00.100000000,,90,l6lTsvxd,903.4,false,
2015-07-13,2015-07-13 00:00:00.100000000,,91,XoALSEQg,394.5,false,
2015-07-13,2015-07-13 00:00:00.100000000,,92,0hgDRI_m,810.9,false,
2015-07-13,2015-07-13 00:00:00.100000000,,93,KjCRAc-A,477.4,false,
2015-07-13,2015-07-13 00:00:00.100000000,,94,fyQVGlT8,725.3,false,
2015-07-13,2015-07-13 00:00:00.100000000,,95,FpBYRPWK,316.6,false,
2015-07-13,2015-07-13 00:00:00.100000000,,96,9ikvnUqp,369.5,false,
2015-07-13,2015-07-13 00:00:00.100000000,,97,RRNYDAzK,506.5,false,
```
