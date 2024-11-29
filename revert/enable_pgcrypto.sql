-- Revert restling:enable_pgcrypto from pg

DROP EXTENSION IF EXISTS pgcrypto;
DROP EXTENSION IF EXISTS pgjwt;

