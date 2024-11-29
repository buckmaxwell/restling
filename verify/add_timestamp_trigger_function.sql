-- Verify restling:add_timestamp_trigger_function on pg

SELECT proname
FROM pg_proc
WHERE proname = 'add_timestamp_trigger' AND pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'restling');
