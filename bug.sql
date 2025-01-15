In SQL, a common but often subtle error involves incorrect handling of NULL values.  Consider this scenario: You want to find all customers whose `order_total` is greater than 100.  A naive query might be:

```sql
SELECT * FROM customers WHERE order_total > 100;
```

However, if some `order_total` values are NULL, this query will not return those customers, even if their order total *should* be greater than 100.  The comparison `NULL > 100` evaluates to UNKNOWN, not true or false, causing those rows to be filtered out.

Another subtle issue is with aggregate functions and NULLs.  `AVG(column)` ignores NULLs, but `SUM(column)` might yield unexpected results if some values are NULL.  Depending on whether you want to treat NULLs as zero or exclude them entirely, you need to handle it explicitly.