CREATE OR REPLACE FUNCTION log_function()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS $$
BEGIN
    IF NEW.nickname <> OLD.nickname THEN
        INSERT INTO 
            nick_change_log (character_id, before_change, 
            after_change, changed_on)
        VALUES
            (OLD.id, OLD.nickname, NEW.nickname, now());
    END IF;
    RETURN NEW;
END;
$$;

CREATE TRIGGER nick_change 
    BEFORE UPDATE
    ON Character
    FOR EACH ROW
    EXECUTE PROCEDURE log_function();
-- jeżeli nick postaci zostanie zmieniony, triger loguje informacje
-- o postaci sprzed zmiany i po zmianie z datą momentu zmiany