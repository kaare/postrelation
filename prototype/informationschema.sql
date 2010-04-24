SET search_path TO information_schema;

-- Find tables in schemas
SELECT * FROM  tables WHERE table_schema='awe2';
SELECT * FROM  tables WHERE table_schema='data';

-- Find columns of a table
SELECT * FROM columns WHERE table_schema='awe2' AND table_name='basetype';

-- Find FK constraints
SELECT * FROM table_constraints WHERE constraint_schema='awe2' AND constraint_type='FOREIGN KEY';
SELECT * FROM constraint_table_usage WHERE constraint_schema='awe2';
SELECT * FROM constraint_table_usage u JOIN table_constraints t USING (constraint_name) WHERE u.constraint_schema='awe2' AND u.table_name='component';
-- and their columns
SELECT * FROM constraint_column_usage WHERE constraint_schema='awe2';

-- All columns used in keys
SELECT * FROM key_column_usage;