UPDATE character 
SET nickname = 'nowyNICK' 
WHERE id = 5;
UPDATE character 
SET nickname = 'znowuNowyNick123' 
WHERE id = 7;
UPDATE character 
SET nickname = 'zmienionyNick' 
WHERE id = 8;
UPDATE character 
SET nickname = 'NEwNICKNAME210' 
WHERE id = 11;

select * from nick_change_log;
-- zmiana w rekordach tabeli Character, aby wywolac trigger nick_change
