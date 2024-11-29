-- Revert restling:login_user_function from pg

DROP FUNCTION IF EXISTS restling.login_user(username TEXT, password TEXT);
