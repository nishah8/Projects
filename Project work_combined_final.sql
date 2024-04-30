  -- Final Project
-- [X] Come up with an idea for your projects (it is the most difficult part). Would it be an airline database or perhaps a travel agency or maybe a bank or a shop?
-- [X] Draft few core tables and relationships between them(remember you can ALTER and UPDATE your tables later,but it is important to make a start)
-- [X] Tables in your DB need to be normalised, so think about what kind of columns would each table have, what information are they going to store?
-- CORE REQUIREMENTS
-- [X] Create relational DB of your choice with minimum 5 tables
-- [X] Set Primary and Foreign Key constraints to create relations between the tables
-- [X] Using any type of the joins create a view that combines multiple tables in a logical way
-- [X] In your database, create a stored function that can be applied to a query in your DB
-- [X] Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
-- [X] Create DB diagram where all table relations are shown

-- ADVANCED OPTIONS
-- [X] In your database, create a stored procedure and demonstrate how it runs In your database
-- [X] Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
-- [X] Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis

Create database final_project;
use final_project;

create table user_info
(
user_id int Primary Key,
first_name varchar(10), 
age int, 
gender varchar(1)
);

insert into user_info
(user_id, first_name, age, gender)
values
(1, 'Natalie', 29, 'F'), 
(2, 'San', 25, 'F'), 
(3, 'Maja', 25, 'F'), 
(4, 'John', 50, 'M'),
(5, 'Andrew', 36, 'M'), 
(6, 'Maria', 31, 'F'), 
(7, 'Jane', 46, 'F'), 
(8, 'Johan', 21, 'M'), 
(9, 'Max', 27, 'M'),
(10, 'Christine', 64, 'F'), 
(11, 'Anne', 58, 'F'), 
(12, 'Andrew', 29, 'M'), 
(13, 'Craig', 28, 'M'), 
(14, 'Riley', 30, 'F'), 
(15, 'Lauren', 40, 'F');

CREATE TABLE TopAlbums (
    AlbumID VARCHAR(6) PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    ArtistID int NOT NULL,
    ReleaseYear INT,
    Ranking INT NOT NULL
);

INSERT INTO TopAlbums (AlbumID, Title, ArtistID, ReleaseYear, Ranking)
VALUES
    ("RH00", "Kid A", 18, 2000, 20),
    ("KL15", "To Pimp a Butterfly", 17, 2015, 19),
    ("BD65", "Highway 61 Revisited", 9, 1965, 18),
    ("KW17", "My Beautiful Dark Twisted Fantasy", 16, 2010, 17),
    ("TC79", "London Calling", 15, 1979, 16),
    ("PE88", "It Takes a Nation of Millions to Hold Us Back", 14, 1988, 15),
    ("TRS72", "Exile on Main Street", 13, 1972, 14),
    ("AF67", "I Never Loved a Man the Way I Love You", 12, 1967, 13),
    ("MJ82", "Thriller", 11, 1982, 12),
    ("TB66", "Revolver", 5, 1966, 11),
    ("LH98", "The Miseducation of Lauryn Hill", 10, 1998, 10),
    ("BD75", "Blood on the Tracks", 9, 1975, 9),
    ("PTR84", "Purple Rain", 8, 1984, 8),
    ("FM77", "Rumours", 7, 1977, 7),
    ("NV91", "Nevermind", 6, 1991, 6),
    ("TB69", "Abbey Road", 5, 1969, 5),
    ("SW76", "Songs in the Key of Life", 4, 1976, 4),
    ("JM71", "Blue", 3, 1971, 3),
    ("TBB66", "Pet Sounds", 2, 1966, 2),
    ("MG71", "What's Going On", 1, 1971, 1)
    ;
    
Create table ratings_new
(
rating_id int Primary Key, 
user_id int,
album_id varchar(10),
rating int
) 
;

