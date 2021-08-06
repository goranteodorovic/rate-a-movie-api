-- CREATE TABLES --
CREATE TABLE movie (
	id serial primary key,
	title character varying(255) not null,
	cover_image character varying(255),
	description character varying(512),
	release_date date,
	cast_actors character varying(255),
    type_id integer
);

CREATE TABLE movie_rating_map (
	id serial primary key,
    movie_id integer not null,
    rating integer not null
);

ALTER TABLE movie_rating_map
  ADD CONSTRAINT movie_id_fk FOREIGN KEY (movie_id) REFERENCES movie (id) ON UPDATE NO ACTION ON DELETE RESTRICT;

-- INSERT DATA --
-- MOVIES
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Pirates of the Caribbean', 'https://sleeplessthought.files.wordpress.com/2017/05/jack-sparrow-entrance-pirates-of-the-caribbean.jpg?w=1038&h=576&crop=1', 'A blacksmith joins forces with Captain Jack Sparrow, a pirate, in a bid to free the love of his life from Jacks associates, who kidnapped her suspecting she has the medallion.', '2003-07-28', 'Johnny Depp, Orlando Bloom, Keira Knightly', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('The Fast and the Furious', 'https://image.tmdb.org/t/p/original/oFUGuWhjfnUiiiLgETiIJXTukgE.jpg', 'Los Angeles police officer Brian OConner must decide where his loyalty really lies when he becomes enamored with the street racing world he has been sent undercover to destroy.', '2001-06-22', 'Paul Walker, Vin Diesel, Michelle Rodriguez', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Only the Strong', 'https://image.tmdb.org/t/p/w780//pv14044BvwTzLaGxvseDDtrR96J.jpg', 'Ex-Special Forces soldier Louis Stevens returns to Miami to find his former high school overrun by drugs and violence.', '1993-03-27', 'Mark Dacascos, Stacey Travis', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Rocky', 'https://ultimateactionmovies.com/wp-content/uploads/2018/10/Rocky-Cover.jpg', 'A small-time boxer gets a supremely rare chance to fight a heavyweight champion in a bout in which he strives to go the distance for his self-respect.', '1976-11-21', 'Sylvester Stallone, Talia Shire', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Heartbreak Ridge', 'https://images.static-bluray.com/reviews/2870_2.jpg', 'Hard-nosed, hard-living Marine Gunnery Sergeant Tom Highway (Clint Eastwood) clashes with his superiors and his ex-wife as he takes command of a spoiled recon platoon with a bad attitude.', '1986-12-05', 'Clint Eastwood, Marsha Mason', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Down Periscope', 'https://www.justwatch.com/images/backdrop/166469461/s640/down-periscope', 'Lt. Cmdr. Tom Dodge is assigned as Captain to the USS Stingray, an old diesel driven submarine that has seen better days.', '1996-03-01', 'Kelsey Grammer, Lauren Holly, Rob Schneider', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('The Godfather', 'https://cdn.statically.io/img/timelinecovers.pro/facebook-cover/download/the-godfather-part-ii-facebook-cover.jpg', 'An organized crime dynastys aging patriarch transfers control of his clandestine empire to his reluctant son.', '1972-01-01', 'Marlon Brando, Al Pacino', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Terminator 2: Judgment Day', 'https://d2ycltig8jwwee.cloudfront.net/features/671/fullwidth.728bfded.jpg', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten year old son, John Connor, from a more advanced and powerful cyborg.', '1991-01-01', 'Arnold Schwartzeneger', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Django Unchained', 'https://images7.alphacoders.com/674/thumb-350-674731.jpg', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation-owner in Mississippi..', '1912-01-01', 'Jamie Foxx', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Predator', 'https://static2.srcdn.com/wordpress/wp-content/uploads/2021/03/Predator-Cover-Header.jpg', 'A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior..', '1987-01-01', 'Arnold Schwartzeneger', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Gladiator', 'https://lh3.googleusercontent.com/proxy/Ly9oag5qFBMP2fHwGuV_OlCgNEwbAG2tiB3avENmXx2UmGkzEqko5pggGa3DeH51rQPjk8kouApU92B8LeoDzBXagOy8JxA', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery..', '2000-01-01', 'Rassel Crow', 1);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Full Metal Jacket', 'https://thefilmconsole.com/wp-content/uploads/2018/08/1-full-metal-jacket-2jpg-14444aea8d52c247-1.jpg', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.', '1987-01-01', 'Mathew Modine', 1);

