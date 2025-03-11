CREATE SCHEMA personalweb;
USE personalweb;

CREATE TABLE `user`(
ID int NOT NULL AUTO_INCREMENT,
username varchar(30) NOT NULL,
email varchar(100) NOT NULL,
pass_hash BINARY(60) NOT NULL, -- bcrypt

PRIMARY KEY(ID)
);

CREATE TABLE `postrevision`(
postID int NOT NULL,
revisionNum int NOT NULL AUTO_INCREMENT,
authorID int NOT NULL,
title varchar(100),
url varchar(100),
content MEDIUMTEXT,

FOREIGN KEY(postID)
	REFERENCES `post`(ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

PRIMARY KEY(postID, revisionNum)
);

CREATE TABLE `post`(
ID int NOT NULL AUTO_INCREMENT,

PRIMARY KEY(ID)
);

CREATE TABLE `comment`(
ID int NOT NULL AUTO_INCREMENT,
postID int NOT NULL,
replyID int,
userID int NOT NULL,
text varchar(2000),

FOREIGN KEY(postID)
	REFERENCES `post`(ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
FOREIGN KEY(replyID)
	REFERENCES `comment`(ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
FOREIGN KEY(userID)
	REFERENCES `user`(ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE,

PRIMARY KEY(ID)
);