insert into ratings_new
(rating_id, user_id, album_id, rating)
values 
(01, 4, 'TBB66', 4), 
(02, 4, 'TB69', 5), 
(03, 4, 'JM71', 3), 
(04, 4, 'BD65', 1), 
(05, 5, 'NV91', 3),
(06, 5, 'KW17', 5), 
(07, 5, 'RH00', 4), 
(08, 6, 'BD75', 4), 
(09, 6, 'TRS72', 2),
(10, 6, 'AF67', 5), 
(11, 6, 'PTR84', 1),
(12, 7, 'PTR84', 4), 
(13, 7, 'TB66', 3),
(14, 7, 'LH98', 5), 
(15, 8, 'MJ82', 1),
(16, 8, 'SW76', 3),
(17, 9, 'KL15', 4),
(18, 9, 'FM77', 3),
(19, 9, 'TB66', 2),
(20, 10, 'TC79', 1), 
(21, 10, 'LH98', 5),
(22, 10, 'PE88', 3), 
(23, 11, 'BD65', 2),
(24, 11, 'RH00', 3),
(25, 11, 'JH71', 4), 
(26, 12, 'JH71', 4), 
(27, 12, 'BD75', 4), 
(28, 12, 'TB69', 5), 
(29, 13, 'KW17', 3),
(30, 13, 'NV91', 4),
(31, 13, 'SW76', 1), 
(32, 14, 'TB66', 2),
(33, 14, 'SW76', 3), 
(34, 15, 'KL15', 4), 
(35, 15, 'MJ82', 3), 
(36, 15, 'RH00', 3),
(37, 14, 'MG71', 5), 
(38, 8, 'MG71', 2),
(39, 1, 'PTR84', 4), 
(40, 1, 'TC79', 5), 
(41, 1, 'BD75', 2), 
(42, 2, 'BD65', 3), 
(43, 2, 'JM71', 2), 
(44, 2, 'MG71', 5), 
(45, 3, 'PE88', 4), 
(46, 3, 'SW76', 3), 
(47, 3, 'NV91', 2);

CREATE TABLE artist_info
(artist_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
artist_name varchar(50),
location varchar(50));

INSERT INTO artist_info (artist_name, location)
VALUES 
('Marvin Gaye' , 'U.S.'),
('The Beach Boys', 'U.S.'),
('Joni Mitchell','U.S.'),
('Stevie Wonder', 'U.S.'),
('The Beatles', 'U.K.'),
('Nirvana', 'U.S.'),
('Fleetwood Mac', 'U.K.' ),
('Prince and the Revolution', 'U.S.' ),
('Bob Dylan', 'U.S.'),
('Lauryn Hill',  'U.S.'),
('Michael Jackson', 'U.S.'),
('Aretha Franklin','U.S.' ),
('The Rolling Stones','U.K.' ),
('Public Enemy','U.S.'),
('The Clash','U.K.' ),
('Kanye West','U.S.' ),
('Kendrick Lamar', 'U.S.' );

Select * from artist_info;

INSERT INTO artist_info (artist_name, location)
VALUES 
('Radiohead', 'U.K');

CREATE TABLE album_genre 
(album_ID Varchar(50), 
genre Varchar(50),
Primary KEY (album_ID, genre),
Foreign key (album_ID) References topalbums(AlbumID)
);

INSERT INTO album_genre
VALUES
  ("RH00", 'Post-Rock' ),
  ("RH00", 'Electronica' ),
  ("KL15", 'Hip Hop'),
  ("BD65", "Folk Rock"),
  ("KW17", 'Hip Hop'),
  ("TC79", "Punk Rock"),
  ("PE88", 'Hip Hop'),
  ("TRS72", 'Hard Rock'),
  ("AF67", 'Soul'),
  ("MJ82", "Pop"),
  ("MJ82", "Rock"),
  ("TB66", "Rock"),
  ("TB66", 'Pop'),
  ("LH98", 'Soul'),
  ("BD75", 'Folk'),
  ("PTR84", 'Pop'),
  ("PTR84", 'Rock'),
  ("FM77", "Pop rock"),
  ("NV91", "Grunge"),
  ("NV91", "Post-punk"),
  ("TB69", "Rock"),
  ("SW76", "R&B"),
  ("SW76", "Soul"),
  ("SW76", "Pop"),
  ("JM71", "Folk"),
  ("TBB66", "Pop"),
  ("MG71", "Soul");
  
  ALTER TABLE `final_project`.`ratings_new` 
