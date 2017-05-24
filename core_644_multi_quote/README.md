```
abc, ab , www.abc.com/2017/04/abc.html?s=ab&abc=test ,2017-04-13 00:02:29 , www.facebook.com/ , ea , ba , ab ba abc ab p! - news
bc, ab , www.abcd.com/2016/04/abc.html?s=ab&abc=test ,2017-04-13 00:02:29 , www.abc.com/ , ea , ba , ab ba abc ab p! - news
```

```
cid (string): abc
dv (string): ab
url (string) : www.abc.com/2017/04/abc.html?s=ab&abc=test
visit (timestamp, format: '%Y-%m-%d %H:%M:%S') : 2017-04-13 00:02:29
new_url (string) : www.facebook.com/
sub (string) : ea
city (string) : ba
page (string) : ab ba abc ab p! - news
```

```yaml
in:
  type: file
  path_prefix: sample.txt
#  decoders:
#    type: gzip}
  parser:
    charset: UTF-8
    newline: LF
    type: csv
    delimiter: ','
    quote: '"'
    escape: '"'
    trim_if_not_quoted: false
    skip_header_lines: 0
    allow_extra_columns: false
    allow_optional_columns: false
    stop_on_invalid_record: true
    columns:
      - {name: cid , type: string}
      - {name: dv, type: string}
      - {name: url, type: string}
      - {name: visit, type: timestamp, format: '%Y-%m-%d %H:%M:%S'}
      - {name: new_url, type: string}
      - {name: sub, type: string}
      - {name: city, type: string}
      - {name: page, type: string}
out:
  type: stdout
```
