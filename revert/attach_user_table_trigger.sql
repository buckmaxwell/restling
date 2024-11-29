-- Revert restling:attach_user_table_trigger from pg

DROP TRIGGER IF EXISTS set_updated_at ON restling."user";
