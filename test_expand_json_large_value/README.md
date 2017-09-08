## Loarge number convert test (long and string)

```json
{ "biglong":92233720368547758070 , "biglong_exp":1e20 }
```

### bignum_long.yml

```
embulk preview bignum_long.yml
2017-09-08 20:14:23.724 +0900: Embulk v0.8.32
...
org.embulk.spi.DataException: Found an invalid record
```


### bignum_string.yml

```
embulk preview bignum_string.yml
2017-09-08 20:09:58.872 +0900: Embulk v0.8.32
+----------------------+--------------------+
|       biglong:string | biglong_exp:string |
+----------------------+--------------------+
| 92233720368547758070 |             1.0E20 |
+----------------------+--------------------+
```
