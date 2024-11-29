-- Verify restling:enable_pgcrypto on pg

SELECT extname FROM pg_extension WHERE extname = 'pgcrypto';
SELECT extname FROM pg_extension WHERE extname = 'pgjwt';
