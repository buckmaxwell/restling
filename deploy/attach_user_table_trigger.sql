-- Deploy restling:attach_user_table_trigger to pg

SELECT restling.add_timestamp_trigger('"restling"."user"');
