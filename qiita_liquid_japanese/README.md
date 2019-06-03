
```
embulk preview config.yml.liquid
2019-06-03 11:09:59.896 +0900: Embulk v0.9.17
2019-06-03 11:10:00.537 +0900 [WARN] (main): DEPRECATION: JRuby org.jruby.embed.ScriptingContainer is directly injected.
2019-06-03 11:10:02.585 +0900 [INFO] (main): Gem's home and path are set by default: "/path/to/.embulk/lib/gems"
2019-06-03 11:10:04.218 +0900 [INFO] (main): Started Embulk v0.9.17
2019-06-03 11:10:04.290 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-row (0.5.1)
2019-06-03 11:10:04.313 +0900 [INFO] (0001:preview): Listing local files at directory './csv' filtering filename by prefix 'sample_'
2019-06-03 11:10:04.314 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2019-06-03 11:10:04.316 +0900 [INFO] (0001:preview): Loading files [./csv/sample_01.csv]
2019-06-03 11:10:04.323 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
+---------+--------------+-------------------------+-------------------------+----------------+
| id:long | account:long |          time:timestamp |      purchase:timestamp | comment:string |
+---------+--------------+-------------------------+-------------------------+----------------+
|       4 |       11,270 | 2015-01-29 11:54:36 UTC | 2015-01-29 00:00:00 UTC |            日本語 |
+---------+--------------+-------------------------+-------------------------+----------------+
```

```yaml
in:
  type: file
  path_prefix: ./csv/sample_
#  decoders:
#  - {type: gzip}
  parser:
    charset: UTF-8
    newline: LF
    type: csv
    delimiter: ','
    quote: '"'
    escape: '"'
    null_string: 'NULL'
    trim_if_not_quoted: false
    skip_header_lines: 1
    allow_extra_columns: false
    allow_optional_columns: false
    columns:
    - {name: id, type: long}
    - {name: account, type: long}
    - {name: time, type: timestamp, format: '%Y-%m-%d %H:%M:%S'}
    - {name: purchase, type: timestamp, format: '%Y%m%d'}
    - {name: comment, type: string}
out: {type: stdout}
{% include 'common/filter' %}
```

```yaml
filters:
  - type: row
    where: |-
      (
        comment = '日本語'
      )
```
