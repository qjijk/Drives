DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


create table file
(
    id       int auto_increment
        primary key,
    uid      int         null,
    realname varchar(64) not null,
    timename int         not null,
    constraint FK_userid
        foreign key (uid) references user (userid)
);



