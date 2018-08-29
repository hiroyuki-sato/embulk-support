
```
1,32864,2015-01-27 19:23:49.123,20150127,embulk
2,14824,2015-01-27 19:01:23.123,20150127,embulk jruby
3,27559,2015-01-28 02:20:02.123,20150128,"Embulk ""csv"" parser plugin"
4,11270,2015-01-29 11:54:36.123,20150129,NULL
```


```yaml
- {name: time, type: timestamp, format: '%Y-%m-%d %H:%M:%S.%L'}
```


```
*************************** 1 ***************************
      id (     long) : 1
 account (     long) : 32,864
    time (timestamp) : 2015-01-27 19:23:49.123 UTC
purchase (timestamp) : 2015-01-27 00:00:00 UTC
 comment (   string) : embulk
*************************** 2 ***************************
      id (     long) : 2
 account (     long) : 14,824
    time (timestamp) : 2015-01-27 19:01:23.123 UTC
purchase (timestamp) : 2015-01-27 00:00:00 UTC
 comment (   string) : embulk jruby
*************************** 3 ***************************
      id (     long) : 3
 account (     long) : 27,559
    time (timestamp) : 2015-01-28 02:20:02.123 UTC
purchase (timestamp) : 2015-01-28 00:00:00 UTC
 comment (   string) : Embulk "csv" parser plugin
*************************** 4 ***************************
      id (     long) : 4
 account (     long) : 11,270
    time (timestamp) : 2015-01-29 11:54:36.123 UTC
purchase (timestamp) : 2015-01-29 00:00:00 UTC
 comment (   string) :
```
