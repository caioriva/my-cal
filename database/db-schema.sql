-- SCHEMA CREATION:
CREATE SCHEMA MY_CAL;

CREATE TABLE MY_CAL.USERS 
(
    ID SERIAL NOT NULL,
    FULL_NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,
    USERNAME VARCHAR(10) NOT NULL,
    PASSWORD VARCHAR(12) NOT NULL,
    G_REFRESH_TOKEN VARCHAR(100),
    G_REFRESH_TOKEN_ACTIVATED BOOLEAN,
    PRIMARY KEY (ID)
)

CREATE TABLE MY_CAL.EVENTS 
(
    ID SERIAL NOT NULL,
    EVENT_TITLE VARCHAR(50) NOT NULL,
    EVENT_TYPE VARCHAR(50) NOT NULL,
    EVENT_START_TIME VARCHAR(20),
    EVENT_END_TIME VARCHAR(20),
    EVENT_DATE VARCHAR(15),
    G_CALENDAR_ID VARCHAR(100),
    G_EVENT_ID VARCHAR(100),
    USER_ID INTEGER,
    PRIMARY KEY (ID),
    FOREIGN KEY (USER_ID) REFERENCES MY_CAL.USERS (ID)
)

-- INSERTS:
INSERT INTO MY_CAL.USERS (fullname, email, username, password)
VALUES('Caio Augusto Riva', 'caioriva@gmail.com', 'criva', '12345senha');