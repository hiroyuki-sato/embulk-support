
```yaml
filters:
- type: column
  add_columns:
    - src: time
      name: add_time
- type: typecast
  columns:
    - name: add_time
      type: string
      format: "%Y/%m/%d"
- type: calcite
  query: 'select "add_time","comment","purchase","time","account","id"  from $PAGES'
```

```
+-----------------+----------------------------+-------------------------+-------------------------+--------------+---------+
| add_time:string |             comment:string |      purchase:timestamp |          time:timestamp | account:long | id:long |
+-----------------+----------------------------+-------------------------+-------------------------+--------------+---------+
|      2015/01/27 |                     embulk | 2015-01-27 00:00:00 UTC | 2015-01-27 19:23:49 UTC |       32,864 |       1 |
|      2015/01/27 |               embulk jruby | 2015-01-27 00:00:00 UTC | 2015-01-27 19:01:23 UTC |       14,824 |       2 |
|      2015/01/28 | Embulk "csv" parser plugin | 2015-01-28 00:00:00 UTC | 2015-01-28 02:20:02 UTC |       27,559 |       3 |
|      2015/01/29 |                            | 2015-01-29 00:00:00 UTC | 2015-01-29 11:54:36 UTC |       11,270 |       4 |
+-----------------+----------------------------+-------------------------+-------------------------+--------------+---------+
```
