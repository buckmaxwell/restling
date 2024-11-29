-- Deploy restling:create_anon_role to pg

-- Create the anon role
CREATE ROLE anon NOLOGIN;

-- Grant permissions to the anon role
GRANT EXECUTE ON FUNCTION restling.create_user(username TEXT, password TEXT, email TEXT) TO anon;
