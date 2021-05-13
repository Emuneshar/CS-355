-- Query 1
-- Display drama (genre) DVDs that won awards. 
-- Sort results by year of when the DVD won an award. 
-- Show dvd title, award, genre, label, and rating.Sample results:

SELECT 
	`dvd_titles`.`title`,
    `dvd_titles`.`award`,
    `dvd_titles`.`genre_id`,
    `dvd_titles`.`label_id`,
    `dvd_titles`.`rating_id`
FROM `mues8091`.`dvd_titles`
where `dvd_titles`.`award` is not null
order by `dvd_titles`.`award`;


-- Query 2 
-- Display DVDs made by Universal (a label) and have DTS sound. 
-- Show dvd title, sound, label, genre, and rating.

SELECT 
	`dvd_titles`.`title` as Dvd_Title,
	`sounds`.`sound` as Dvd_Sound,
	`labels`.`label` as label_Id,
	`genres`.`genre` as genre,
	`ratings`.`rating` as rating
FROM `mues8091`.`labels` 
	inner join `mues8091`.`dvd_titles`
on `dvd_titles`.`label_id` = `labels`.`label_id`
	inner join `mues8091`.`sounds`
on `sounds`.`sound_id` = `dvd_titles`.`sound_id`
	inner join `mues8091`.`genres`
on `genres`.`genre_id` = `dvd_titles`.`genre_id` 
	inner join `mues8091`.`ratings`
on `dvd_titles`.`rating_id` = `ratings`.`rating_id`
where label = 'Universal' and sound = 'DTS' ;


-- Query 3
-- Display R-rated Sci-Fi DVDs that have a release date (not NULL). 
-- Order results from newest to oldest released DVD. 
-- Show dvd title, release date, rating, genre, sound, and label.

SELECT 
	`dvd_titles`.`title` as Dvd_Title,
    `dvd_titles`.`release_date` as release_date,
    `ratings`.`rating` as rating,
	`genres`.`genre` as genre,
    `sounds`.`sound` as Dvd_Sound,
	`labels`.`label` as label_Id
FROM `mues8091`.`labels` 
	inner join `mues8091`.`dvd_titles`
on `dvd_titles`.`label_id` = `labels`.`label_id`
	inner join `mues8091`.`sounds`
on `sounds`.`sound_id` = `dvd_titles`.`sound_id`
	inner join `mues8091`.`genres`
on `genres`.`genre_id` = `dvd_titles`.`genre_id` 
	inner join `mues8091`.`ratings`
on `dvd_titles`.`rating_id` = `ratings`.`rating_id`
where rating = 'R' and genre = 'Sci-Fi' and release_date is not null
order by release_date DESC ;






