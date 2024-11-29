-- Verify restling:create_user_table on pg

SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_schema = 'restling' AND table_name = 'user';
