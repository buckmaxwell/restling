-- Deploy restling:grant_anon_user_permissions to pg

-- Grant INSERT privilege to allow the anon role to insert data into the user table
GRANT INSERT ON TABLE restling."user" TO anon;
