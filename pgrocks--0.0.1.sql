-- pgrocks--0.0.1.sql

-- Create the SQL function
CREATE OR REPLACE FUNCTION mem_tableam_handler(internal)
RETURNS table_am_handler AS 'pgrocks', 'mem_tableam_handler'
LANGUAGE C STRICT;

CREATE ACCESS METHOD pgrocks TYPE TABLE HANDLER mem_tableam_handler;
