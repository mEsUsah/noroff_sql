/*
    Automatically created by:
        - Primary key
        - Unique key
*/

/*  Algorithms:
        - B-tree (binary tree)
            - Default!
            - Best used for comparison
        
        - Hash (hash table)
            - Can only handle equality (=)

        - GIN (Generalized Inverted Index)
            - Best used when multiple values are stroed in a single field
            - Typically a JSON

        - GIST (General Search Tree)
            - Useful in indexing geometric data and full-text search

/*
    BEST PRACTISES:
        - Don't add an index just to add an index
        - Don't use indexes on small tables
        - Don't use on tables that are updated frequently
        - Don't use on colums that contain null values
        - Don't use on colums that have large values
*/

-- UNIQUE indexes are used for speed and integrity.

-- Create index
CREATE  [UNIQUE] INDEX <name>
ON <table> [ USING <algorithm>] (column1, column2, ...);




-- Delete index 
DROP INDEX <name>;