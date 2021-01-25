CREATE DATABASE golfScore;

USE golfScore;

CREATE TABLE Players
(
    player_id   int         NOT NULL AUTO_INCREMENT, 
    first_name  varchar(20),
    last_name   varchar(20),
    handicap    int,
    PRIMARY KEY (player_id)
);

INSERT INTO Players VALUES 
(1, 'Chris', 'Teater', 15), 
(2, 'Harry', 'Behlmann', 6),
(3, 'Ron', 'Schaefer', 8);

CREATE TABLE Course
(
    course_id   int         NOT NULL AUTO_INCREMENT, 
    course_name varchar(40),
    course_par  int,
    PRIMARY KEY (course_id)
);

INSERT INTO Course VALUES
(1, 'Eagle Springs', 69),
(2, 'The Falls', 69);

CREATE TABLE Game
(
    game_id     int         NOT NULL,
    player_id   int,
    course_id   int,
    game_date   date
);

INSERT INTO Game VALUES
(1, 1, 2, '2021-01-15'),
(1, 2, 2, '2021-01-15');

CREATE TABLE Scores
(
    score_id    int     NOT NULL AUTO_INCREMENT,
    player_id   int,
    game_id     int,
    hole_1      int,
    hole_2      int,
    hole_3      int,
    hole_4      int,
    hole_5      int,
    hole_6      int,
    hole_7      int,
    hole_8      int,
    hole_9      int,
    hole_10     int,
    hole_11     int,
    hole_12     int,
    hole_13     int,
    hole_14     int,
    hole_15     int,
    hole_16     int,
    hole_17     int,
    hole_18     int,
    PRIMARY KEY (score_id)
);

INSERT INTO Scores VALUES
(1,1,1,4,5,3,6,7,4,3,5,4,5,3,4,4,6,3,4,5,4),
(2,2,1,3,5,4,4,5,4,3,5,4,4,3,5,4,4,6,4,5,4);