-- Verify restling:grant_anon_schema_permissions on pg

-- Verify the anon role has the correct schema-level privileges
SELECT has_schema_privilege('anon', 'restling', 'USAGE') AS has_usage_privilege;

-- Verify execute permissions
SELECT has_function_privilege('anon', 'restling.create_user(text, text, text)', 'EXECUTE') AS can_execute_create_user;
