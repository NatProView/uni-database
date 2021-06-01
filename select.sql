

SELECT * FROM shop_offer AS shop_out
WHERE price > (
    SELECT 2 * MIN(Price) FROM shop_offer AS shop_in
    WHERE shop_in.available = shop_out.available
);
--wybiera takie oferty, ktore maja dwa razy wieksza cene niz najnizsza

SELECT id FROM player EXCEPT SELECT player_id from transactions;
-- wyswietla graczy ktorzy nie dokonali transakcji


SELECT * FROM player 
WHERE NOT EXISTS (
    SELECT * FROM character
    WHERE player_id = player.id
);
-- wyswietla graczy ktorzy nie maja swoich postaci

SELECT *
FROM player
LEFT JOIN character ON character.player_id = player.id;
--wyswietla liste graczy z postaciami lub bez ich postaci, jesli ich nie maja
-- left join

SELECT i.*, 
    s.price
FROM item i
JOIN shop_offer s ON s.item_id = i.id
WHERE s.available = true;
-- wyświetlenie przedmiotów wraz z ceną, 
-- jeżeli dostępne są w ofercie sklepu

SELECT language, COUNT(*) as Users
FROM player
GROUP BY language
ORDER BY Users DESC;
-- wyświetla ilu graczy używa języków


DELETE FROM Nick_change_log 
WHERE character_id IN 
(SELECT id from Character WHERE date_of_creation < '2020-01-01');
DELETE FROM Character
WHERE date_of_creation < '2020-01-01';
-- usunięcie postaci, które zostały stworzone przed 2020-01-01
-- usuwanie z tabeli

UPDATE Shop_offer
SET available = true
FROM Item
WHERE shop_offer.item_id = item.id and item.collection = 'one_time_only';
-- zmień dostępność produktu w Shop 
-- jeżeli jest z podanej kolekcji w tabeli Item
-- aktualizacja wierszy w tabeli

SELECT * 
FROM Player_data
WHERE phone_number IS NULL;
-- zapytanie negatywne, sprawdzenie warunku NULL

SELECT *
FROM Player
WHERE Player.id NOT IN 
(
    SELECT transactions.player_id
    FROM transactions
);
-- zapytanie negatywne, zagnieżdzone, wyświetlenie graczy
-- którzy nie dokonali żadnej transakcji

SELECT *, 
    AGE(changed_on) as elapsed_time
FROM nick_change_log;
-- pokazuje ile czasu minęło od zmiany nicku postaci

SELECT *
FROM Player
WHERE email LIKE '%.com';
-- warunek odwołujący się do wzorca
-- wyświetla użytkowników z adresem email w domenie .com

SELECT * 
FROM transactions_info;
-- wyświetla listę transakcji z informacjami o kupujących
-- perspektywa, złączenie składni, grupowanie

SELECT *
FROM character_owner;
-- wyświetla listę postaci z informacjami o graczach, do których należą
-- perspektywa, złączenie składni, grupowanie


