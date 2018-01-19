## JSONPath parser example

```json
[
  {
    "col1": 123,
    "col2": "xyz"
  },
  {
    "col1": 456,
    "col2": "abc"
  }
]
```


```
embulk guess -g jsonpath json_guess_example.yml -o jsonpath_example.yml
embulk run jsonpath_example.yml
```

## JSON parser example

```
{ "col1": 123, "col2": "xyz" }
{ "col1": 456, "col2": "abc" }
```

```
embulk guess json_guess_example.yml -o json_example.yml
embulk run json_example.yml
```
