-- Verify restling:create_user_function on pg

SELECT proname
FROM pg_proc
WHERE proname = 'create_user' AND pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'restling');
