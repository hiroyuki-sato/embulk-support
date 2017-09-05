## replace


Create intermediate table

```sql
CREATE TABLE "public"."replace_test_ba1b003b40_bl_tmp" (
  "id" BIGINT,
  "account" BIGINT,
  "time" TIMESTAMP WITH TIME ZONE,
  "purchase" TIMESTAMP WITH TIME ZONE,
  "comment" TEXT
)
```

copy data

```sql
COPY "public"."replace_test_ba1b003b40_bl_tmp" ("id", "account", "time", "purchase", "comment") FROM STDIN
```

replace table.

```sql
DROP TABLE IF EXISTS "public"."replace_test" 

ALTER TABLE "public"."replace_test_ba1b003b40_bl_tmp" RENAME TO "replace_test"
```

