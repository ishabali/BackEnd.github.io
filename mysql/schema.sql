drop database if exists bookclub;
create database bookclub;
use bookclub;
DROP TABLE IF EXISTS user;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(256) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO user (user_name, email)
VALUES ("Mariya","mariya@gmail.com");
INSERT INTO user (user_name, email)
VALUES ("Carlos","carlos@gmail.com");
INSERT INTO user (user_name, email)
VALUES ("Isha","isha@gmail.com");
INSERT INTO user (user_name, email)
VALUES ("Dmitrii","dmitrii@gmail.com");
DROP TABLE IF EXISTS books;
CREATE TABLE `books` (
  `book_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isbn` varchar(15) NOT NULL,
  `book_name` varchar(256) NOT NULL DEFAULT '',
  `book_author` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO books (isbn, book_name, book_author)
VALUES (0312330871,"And Then There Were None","Agatha Christie");
INSERT INTO books (isbn, book_name, book_author)
VALUES (9780062851727,"Murder on the Orient Express","Agatha Christie");
INSERT INTO books (isbn, book_name, book_author)
VALUES (9781632919274,"A Trace of Death","Blake Pierce");
INSERT INTO books (isbn, book_name, book_author)
VALUES (9781632917935,"Cause To Kill","Blake Pierce");
DROP TABLE IF EXISTS reviews;
CREATE TABLE `reviews` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `reviews` varchar(2000) NOT NULL DEFAULT '',
  `rating` int(10) NOT NULL,
  `book_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `user_reviews` (`user_id`),
  CONSTRAINT `user_reviews` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `book_reviews` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (1,"And Then There Were None, by Agatha Christie, is about ten strangers who are summoned to Soldier Island by a mysterious U.N Owen. When they arrive, in each of their rooms a poem about ten soldier boys who all die in different ways is hung on the wall. That night, a gramophone recording plays and accuses all of them of murder, and later, a man suddenly dies. As the days go by, they begin to die, one by one, according to how the soldier boys die in the poem. Throughout this book, the characters suspect one another as the murderer, which causes tension between them. This book has a lot of suspense. It always made me want to keep reading, to see who would be the next to die. The way the murders followed the nursery rhyme was very spooky and mysterious. The way the murderer kills according to the poem is very creepy, but it makes you want to keep reading. It is a great read and I would recommend it to anyone who likes a good mystery.",5,1);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (2,"First Agatha Christie Mystery. Story started off somewhat slowly. It took a few chapters for me to connect with the story and have the desire to complete the novel. The premise was not to hard to believe, and the wrap-up was complete. I didn't like one character over another so was not invested as to who when next. All in all, a good, quick read.",3,1);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (3,"I loved this book! most mystery books you can kind of guess who the killer is but with this book you never knew! i do think it could have had a better ending.",4,1);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (4,"Really a very awesome book..!!!!!!!!!!!! each and every murder is done so systematically that no one comes to know about it......!! this book is soooo amazing and interesting that it always keeps you on your toes...!!!!!!!!!!!!!! love this book......i give it 5 stars...!!!!!!!!! :D :):):):):)",5,1);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (1,"A great classic mystery, a little formulaic in it's presentation, but it is Agatha Christie who invented the formula, so I guess that's ok then. All the talk of old fashioned train travel made me want to hit the rails. Travel was so much more luxurious back then. Yes, I was surprised by the end, but it still seems a little too perfect. I'm not typically a fan of mysteries, but this is still a must read.",4,2);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (2,"Very enjoyable mystery. It is in places dated in its stereotypes, but for me this just served as a reminder of the era in which it was written. I guessed right some of the time, which is always nice when reading a murder mystery, though I by no means figured out the final reveal. Very glad I read this before watching any of the movie adaptations.",5,2);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (3,"The first thing you need to know about Murder on the Orient Express is that while it is a widely known title and probably one of Christie's most popular, it is actually the eighth mystery novel to feature Belgian Inspector, Hercule Poirot. This time he is traveling back to London via the Orient Express. Despite the train being full, Poirot is able to obtain a first class berth, thanks to a friend who works for the railroad. On the very first night an unsavory passenger is stabbed twelve times and dies of his injuries. Initially, this was to be a three-day journey, but travel is halted due to a large storm dropping massive amounts of snow on the tracks. Since no one can get on or off the train, finding the killer should be easy. In true Poirot style the case is solved with wit and humor. The interrogations are the best.",4,2);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (1,"This riveting tale is perfect for those who love mysteries and violence. I felt for detective Locke and it left me guessing until the very end. Can't wait to read the other books in the series.",4,3);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (2,"This book, I could not figure out who the abductor is, and is it related to the detective's daughter Evie going missing as well???? 60% through the book and I STILL don't know who it is; the ex-boyfriend, the boyfriend, the school security officer, maybe the senator….. Ahhhh driving me nuts trying to figure out who it is. And who is this Collector guy they keep talking about, I'm willing to bet he has SOMETHING to do with Evie going missing, or maybe the little girl outside the station at the beginning is Evie. Gosh I hope this lady finds her daughter!!!! Someone was lying to her. 83%, … I really have NO IDEA who abducted this girl!!!!!! I KNOW who it is and the detectives will NEVER find this girl. Highly doubtful!!!! Guarantee the uncle is a part of this!!!! Willing to bet! MAN THE ENDING!!! This book was seriously great! Hard for me to read as a mother but it was great!",3,3);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (1,"A masterpiece of thriller and mystery. Pierce did a magnificent job developing characters with a psychological side, so well described that we feel inside their minds, follow their fears and cheer for their success. The plot is very intelligent and will keep you entertained throughout the book. Full of twists, this book will keep you awake until the turn of the last page.",4,4);
INSERT INTO reviews (user_id, reviews, rating, book_id)
VALUES (2,"A dynamic story line that grips from the first chapter and doesn't let go.",5,4);