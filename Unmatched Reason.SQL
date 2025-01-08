CREATe VIEW "Unmatched Reason" AS
SELECT
  "Invoice#",
  "Reference Key",
  "Amount in Doc Curr",
  "Posting Date",
  "Matching Assignment",
  "Unmatched Reason"
FROM
  us_ca_unmatched
WHERE
  ("Solved?" = false)
ORDER BY
  "Matching Assignment",
  "Reference Key",
  "Posting Date";