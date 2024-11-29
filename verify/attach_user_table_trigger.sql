-- Verify restling:attach_user_table_trigger on pg


SELECT tgname
FROM pg_trigger
WHERE tgrelid = 'restling.user'::regclass AND tgname = 'set_updated_at';
