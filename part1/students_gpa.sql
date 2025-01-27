ALTER TABLE temp_students ADD COLUMN gpa NUMERIC(2,1);
ALTER TABLE temp_students ADD COLUMN tsid SERIAL PRIMARY KEY;
UPDATE temp_students SET gpa = CAST( NULLIF(gpa_val, 'null') AS NUMERIC(2,1) ) WHERE gpa IS NULL;

-- this query works correctly, but couldn't get it to 'pipe?' into the INSERT statement correctly
-- possibly needed to make gpa_tbl column name gpa unique from temp_students column name gpa
-- WITH gpa_tbl(gpa_val) AS (
--   SELECT gpa_val,
--     CASE 
--       WHEN gpa_val = 'null' THEN NULL
--       ELSE CAST ( gpa_val AS NUMERIC(2,1) )
--       END AS gpa
--   FROM temp_students
-- )
-- SELECT gpa FROM gpa_tbl
-- UPDATE temp_students SET gpa = gpa_tbl.gpa WHERE temp_students.gpa IS NULL;


-- INSERT INTO temp_students(gpa) SELECT gpa FROM gpa_tbl;
--  ON CONFLICT (gpa) DO UPDATE SET gpa = EXCLUDED.gpa;