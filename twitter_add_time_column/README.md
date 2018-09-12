
```yaml
filters:
- type: column
  add_columns:
    - src: time
      name: add_time
#      type: string
#      format: "%Y/%m/%d"
- type: typecast
  columns:
    - name: add_time
      type: string
      format: "%Y/%m/%d"
```

```
*************************** 1 ***************************
      id (     long) : 1
 account (     long) : 32,864
    time (timestamp) : 2015-01-27 19:23:49 UTC
purchase (timestamp) : 2015-01-27 00:00:00 UTC
 comment (   string) : embulk
add_time (   string) : 2015/01/27
*************************** 2 ***************************
      id (     long) : 2
 account (     long) : 14,824
    time (timestamp) : 2015-01-27 19:01:23 UTC
purchase (timestamp) : 2015-01-27 00:00:00 UTC
 comment (   string) : embulk jruby
add_time (   string) : 2015/01/27
*************************** 3 ***************************
      id (     long) : 3
 account (     long) : 27,559
    time (timestamp) : 2015-01-28 02:20:02 UTC
purchase (timestamp) : 2015-01-28 00:00:00 UTC
 comment (   string) : Embulk "csv" parser plugin
add_time (   string) : 2015/01/28
*************************** 4 ***************************
      id (     long) : 4
 account (     long) : 11,270
    time (timestamp) : 2015-01-29 11:54:36 UTC
purchase (timestamp) : 2015-01-29 00:00:00 UTC
 comment (   string) :
add_time (   string) : 2015/01/29
```
