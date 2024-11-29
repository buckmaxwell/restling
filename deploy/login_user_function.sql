CREATE OR REPLACE FUNCTION restling.login_user(p_username TEXT, p_password TEXT)
RETURNS TEXT AS $$
DECLARE
    token TEXT;
BEGIN
    -- Validate credentials using the function parameters
    IF EXISTS (
        SELECT 1 FROM restling."user"
        WHERE "user".username = p_username
          AND "user".password = crypt(p_password, "user".password)
    ) THEN
        -- Generate JWT (correctly format as json)
        token := sign(
            row_to_json(row(
                (SELECT id FROM restling."user" WHERE "user".username = p_username),
                'authenticated' -- Default role
            ))::json,  -- Ensure the payload is json
            'your-very-secret-key'  -- Secret key (no need for casting)
        );
        RETURN token;
    ELSE
        RAISE EXCEPTION 'Invalid username or password';
    END IF;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
