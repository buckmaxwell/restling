-- Revert restling:create_anon_role from pg

-- Revoke permissions and drop the role
REVOKE EXECUTE ON FUNCTION restling.create_user(username TEXT, password TEXT, email TEXT) FROM anon;
DROP ROLE IF EXISTS anon;
