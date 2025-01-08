create view "non-zero total amounts by matching assignment" as 
SELECT
  "Matching Assignment",
  sum("Amount in Doc Curr") AS total_b
FROM
  "Matching Assignment US/CA"
GROUP BY
  "Matching Assignment"
HAVING
  (sum("Amount in Doc Curr") <> (0)::numeric);