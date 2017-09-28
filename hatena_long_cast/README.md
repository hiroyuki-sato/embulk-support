## double -> long typecast

http://obel.hatenablog.jp/entry/20170926/1506403480

## Use typecast

```yaml
in:
  type: file
  path_prefix: sample.csv
  parser:
    # .. 
    columns:
    - {name: id, type: long}
    - {name: first_name, type: string}
    - {name: age, type: double}
    - {name: gender, type: string}
filters:
  - type: typecast
    columns:
    - {name: id, type: long}
    - {name: first_name, type: string}
    - {name: age, type: long}
    - {name: gender, type: string}
    
out: {type: stdout}
```


```
+---------+-------------------+----------+---------------+
| id:long | first_name:string | age:long | gender:string |
+---------+-------------------+----------+---------------+
|       1 |             kenji |       23 |          male |
|       2 |            takako |       21 |        female |
|       3 |              taro |       22 |          male |
|       4 |            tomoyo |       24 |        female |
+---------+-------------------+----------+---------------+
```



### Note

It's impossible to cast string -> long.

```
2017-09-28 11:49:28.759 +0900: Embulk v0.8.35
2017-09-28 11:49:31.652 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-typecast (0.2.1)
2017-09-28 11:49:31.669 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'sample.csv'
2017-09-28 11:49:31.670 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-09-28 11:49:31.673 +0900 [INFO] (0001:preview): Loading files [sample.csv]
2017-09-28 11:49:31.681 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-09-28 11:49:31.743 +0900 [WARN] (0001:preview): cannot cast String to long: "22.0"
2017-09-28 11:49:31.743 +0900 [WARN] (0001:preview): cannot cast String to long: "24.0"
+---------+-------------------+----------+---------------+
| id:long | first_name:string | age:long | gender:string |
+---------+-------------------+----------+---------------+
|       1 |             kenji |       23 |          male |
|       2 |            takako |       21 |        female |
|       3 |              taro |          |          male |
|       4 |            tomoyo |          |        female |
+---------+-------------------+----------+---------------+
```
