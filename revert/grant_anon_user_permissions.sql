-- Revert restling:grant_anon_user_permissions from pg

-- Revoke INSERT privilege from the anon role
REVOKE INSERT ON TABLE restling."user" FROM anon;
