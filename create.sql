CREATE TABLE Player_data (
        id SERIAL PRIMARY KEY,
        first_name VARCHAR(50) NOT NULL,
        last_name VARCHAR(50) NOT NULL,
        date_of_birth DATE NOT NULL,
        phone_number BIGINT UNIQUE
); 

CREATE TABLE Language (
    name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Player (
        id SERIAL PRIMARY KEY,
        login VARCHAR(50) NOT NULL UNIQUE,
        password VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL UNIQUE,
        language VARCHAR(50) REFERENCES Language (name) NOT NULL,
        player_data_id int REFERENCES Player_data (id) UNIQUE
);


CREATE TABLE Weapon (
    name VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Race (
    name VARCHAR(20) PRIMARY KEY
);

CREATE TABLE Class (
    name VARCHAR(20)  PRIMARY KEY,
    weapon VARCHAR(20) REFERENCES Weapon (name) NOT NULL 
);

CREATE TABLE Character (
    id SERIAL PRIMARY KEY,
    player_id int REFERENCES Player (id),
    nickname VARCHAR(20) NOT NULL UNIQUE,
    date_of_creation DATE NOT NULL,
    race VARCHAR(20) REFERENCES Race (name),
    class VARCHAR(20) REFERENCES Class (name)
);

CREATE TABLE Nick_change_log (
    id serial PRIMARY KEY,
    character_id int REFERENCES Character(id) NOT NULL,
    before_change VARCHAR(50) NOT NULL,
    after_change VARCHAR(50) NOT NULL,
    changed_on TIMESTAMP(6) NOT NULL
);


CREATE TABLE Item (
    id serial PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
    type VARCHAR(50) NOT NULL,
    collection VARCHAR(50) NOT NULL
);

CREATE TABLE Shop_offer (
    offer_id SERIAL PRIMARY KEY,
    item_id BIGINT REFERENCES Item (id) NOT NULL UNIQUE,
    price NUMERIC NOT NULL,
    available BOOLEAN NOT NULL
);

CREATE TABLE Transactions (
    id SERIAL PRIMARY KEY,
    item_id int REFERENCES Shop_offer (offer_id) NOT NULL,
    player_id int REFERENCES Player(id) NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE VIEW transactions_info AS
    SELECT t.id, t.item_id, i.name, t.date, p.login, pd.first_name, pd.last_name
    FROM transactions t
    JOIN item i on i.id = t.item_id
    JOIN player p ON t.player_id = p.id
    JOIN player_data pd on pd.id = p.player_data_id
    ORDER BY t.item_id;

CREATE VIEW character_owner AS
    SELECT c.*, p.login, pd.first_name, pd.last_name
    FROM character c
    JOIN player p ON c.player_id = p.id
    JOIN player_data pd on pd.id = p.player_data_id
    ORDER BY p.id;