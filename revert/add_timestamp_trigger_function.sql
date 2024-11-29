-- Revert restling:add_timestamp_trigger_function from pg

DROP FUNCTION IF EXISTS restling.add_timestamp_trigger(table_name TEXT);
