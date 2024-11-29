-- Verify restling:grant_anon_sequence_permissions on pg

-- Verify that the anon role has usage and select privileges on the sequence
SELECT has_sequence_privilege('anon', 'restling."user_id_seq"', 'USAGE') AS can_use_sequence,
       has_sequence_privilege('anon', 'restling."user_id_seq"', 'SELECT') AS can_select_from_sequence;
