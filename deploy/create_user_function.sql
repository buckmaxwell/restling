-- Deploy restling:create_user_function to pg


CREATE OR REPLACE FUNCTION restling.create_user(username TEXT, password TEXT, email TEXT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO restling."user" (username, password, email)
    VALUES (
        username,
        crypt(password, gen_salt('bf')), -- Securely hash the password
        email
    );
END;
$$ LANGUAGE plpgsql;
