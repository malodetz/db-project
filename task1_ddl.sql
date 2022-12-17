CREATE SCHEMA IF NOT EXISTS movie_database;

DROP TABLE IF EXISTS movie_database.country CASCADE;
CREATE TABLE movie_database.country
(
    country_id   INTEGER     NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    language     VARCHAR(50) NOT NULL,

    PRIMARY KEY (country_id)
);

DROP TABLE IF EXISTS movie_database.celebrity CASCADE;
CREATE TABLE movie_database.celebrity
(
    celebrity_id   INTEGER      NOT NULL,
    country_id     INTEGER      NOT NULL,
    celebrity_name VARCHAR(255) NOT NULL,
    birth_date     DATE         NOT NULL,

    PRIMARY KEY (celebrity_id),
    CONSTRAINT country_id_constraint FOREIGN KEY (country_id) REFERENCES movie_database.country (country_id)
);

DROP TABLE IF EXISTS movie_database.movie CASCADE;
CREATE TABLE movie_database.movie
(
    movie_id     INTEGER      NOT NULL,
    movie_name   VARCHAR(255) NOT NULL,
    release_date DATE         NOT NULL,
    budget       INTEGER      NOT NULL,
    description  TEXT         NOT NULL,
    duration     INTEGER      NOT NULL,

    PRIMARY KEY (movie_id),
    CONSTRAINT budget_constraint CHECK (budget > 0),
    CONSTRAINT duration_constraint CHECK (duration > 0)
);

DROP TABLE IF EXISTS movie_database.celebrity_x_movie CASCADE;
CREATE TABLE movie_database.celebrity_x_movie
(
    movie_id        INTEGER     NOT NULL,
    celebrity_id    INTEGER     NOT NULL,
    connection_type VARCHAR(50) NOT NULL,


    CONSTRAINT PK_celebrity_x_movie PRIMARY KEY (movie_id, celebrity_id, connection_type),
    CONSTRAINT movie_id_constraint FOREIGN KEY (movie_id) REFERENCES movie_database.movie (movie_id),
    CONSTRAINT celebrity_id_constraint FOREIGN KEY (celebrity_id) REFERENCES movie_database.celebrity (celebrity_id),
    CONSTRAINT connection_type_constraint CHECK (connection_type = 'director' OR connection_type = 'screenwriter' OR
                                                 connection_type = 'actor')
);

DROP TABLE IF EXISTS movie_database.country_x_movie CASCADE;
CREATE TABLE movie_database.country_x_movie
(
    movie_id   INTEGER NOT NULL,
    country_id INTEGER NOT NULL,


    CONSTRAINT PK_country_x_movie PRIMARY KEY (movie_id, country_id),
    CONSTRAINT movie_id_constraint FOREIGN KEY (movie_id) REFERENCES movie_database.movie (movie_id),
    CONSTRAINT country_id_constraint FOREIGN KEY (country_id) REFERENCES movie_database.country (country_id)
);

DROP TABLE IF EXISTS movie_database.genre CASCADE;
CREATE TABLE movie_database.genre
(
    genre_id    INTEGER     NOT NULL,
    genre_name  VARCHAR(50) NOT NULL,
    description TEXT        NOT NULL,

    PRIMARY KEY (genre_id)
);

DROP TABLE IF EXISTS movie_database.movie_x_genre CASCADE;
CREATE TABLE movie_database.movie_x_genre
(
    movie_id    INTEGER NOT NULL,
    genre_id    INTEGER NOT NULL,
    probability INTEGER NOT NULL,

    CONSTRAINT PK_movie_x_genre PRIMARY KEY (movie_id, genre_id),
    CONSTRAINT movie_id_constraint FOREIGN KEY (movie_id) REFERENCES movie_database.movie (movie_id),
    CONSTRAINT genre_id_constraint FOREIGN KEY (genre_id) REFERENCES movie_database.genre (genre_id),
    CONSTRAINT probability_constraint CHECK ( probability > 0 )
);

DROP TABLE IF EXISTS movie_database.user CASCADE;
CREATE TABLE movie_database.user
(
    user_id    INTEGER      NOT NULL,
    start_date TIMESTAMP    NOT NULL,
    country_id INTEGER      NOT NULL,
    username   VARCHAR(50)  NOT NULL,
    email      VARCHAR(255) NOT NULL,
    status     VARCHAR(50)  NOT NULL,
    end_date   TIMESTAMP,

    CONSTRAINT PK_user PRIMARY KEY (user_id, start_date),
    CONSTRAINT country_id_constraint FOREIGN KEY (country_id) REFERENCES movie_database.country (country_id),
    CONSTRAINT email_constraint CHECK (email ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
    CONSTRAINT end_date_constraint CHECK (end_date IS NULL OR end_date > start_date),
    CONSTRAINT status_constraint CHECK (status = 'banned' OR status = 'newbie' OR status = 'member' OR
                                        status = 'senior' OR status = 'admin')
);

DROP TABLE IF EXISTS movie_database.review CASCADE;
CREATE TABLE movie_database.review
(
    movie_id        INTEGER   NOT NULL,
    user_id         INTEGER   NOT NULL,
    start_date TIMESTAMP NOT NULL,
    review_date     TIMESTAMP NOT NULL,
    score           INTEGER   NOT NULL,
    comment         TEXT,

    CONSTRAINT PK_review PRIMARY KEY (movie_id, user_id, start_date),
    CONSTRAINT movie_id_constraint FOREIGN KEY (movie_id) REFERENCES movie_database.movie (movie_id),
    CONSTRAINT user_constraint FOREIGN KEY (user_id, start_date) REFERENCES movie_database.user (user_id, start_date),
    CONSTRAINT score_constraint CHECK (0 <= score AND score <= 10),
    CONSTRAINT review_date_constraint CHECK (review_date >= start_date)
);