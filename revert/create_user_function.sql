-- Revert restling:create_user_function from pg

DROP FUNCTION IF EXISTS restling.create_user(username TEXT, password TEXT, email TEXT);
