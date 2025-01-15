# SQL NULL Handling Pitfalls

This repository demonstrates a common SQL error related to NULL values and how to correctly handle them.

## Problem
Incorrectly handling NULL values in SQL queries can lead to unexpected and incorrect results.  The `bug.sql` file demonstrates a query where NULL values are not properly accounted for.  Aggregate functions may also yield unexpected results when NULLs are present.

## Solution
The `bugSolution.sql` file offers the corrected query using appropriate techniques for handling NULL values during comparisons and aggregation.  It includes explicit NULL checks (using `IS NULL` or `IS NOT NULL`) to address the problems shown in `bug.sql`.

## Usage
1. Clone this repository.
2. Create a sample SQL database containing the `customers` table with an `order_total` column that includes some NULL values.
3. Execute both `bug.sql` and `bugSolution.sql` against your database to observe the difference.

Remember to always be mindful of NULL values when querying data and use appropriate techniques to handle them correctly.