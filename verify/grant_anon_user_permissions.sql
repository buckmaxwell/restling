-- Verify restling:grant_anon_user_permissions on pg

-- Verify that the anon role has INSERT privilege
SELECT has_table_privilege('anon', 'restling."user"', 'INSERT') AS can_insert;
