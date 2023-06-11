-- Create a view
CREATE OR REPLACE [MATERIALIZED] VIEW <view name> AS <query>;

-- Use a view
select * from <view name>

-- update a view
ALTER VIEW <view name> RENAME TO <view name>;

-- delete a veiw
DROP VIEW [ IF EXISTS ] <view name>