CREATE TABLE "table_name" -- Create

SELECT "column_name/columne_names" FROM "table_name" -- Return columns
    SELECT DISTINCT "column_name" FROM "table_name" -- select all unique values

ALTER TABLE -- Edit table
    ADD "something" -- Add something in editable table

REFERENCES "table_name/table_name('column_name')" -- Path to table or table("column_name")

INSERT INTO "table_name" VALUES ("something", "something", "something", "etc"); -- Insert values into table

UPDATE "table_name" --update table_name
    SET "column_name" = "something"

WHERE "value" = "something" AND "value" = "something" OR "value" = "something" ... -- Condition for different commands

ORDER BY "column_name" / ORDER BY "column_name" DESC -- ascending order / descending order

LIMIT "number" -- limit on the number of output values

EXTRACT -- Individual values. For example, date is month/day/year

UPPER/LOWER/LENGTH/TRIM -- string in upper/lower case / string length / trim empty symbols

"column_name" || ' ' || "column_name" -- Concatenation. For example, Concatenate first and last names to create full names

"column_name" LIKE 'something' -- All values by something. For example, email like '%.com%

MIN/MAX/AVG/SUM/COUNT -- minimum, maximum and average value / sum of all values / count of all values

SUBSTRING("column_name" FROM "number of characters") -- Delete the first "number" symbols

POSITION("value" IN "column_name") -- Value position in column name (line character number)

COALESCE("column_name", "Message") -- Check if the column name is null then the message is inserted of null

-- All examples in /code/queries.sql