-- Schema
-- DROP SCHEMA IF EXISTS "utility";
CREATE SCHEMA IF NOT EXISTS "utility";

-- Stored procedure for adding current timestamp each time a record is updated
CREATE OR REPLACE FUNCTION set_current_timestamp_updated_at() RETURNS TRIGGER LANGUAGE plpgsql AS $function$
DECLARE _new record;

BEGIN _new := NEW;

_new."updated_at" = NOW();

RETURN _new;

END;

$function$;