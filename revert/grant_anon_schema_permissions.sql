-- Revert restling:grant_anon_schema_permissions from pg

-- Revoke schema-level privileges from the anon role
REVOKE USAGE ON SCHEMA restling FROM anon;
REVOKE EXECUTE ON ALL FUNCTIONS IN SCHEMA restling FROM anon;
