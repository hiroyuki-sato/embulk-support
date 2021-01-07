

```json
{"a": 1, "b": {"c": [{"d": 1}]}, "e": [{"f": 1}]}
{"a": 2, "b": {"c": [{"d": 2}]}, "e": [{"f": 2}]}
```


```yaml
in:
  type: file
  path_prefix: sample2.json
  parser:
    type: json
    columns:
    - { name: a, type: string }
    - { name: b, type: json }
    - { name: e, type: json }
out:
  type: stdout
```


```
+----------+-----------------+-----------+
| a:string |          b:json |    e:json |
+----------+-----------------+-----------+
|        1 | {"c":[{"d":1}]} | [{"f":1}] |
|        2 | {"c":[{"d":2}]} | [{"f":2}] |
+----------+-----------------+-----------+
```
