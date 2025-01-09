SELECT
  "Reference Key",
  count("Status") AS "Status Count"
FROM
  "Matching Assignment US/CA"
WHERE
  ("Changing Status Checked?" = false)
GROUP BY
  "Reference Key"
HAVING
  (count("Status") > 1);