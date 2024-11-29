-- Deploy restling:grant_anon_schema_permissions to pg

-- Allow the anon role to use the restling schema
GRANT USAGE ON SCHEMA restling TO anon;

-- Allow the anon role to execute functions within the schema
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA restling TO anon;

-- Optional: Grant SELECT permissions on specific tables if required
--GRANT SELECT ON TABLE restling."user" TO anon;