-- TV SHOWS
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Friends', 'https://i.pinimg.com/originals/ac/f9/41/acf941157e3719eb7da2ce3426cc9133.jpg', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', '1994-09-22', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry, David Schwimmer', 2);
--
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Family Matters', 'https://uproxx.com/wp-content/uploads/2017/12/family-matters.jpg', 'The Winslow family deal with various misadventures, many of them caused by their pesky next-door neighbor, ultra-nerd Steve Urkel.', '1989-09-22', 'Reginald VelJohnson, Jaleel White, Darius McCrary', 2);
--
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('The Simpsons', 'https://pyxis.nymag.com/v1/imgs/5c0/6d6/e661f0df4ee1c0e6d388e86a3c7e23442b-18-simpsons-100-best.rsocial.w1200.jpg', 'The satiric adventures of a working-class family in the misfit city of Springfield', '1989-12-17', 'Dan Castellaneta, Nancy Cartwright, Julie Kavner, Yeardley Smith', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('The Originals', 'https://cinemaprobe.com/wp-content/uploads/2017/04/The-Originals-T.V-series.jpg', 'A family of power-hungry thousand-year-old vampires look to take back the city that they built and dominate all those who have done them wrong.', '2013-10-03', 'Joseph Morgan, Daniel Gillies, Claire Holt', 2);
--
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Californication', 'https://wallpapermemory.com/uploads/646/californication-background-full-hd-1920x1080-100852.jpg', 'A writer tries to juggle his career, his relationship with his daughter and his ex-girlfriend, as well as his appetite for beautiful women.', '2007-06-08', 'David Duchovny, Natascha McElhone, Evan Handler', 2);
--
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('CSI: Miami', 'https://upload.wikimedia.org/wikipedia/en/9/96/CSI_Miami.png', 'The cases of the Miami-Dade, Florida police departments Crime Scene Investigations unit..', '1999-01-01', 'David Caruso', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Dr House', 'https://www.fbcoverlover.com/maker/covers-images/download/Dr-House-3-Facebook-Covers-FBcoverlover-facebook-cover.jpg', 'An antisocial maverick doctor who specializes in diagnostic medicine does whatever it takes to solve puzzling cases.', '2003-01-01', 'Hugh Lauri', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Game of Thrones', 'https://www.fbcoverlover.com/maker/covers-images/download/Game-of-thrones-4-Facebook-Covers-FBcoverlover-facebook-cover.jpg', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', '2001-01-01', 'Kit Harington', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Lucifer', 'https://upload.wikimedia.org/wikipedia/en/thumb/9/97/Lucifer%2C_title.jpg/250px-Lucifer%2C_title.jpg', 'Lucifer Morningstar has decided he has had enough of being the dutiful servant in Hell and decides to spend some time on Earth to better understand humanity.', '2002-01-01', 'Tom Ellis', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Monk', 'https://static0.cbrimages.com/wordpress/wp-content/uploads/2020/05/monk-tv-show.jpg?q=50&fit=crop&w=960&h=500&dpr=1.5', 'The series follows Adrian Monk, a brilliant former San Francisco detective, who now consults the police as a private consultant who battles with an obsessive-compulsive disorder.', '2003-01-01', 'Tony Shalhoub', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('The Witcher', 'https://ineeddiversegames.files.wordpress.com/2019/12/830x330_nf_the_witcher_r3-v2.jpg?w=830', 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts..', '1912-01-01', 'Henry Cavill, Anna Shaffer', 2);
-- 
INSERT INTO movie (title, cover_image, description, release_date, cast_actors, type_id)
VALUES ('Vikings', 'https://c4.wallpaperflare.com/wallpaper/61/1005/253/the-series-warriors-historical-vikings-wallpaper-preview.jpg', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore - and raid - the distant shores across the ocean.', '2005-01-01', 'Alexander Ludwig', 1);
-- 

-- RATINGS
INSERT INTO movie_rating_map (movie_id, rating) VALUES (1, 5);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (2, 4);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (3, 5);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (4, 4);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (5, 5);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (6, 3);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (7, 2);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (5, 2);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (7, 5);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (10, 4);

INSERT INTO movie_rating_map (movie_id, rating) VALUES (15, 3);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (16, 5);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (17, 4);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (18, 2);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (19, 4);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (16, 4);
INSERT INTO movie_rating_map (movie_id, rating) VALUES (18, 3);