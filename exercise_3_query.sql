-- MySQL 5.x version --
SELECT
Id, NAME, DATE, Id_collection, Price
FROM
(
    SELECT
        *,
        @rn := IF(@prev = Id_collection, @rn + 1, 1) AS rn,
        @prev := Id_collection
    FROM `caseplace_test_table`
    JOIN (SELECT @prev := NULL, @rn := 0) AS vars
    ORDER BY Id_collection, date DESC
) AS T1
WHERE rn <= 2;

-- MySQL 8 version (untested!) --
SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY Id_collection ORDER BY date DESC) AS n
    FROM `caseplace_test_table`
) AS x
WHERE n <= 2
ORDER BY n, Id_collection DESC