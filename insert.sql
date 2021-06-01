
INSERT INTO
    Language (name)
VALUES
    ('Danish'),
    ('Spanish'),
    ('Polish'),
    ('German'),
    ('Czech'),
    ('English'),
    ('French'),
    ('Chinese'),
    ('Japanese'),
    ('Italian'),
    ('Greek'),
    ('Hindi'),
    ('Swedish'),
    ('Korean');

INSERT INTO 
    Race (name)
VALUES
    ('Orc'),
    ('Elf'),
    ('High Elf'),
    ('Dwarf'),
    ('Angel'),
    ('Demon'),
    ('Vampire'),
    ('Undead'),
    ('Human');

INSERT INTO
    Weapon (name)
VALUES
    ('Sword'),
    ('Bow'),
    ('Axe'),
    ('Lance'),
    ('Staff'),
    ('Scepter'),
    ('Daggers'),
    ('Spellbook'),
    ('Greatsword'),
    ('Polearm');

INSERT INTO
    Class (name, weapon)
VALUES
    ('Archer', 'Bow'),
    ('Berserker', 'Axe'),
    ('Lancer', 'Lance'),
    ('Sorcerer', 'Scepter'),
    ('Wizard', 'Spellbook'),
    ('Priest', 'Staff'),
    ('Warrior', 'Sword'),
    ('Knight', 'Greatsword'),
    ('Dark Knight', 'Greatsword'),
    ('Rogue', 'Daggers');

INSERT INTO 
    Player_data (first_name, last_name, date_of_birth, phone_number)
VALUES
    ('Mateusz', 'Śródka', ' 2001-04-13', '434420690'),
    ('Krzysztof', 'Konewa', '1963-01-21', '123456765'),
    ('Mateusz', 'Stuk', '1984-09-09', NULL),
    ('Edmund', 'DuGalle', '1970-02-28', NULL),
    ('Konstanty', 'Kazimierczuk', '2000-02-02', '123873937'),
    ('Clark', 'Kent', '1974-07-31', '687453957'),
    ('Carl', 'Johnson', '1968-01-01', '123454234'),
    ('Grzegorz', 'Brzęczyszczykiewicz', '1969-10-12', NULL),
    ('Sara', 'Kowalska', '1989-06-12', NULL),
    ('Matthew', 'Horner', '1990-07-07', '560857947'),
    ('Mike', 'Kachinsky', '1967-12-31', NULL),
    ('Walery', 'Mengsk', '1999-03-30', '759479574'),
    ('Horacy', 'Wojniak', '1950-01-07', '987575947'),
    ('Ryan', 'Driver', '1980-11-12', '213621380'),
    ('Matijas', 'Gurhzonka', '2001-03-06', '758493746'),
    ('Elizabeth', 'Obama', '2002-01-07', NULL);


INSERT INTO
    Player (login, password, email, language, player_data_id)
VALUES
    ('matisro123', 'IUvSqPKBJ', 'jloynes0@admin.ch', 'Polish', 1),
    ('krzyko63', 'IUvSqPKBJ', 'cmolan1@edublogs.org', 'English', 2),
    ('Edmund_Dugalle_1970', 'Zjoi1Ilw3', 'ncoare2@gizmodo.com', 'French', 3),
    ('proplayer123', 'qwerty123', 'rrickaby3@pen.io', 'Czech', 4),
    ('klukasik4', 'YUlIaERy', 'kcolloby4@amazon.com', 'German', 5),
    ('beautykiller', '2ro9v5Q', 'kwilloway5@techcrunch.com', 'Italian', 6),
    ('grzegorygiry', 'RRV7VN', 'bthurling6@jiathis.com', 'Japanese', 7),
    ('sarakow', 'WNDE2ppkhz', 'emew7@ehow.com', 'Greek', 8),
    ('serwersamp', '58BRcTNDM', 'tdockwra8@admin.ch', 'Hindi', 9),
    ('theadmiral', 'YXVsxgbJ', 'rruff9@unicef.org', 'Swedish', 10),
    ('majkthepros', '7OuR6Bls', 'srichemonda@ycombinator.com', 'Korean', 11),
    ('thebestwalery', 'NVOH81Hbnuq', 'dnunneryb@istockphoto.com', 'Chinese', 12),
    ('horacy', '0sfLEEp1ALcM', 'lgregorattic@technorati.com', 'Spanish', 13),
    ('jannneek', 'password123', 'society@gamer.com', 'Polish', 14),
    ('alpinus4', 'xXxHax00rxXx', 'ilikealpacas@warlubie.pl', 'English', 15),
    ('kaguyabuja12', 'x23eT33sla', 'ichliebe213@buziaczek.pl', 'French', 16);