ADD CONSTRAINT `user id`
  FOREIGN KEY (`user_id`)
  REFERENCES `final_project`.`user_info` (`user_id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
    ALTER TABLE `final_project`.`ratings_new` 
ADD CONSTRAINT `albums`
  FOREIGN KEY (`album_id`)
  REFERENCES `final_project`.`topalbums` (`AlbumID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  ALTER TABLE `final_project`.`topalbums` 
ADD CONSTRAINT `artist`
  FOREIGN KEY (`ArtistID`)
  REFERENCES `final_project`.`artist_info` (`artist_id`);
  
  
-- Stored Function to show if an artist is from the UK or not 
  DELIMITER $$
CREATE FUNCTION IsUK(  
     location varchar(50) 
)   
RETURNS VARCHAR(20)  
DETERMINISTIC  
BEGIN  
    DECLARE Eligibility VARCHAR(20);  
    IF  location ='U.K.' THEN  
        SET Eligibility = 'Yes';  
    ELSE  
    SET Eligibility = 'No';  
    END IF;  
    RETURN (Eligibility);  
END$$ 
DELIMITER 

DELIMITER //
CREATE PROCEDURE PopAlbum()
BEGIN
SELECT * FROM album_genre
Join
topalbums
ON
album_genre.album_ID = topalbums.AlbumID
WHERE genre = 'Pop';
END //
    
DELIMITER ;

CALL PopAlbum;

-- Join
SELECT title, artist_name FROM final_project.topalbums
JOIN
final_project.artist_info
ON
topalbums.ArtistId = artist_info.artist_id;

-- Create view 

Create view average_ratings
as
SELECT title, AVG(rating) 
FROM topalbums, ratings_new
WHERE topalbums.AlbumID = ratings_new.album_id
Group by title;

Select * from average_ratings;

-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis
SELECT user_id, 
AVG(rating) AS average_rating
FROM
    ratings_new
GROUP BY
    user_id;
    
    -- Create a view that uses at least 3-4 base tables; 
-- prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.

-- view to include user id, (age, gender,) album title, artist name, genre, rating. Group by artist name
Create view view_all_ratings
as
Select u.user_id, u.age, u.gender, t.title, a.artist_name, g.genre, r.rating
from user_info as u
	Left Join 
    ratings_new as r 
    on u.user_id = r.user_id
    Right Join
    topalbums as t
    on r.album_id = t.AlbumID
    Left Join
    artist_info as a
    on t.ArtistID = a.artist_id
    Left Join
    album_genre as g
    on r.album_id = g.album_ID
    ;
    
SELECT title, AVG(rating) 
FROM view_all_ratings
Group by title; 

Select Distinct title, artist_name
from view_all_ratings
Where rating = 5 and gender = 'F';




-- Presentation details 
-- Run all to show all tables
Use final_project;
Select * from album_genre;
Select * from ratings_new;
Select * from artist_info;
Select * from topalbums;
Select * from user_info;

-- Show how the tables are linked with EER Diagram
-- Show views
Select * from average_ratings;
Select * from view_all_ratings; 

-- Show stored function
DELIMITER $$  
CREATE FUNCTION IsUK(  
     location varchar(50) 
)   
RETURNS VARCHAR(20)  
DETERMINISTIC  
BEGIN  
    DECLARE Eligibility VARCHAR(20);  
    IF  location ='U.K.' THEN  
        SET Eligibility = 'Yes';  
    ELSE  
    SET Eligibility = 'No';  
    END IF;  
    RETURN (Eligibility);  
END$$ 
DELIMITER 

SELECT artist_info.artist_name, IsUK(artist_info.location)
FROM artist_info;

-- Procedure
DELIMITER //
CREATE PROCEDURE PopAlbum()
BEGIN
SELECT * FROM album_genre
Join
topalbums
ON
album_genre.album_ID = topalbums.AlbumID
WHERE genre = 'Pop';
END //
    
DELIMITER ;

Call PopAlbum;

-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
SELECT  * FROM topalbums as Top
JOIN
(SELECT artist_id From artist_info as info
WHERE location = 'U.S.' ) as US_Artist
ON
US_Artist.artist_id = Top.ArtistID
WHERE Top.AlbumID in (SELECT album_ID FROM album_genre
WHERE genre = 'Soul');

-- Prepare an example query with group by and having to demonstrate how to extract data from your DB for analysis
SELECT user_id, 
AVG(rating) AS average_rating
FROM
    ratings_new
GROUP BY
    user_id;

 -- Create a view that uses at least 3-4 base tables; prepare and demonstrate a query that uses the view to produce a logically arranged result set for analysis.
SELECT title, AVG(rating) 
FROM view_all_ratings
Group by title; 

Select Distinct title, artist_name
from view_all_ratings
Where rating = 5 and gender = 'F';