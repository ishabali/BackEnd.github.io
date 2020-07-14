drop database bookclub;

create database bookclub;

use bookclub;

CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(256) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `books` (
  `book_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isbn` int(15) NOT NULL,
  `book_name` varchar(256) NOT NULL DEFAULT '',
  `book_author` varchar(256) NOT NULL DEFAULT '',
  PRIMARY KEY (`book_id`),
  CONSTRAINT `bookreviews` FOREIGN KEY (`book_id`) REFERENCES `reviews` (`review_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reviews` (
  `review_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `reviews` varchar(500) NOT NULL DEFAULT '',
  `rating` int(10) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `user_reviews` (`user_id`),
  CONSTRAINT `user_reviews` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;