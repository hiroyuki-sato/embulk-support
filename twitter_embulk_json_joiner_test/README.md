## Example

```
2017-08-31 18:48:40.103 +0900: Embulk v0.8.31
2017-08-31 18:48:43.197 +0900 [INFO] (0001:preview): Loaded plugin embulk-filter-json_key_joiner (0.1.0)
2017-08-31 18:48:43.230 +0900 [INFO] (0001:preview): Listing local files at directory '.' filtering filename by prefix 'test.json'
2017-08-31 18:48:43.231 +0900 [INFO] (0001:preview): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-08-31 18:48:43.233 +0900 [INFO] (0001:preview): Loading files [test.json]
2017-08-31 18:48:43.241 +0900 [INFO] (0001:preview): Try to read 32,768 bytes from input source
+------------------------------------------------------------------------------+
|                                                                  record:json |
+------------------------------------------------------------------------------+
|     {"added":"fuga","ip":"93.184.216.34","time":1455829282,"name":"frsyuki"} |
|     {"added":"fuga","ip":"172.36.8.109","time":1455829282,"name":"sadayuki"} |
| {"added":"fuga","ip":"example.com","time":1455829284,"name":"Treasure Data"} |
|    {"added":"fuga","ip":"10.98.43.1","time":1455829282,"name":"MessagePack"} |
+------------------------------------------------------------------------------+
```
