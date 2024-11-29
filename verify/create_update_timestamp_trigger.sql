-- Verify restling:create_update_timestamp_trigger on pg

SELECT proname
FROM pg_proc
WHERE proname = 'update_timestamp' AND pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'restling');
