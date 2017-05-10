## MySQL geomery example

### create sample

```sql
CREATE TABLE IF NOT EXISTS `geo_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `geometry` geometry NOT NULL COMMENT 'geometry',
  PRIMARY KEY (`id`),
  SPATIAL KEY `geometry` (`geometry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `geo_table` (`geometry`) 
VALUES (
  GeomFromText('POINT(1 1)')
);
```

### check with SQL.

```
mysql> select id,ST_AsGeoJSON(geometry) as geom FROM `geo_table`;
+----+------------------------------------------+
| id | geom                                     |
+----+------------------------------------------+
|  1 | {"type": "Point", "coordinates": [1, 1]} |
+----+------------------------------------------+
1 row in set (0.00 sec)
```


test.yml

```yml
in:
  type: mysql
  database: embulk_test
  user: root
  password: {{ env.mysql_password }}
  host: 127.0.0.1
  query: "select id,CAST(ST_AsGeoJSON(geometry) as char) as geom from geo_table"
  column_options:
    geom:
      type: json
out:
  type: stdout
  
```

## embulk

```
embulk preview test.yml.liquid
2017-05-10 20:49:10.738 +0900: Embulk v0.8.18
2017-05-10 20:49:12.149 +0900 [INFO] (0001:preview): Loaded plugin embulk-input-mysql (0.8.2)
2017-05-10 20:49:12.185 +0900 [INFO] (0001:preview): Fetch size is 10000. Using server-side prepared statement.
2017-05-10 20:49:12.444 +0900 [INFO] (0001:preview): Fetch size is 10000. Using server-side prepared statement.
2017-05-10 20:49:12.450 +0900 [INFO] (0001:preview): SQL: select id,CAST(ST_AsGeoJSON(geometry) as char) as geom from geo_table
2017-05-10 20:49:12.453 +0900 [INFO] (0001:preview): > 0.00 seconds
+---------+--------------------------------------+
| id:long |                            geom:json |
+---------+--------------------------------------+
|       1 | {"coordinates":[1,1],"type":"Point"} |
+---------+--------------------------------------+
```
