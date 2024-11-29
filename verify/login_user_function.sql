-- Verify restling:login_user_function on pg

SELECT proname
FROM pg_proc
WHERE proname = 'login_user' AND pronamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'restling');
