
create database netflix;

use netflix;

CREATE TABLE genre_details(
GenreID VARCHAR(5) PRIMARY KEY,
Genre VARCHAR(50)
);

CREATE TABLE netflix_originals(
NetflixID INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(255),
GenreID VARCHAR(5),
Runtime INT,
IMDBScore DECIMAL(3,1),
Language VARCHAR(50),
Premiere_Date varchar(30),
FOREIGN KEY (GenreID) REFERENCES genre_details(GenreID)
);


select * from netflix_originals;
select * from genre_details;


-- ● What are the average IMDb scores for each genre of Netflix Originals?

select g.genre,round(avg(n.imdbscore),2) as avg_imdbscore from netflix_originals n 
inner join genre_details g 
on n.genreid=g.genreid group by g.genre order by avg_imdbscore desc;

-- ● Which genres have an average IMDb score higher than 7.5?

select g.genre,round(avg(n.imdbscore),2) as avg_imdbscore from netflix_originals n 
inner join genre_details g 
on n.genreid=g.genreid group by g.genre having avg_imdbscore>7.5 order by avg_imdbscore desc;

-- ● List Netflix Original titles in descending order of their IMDb scores.

select title,imdbscore from netflix_originals order by imdbscore desc;


-- ● Retrieve the top 10 longest Netflix Originals by runtime.

select title,runtime from netflix_originals order by runtime desc limit 10;

-- ● Retrieve the titles of Netflix Originals along with their respective genres.

select n.title,g.genre from netflix_originals n
inner join genre_details g
on n.genreid=g.genreid;

-- ● Rank Netflix Originals based on their IMDb scores within each genre.

select g.genre,n.title,n.imdbscore,
rank() over(
partition by g.genre
order by imdbscore desc) as rnk
from netflix_originals n	
inner join genre_details g 
on n.genreid=g.genreid;

-- ● Which Netflix Originals have IMDb scores higher than the average IMDb score of all titles?

select * from netflix_originals where imdbscore>(select avg(imdbscore) from netflix_originals);

-- ● How many Netflix Originals are there in each genre?

select g.genre,count(n.title) as total_title from genre_details g
left join netflix_originals n
on g.genreid=n.genreid
group by g.genre order by total_title desc;


-- ● Which genres have more than 5 Netflix Originals with an IMDb score higher than 8?

select g.genre,count(n.title) as total_title from genre_details g
inner join netflix_originals n
on g.genreid=n.genreid
where imdbscore>8
group by g.genre having total_title>5 order by total_title desc;

-- ● What are the top 3 genres with the highest average IMDb scores, and how many Netflix Originals do they have?

select g.genre,count(n.title) as total_title,round(avg(n.imdbscore),2) as avg_imdbscore from genre_details g
inner join netflix_originals n
on g.genreid=n.genreid
group by g.genre order by avg_imdbscore desc limit 3;