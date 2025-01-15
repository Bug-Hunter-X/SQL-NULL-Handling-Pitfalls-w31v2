The correct query handles NULL values explicitly:

```sql
SELECT * FROM customers WHERE order_total > 100 OR order_total IS NULL;
```

This query will correctly identify all customers where `order_total` is greater than 100.  Alternatively, if you want to ignore rows with a `NULL` order total you can use

```sql
SELECT * FROM customers WHERE order_total > 100 AND order_total IS NOT NULL;
```

For aggregate functions, you can use `COALESCE` to replace NULL values with a default value (e.g., 0) before performing the calculation:

```sql
SELECT AVG(COALESCE(order_total, 0)) AS average_order_total FROM customers;
```

This ensures that NULL values do not skew the average.  Always test your queries thoroughly to avoid unexpected results caused by NULL values.