-- Verify restling:create_project_schema on pg
SELECT schema_name
FROM information_schema.schemata
WHERE schema_name = 'restling';
