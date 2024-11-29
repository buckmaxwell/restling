-- Revert restling:create_update_timestamp_trigger from pg

DROP FUNCTION IF EXISTS restling.update_timestamp();
