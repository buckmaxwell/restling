-- Deploy restling:add_timestamp_trigger_function to pg

CREATE OR REPLACE FUNCTION restling.add_timestamp_trigger(table_name TEXT)
RETURNS VOID AS $$
DECLARE
    trigger_sql TEXT;
BEGIN
    -- Use fully qualified table name explicitly
    trigger_sql := format('
        CREATE TRIGGER set_updated_at
        BEFORE UPDATE ON %s
        FOR EACH ROW
        EXECUTE FUNCTION restling.update_timestamp()', table_name);
    EXECUTE trigger_sql;
END;
$$ LANGUAGE plpgsql;
