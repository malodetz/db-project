INSERT INTO movie_database.country(country_id, country_name, language)
VALUES (1, 'United States', 'English');
INSERT INTO movie_database.country(country_id, country_name, language)
VALUES (2, 'Russia', 'Russian');
INSERT INTO movie_database.country(country_id, country_name, language)
VALUES (3, 'Italia', 'Italian');
INSERT INTO movie_database.country(country_id, country_name, language)
VALUES (4, 'France', 'French');
INSERT INTO movie_database.country(country_id, country_name, language)
VALUES (5, 'United Kingdom', 'English');

INSERT INTO movie_database.genre(genre_id, genre_name, description)
VALUES (1, 'Drama', 'Genre with deep thoughts');
INSERT INTO movie_database.genre(genre_id, genre_name, description)
VALUES (2, 'Horror', 'Genre that makes people scream');
INSERT INTO movie_database.genre(genre_id, genre_name, description)
VALUES (3, 'Comedy', 'Genre that makes people laugh');
INSERT INTO movie_database.genre(genre_id, genre_name, description)
VALUES (4, 'Fantasy', 'Genre depicting unreal events');
INSERT INTO movie_database.genre(genre_id, genre_name, description)
VALUES (5, 'Detective', 'Genre that gives clues to solve the puzzle');

INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (1, 1, 'Ryan Gosling', '1980-11-12');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (2, 5, 'Cristian Bale', '1974-11-11');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (3, 1, 'Quentin Tarantino', '1963-03-27');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (4, 3, 'Federico Fellini', '1920-01-20');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (5, 2, 'Ilia Naishuller', '1983-11-19');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (6, 4, 'Marion Cotillard', '1975-09-30');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (7, 2, 'Alexandr Petrov', '1989-01-25');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (8, 3, 'Sophia Loren', '1934-09-20');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (9, 5, 'Guy Ritchie', '1968-09-10');
INSERT INTO movie_database.celebrity(celebrity_id, country_id, celebrity_name, birth_date)
VALUES (10, 1, 'Matthew McConaughey', '1959-11-04');

INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (1, 'First Movie', '2001-01-01', 75000000, 'Just a movie', 103);
INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (2, 'Second Movie', '2002-02-02', 123000000, 'One more movie', 164);
INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (3, 'Third Movie', '2003-03-03', 50000000, 'Another movie', 95);
INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (4, 'Fourth Movie', '2004-04-04', 83500000, 'New movie', 116);
INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (5, 'Fifth Movie', '2005-05-05', 101000000, 'Freshest movie', 128);

INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (1, 1, 60);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (1, 5, 40);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (2, 4, 100);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (3, 3, 70);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (3, 2, 30);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (4, 2, 55);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (4, 5, 45);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (5, 3, 40);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (5, 1, 35);
INSERT INTO movie_database.movie_x_genre(movie_id, genre_id, probability)
VALUES (5, 4, 25);

INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (1, 9, 'director');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (1, 2, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (1, 10, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (2, 5, 'director');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (2, 5, 'screenwriter');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (2, 1, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (3, 4, 'director');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (3, 8, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (4, 3, 'director');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (4, 3, 'screenwriter');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (4, 6, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (4, 7, 'actor');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (5, 9, 'director');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (5, 3, 'screenwriter');
INSERT INTO movie_database.celebrity_x_movie(movie_id, celebrity_id, connection_type)
VALUES (5, 9, 'actor');

INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (1, 1);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (1, 5);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (2, 1);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (2, 2);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (3, 3);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (4, 1);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (4, 4);
INSERT INTO movie_database.country_x_movie(movie_id, country_id)
VALUES (5, 5);

INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (1, '2010-01-01 00:00:00', 1, 'admin', 'administrator@mdb.com', 'admin', NULL);
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (2, '2010-03-02 01:02:03', 2, 'user1', 'user1@mail.ru', 'newbie', '2011-07-11 11:04:07');
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (2, '2011-07-11 11:04:07', 2, 'user1', 'user1@mail.ru', 'member', '2012-02-18 07:08:10');
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (2, '2012-02-18 07:08:10', 2, 'user1', 'user1@mail.ru', 'senior', NULL);
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (3, '2011-01-01 10:09:08', 1, 'user2', 'user2@gmail.com', 'newbie', '2013-06-04 00:01:02');
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (3, '2013-06-04 00:01:02', 1, 'user2', 'user2@gmail.com', 'member', NULL);
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (4, '2015-01-02 02:03:04', 1, 'user3', 'user3@mail.com', 'newbie', '2016-08-07 11:09:10');
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (4, '2016-08-07 11:09:10', 1, 'user3', 'user3@gmail.com', 'banned', NULL);
INSERT INTO movie_database.user(user_id, start_date, country_id, username, email, status, end_date)
VALUES (5, '2017-08-05 08:06:07', 1, 'user4', 'user4@mail.ru', 'newbie', NULL);

INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (1, 2, '2010-04-05 18:25:11', 9, 'Interesting plot');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (2, 2, '2011-05-15 16:17:18', 6, 'Pretty good');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (3, 2, '2011-08-11 15:09:48', 5, 'Sad story');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (5, 2, '2012-01-03 12:45:14', 7, 'Strong main characters');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (2, 3, '2012-07-07 00:35:12', 4, NULL);
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (3, 3, '2013-02-16 19:45:27', 8, 'I liked it');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (1, 4, '2015-05-09 16:48:29', 6, 'It is ok');
INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (3, 4, '2016-08-06 10:26:19', 1, 'That is garbage');