INSERT INTO
    Character (player_id, nickname, date_of_creation, race, class)
VALUES
    (1, 'Destroyer20', '2022-01-01', 'Elf', 'Archer'),
    (2, 'KonononoPL', '2020-06-5', 'Vampire', 'Rogue'),
    (3, 'EndmundTheGreatest', '2021-05-21', 'Human', 'Knight'),
    (4, 'xXx_PR00S_xXx', '2018-01-10', 'Demon', 'Berserker'),
    (2, 'KlopsowaForLife', '2019-09-01', 'Angel', 'Wizard'),
    (1, 'Destroyer21', '2021-01-01', 'High Elf', 'Sorcerer'),
    (6, 'Ina Anakina', '2020-04-15', 'Angel', 'Lancer'),
    (7, 'CaliGura', '2021-03-03', 'Undead', 'Priest'),
    (9, 'MayThe4th', '2019-08-08', 'Orc', 'Berserker'),
    (1, 'CLEARVIEW', '2020-10-10', 'Dwarf', 'Warrior'),
    (1, 'Polak420', '2017-04-20', 'Orc', 'Sorcerer'),
    (14, 'Karl_Syn_Jana', '2020-03-30', 'High Elf', 'Berserker'),
    (2, 'LinuxSupremcy', '2019-10-10', 'Human', 'Wizard'), 
    (2, 'PrincessKaguya', '2021-09-09','Elf', 'Priest');

INSERT INTO
    Item (name, type, collection)
VALUES
    ('Red cape', 'cape', 'standard'),
    ('Black cape', 'cape', 'standard'),
    ('Straw Hat', 'hat', 'summer_event'),
    ('Samurai Outfit', 'outfit', 'standard'),
    ('Shinobi Outfit', 'outfit', 'standard'),
    ('Traveler Outfit', 'outfit', 'summer_event'),
    ('Ancient Greatsword', 'weapon_skin', 'anniversary_event'),
    ('Ancient Bow', 'weapon_skin', 'anniversary_event'),
    ('Ancient Scepter', 'weapon_skin', 'anniversary_event'),
    ('Flame Daggers', 'weapon_skin', 'one_time_only'),
    ('Flame Axe', 'weapon_skin', 'one_time_only'),
    ('Water staff', 'weapon_skin', 'one_time_only'),
    ('Superman Outfit', 'outfit', 'dc_event'),
    ('Batman Outfit', 'outfit', 'dc_event');

INSERT INTO
    Shop_offer (item_id, price, available)
VALUES
    (1, 5.99, true),
    (2, 5.99, true),
    (3, 5.99, false),
    (4, 19.99, true),
    (5, 19.99, true),
    (6, 19.99, true),
    (7, 9.99, false),
    (8, 9.99, true),
    (9, 9.99, true),
    (10, 9.99, true),
    (11, 19.99, false),
    (12, 19.99, false);

INSERT INTO
    Transactions (item_id, player_id, date)
VALUES
    (4, 16, '2019-07-22'),
    (1, 9, '2021-01-16'),
    (11, 13, '2018-09-23'),
    (7, 16, '2019-08-18'),
    (12, 16, '2018-11-08'),
    (11, 12, '2020-04-18'),
    (10, 14, '2017-01-10'),
    (9, 15, '2017-03-18'),
    (9, 12, '2020-01-17'),
    (8, 1, '2018-09-13'),
    (1, 8, '2018-10-25'),
    (2, 3, '2017-12-24'),
    (9, 13, '2019-09-26'),
    (7, 7, '2021-01-26'),
    (12, 3, '2018-03-09'),
    (12, 9, '2017-04-19');

INSERT INTO nick_change_log (character_id, 
    before_change, 
    after_change, 
    changed_on)
VALUES 
    (4, 'iwasthere2020', 'xXx_PR00S_xXx', '2021-05-15 20:09:22.056189'),
    (2, 'KonoDE', 'KonononoPL', '2020-03-10 15:07:13.056200'),
    (9, 'AprilThe2nd', 'MayThe4th', '2019-10-10 10:10:10.020000');