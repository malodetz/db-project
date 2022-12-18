INSERT INTO movie_database.review(movie_id, user_id, review_date, score, comment)
VALUES (1, 5, now(), 10, 'Amazing movie');

UPDATE movie_database.review
SET score=8
WHERE user_id = 2
  AND movie_id = 1;

DELETE
FROM movie_database.review
WHERE user_id = 2
  AND movie_id = 5;

SELECT user_id, score
FROM movie_database.review
WHERE movie_id = 1;

INSERT INTO movie_database.movie(movie_id, movie_name, release_date, budget, description, duration)
VALUES (6, 'Brand new movie', '2022-11-05', 144000000, 'Contemporary art', 137);

UPDATE movie_database.movie
SET duration = 60000000
WHERE movie_id = 3;

SELECT movie_id, budget
FROM movie_database.movie
WHERE budget < 100000000;

DELETE
FROM movie_database.movie
WHERE movie_id = 6;


