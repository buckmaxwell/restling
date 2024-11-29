-- Deploy restling:create_update_timestamp_trigger to pg

CREATE OR REPLACE FUNCTION restling.update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
