-- Verify restling:create_anon_role on pg

-- Verify that the anon role exists
SELECT rolname FROM pg_roles WHERE rolname = 'anon';

-- Verify that the anon role has the required permissions
SELECT has_function_privilege('anon', 'restling.create_user(text, text, text)', 'EXECUTE');
