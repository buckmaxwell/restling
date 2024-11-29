-- Revert restling:grant_anon_sequence_permissions from pg

-- Revoke the privileges on the sequence from the anon role
REVOKE USAGE, SELECT ON SEQUENCE restling."user_id_seq" FROM anon;
