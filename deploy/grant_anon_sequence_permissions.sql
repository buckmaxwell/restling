-- Deploy restling:grant_anon_sequence_permissions to pg

-- Grant USAGE and SELECT privileges on the sequence for the anon role
GRANT USAGE, SELECT ON SEQUENCE restling."user_id_seq" TO anon;

