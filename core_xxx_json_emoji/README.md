## Environment

* macOS 10.12.5
* embulk 0.8.22
* embulk-parser-jsonl: 0.2.0
* embulk-parser-jsonpath: 0.2.0

## json

```
embulk preview config_json.yml
2017-05-28 13:28:58.736 +0900: Embulk v0.8.22
2017-05-28 13:29:10.122 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'sample_family.json'
2017-05-28 13:29:10.126 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-05-28 13:29:10.129 +0900 [INFO] (0001:preview): Loading files [sample_family.json]
2017-05-28 13:29:10.141 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
+------------------------------------------+
|                              record:json |
+------------------------------------------+
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
| {"emoji":"\uD83D\uDC6A","name":"family"} |
+------------------------------------------+
```

## jsonpath


```
embulk preview config_jsonpath.yml
2017-05-28 13:09:23.984 +0900: Embulk v0.8.22
2017-05-28 13:09:35.418 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'sample_family_array.json'
2017-05-28 13:09:35.420 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-05-28 13:09:35.424 +0900 [INFO] (0001:preview): Loading files [sample_family_array.json]
2017-05-28 13:09:35.435 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-05-28 13:09:35.597 +0900 [INFO] (0001:preview): Loaded plugin embulk-parser-jsonpath (0.2.0)
2017-05-28 13:09:35.645 +0900 [INFO] (0001:preview): JSONPath = $
+-------------+--------------+
| name:string | emoji:string |
+-------------+--------------+
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
+-------------+--------------+
```

## jsonl


```
embulk preview config_jsonl.yml
2017-05-28 13:27:54.756 +0900: Embulk v0.8.22
2017-05-28 13:28:06.180 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'sample_family.json'
2017-05-28 13:28:06.183 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-05-28 13:28:06.188 +0900 [INFO] (0001:preview): Loading files [sample_family.json]
2017-05-28 13:28:06.199 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
2017-05-28 13:28:06.346 +0900 [INFO] (0001:preview): Loaded plugin embulk-parser-jsonl (0.2.0)
+-------------+--------------+
| name:string | emoji:string |
+-------------+--------------+
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
|      family |           👪 |
+-------------+--------------+
```
