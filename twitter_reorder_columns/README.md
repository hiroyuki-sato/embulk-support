## embulk-filter-column test

See [config.yml](config.yml)

```yaml
filters:
  - type: column
    columns:
    - {name: comment, type: string}
    - {name: purchase, type: timestamp, format: '%Y%m%d'}
    - {name: time, type: timestamp, format: '%Y-%m-%d %H:%M:%S'}
    - {name: account, type: long}
    - {name: id, type: long}
```

```
embulk preview -G config.yml
*************************** 1 ***************************
 comment (   string) : embulk
purchase (timestamp) : 2015-01-27 00:00:00 UTC
    time (timestamp) : 2015-01-27 19:23:49 UTC
 account (     long) : 32,864
      id (     long) : 1
```
