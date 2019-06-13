DROP TABLE IF EXISTS `user`;
drop table if exists `file`;
create table user
(
    userid   int auto_increment
        primary key,
    email    varchar(45) null,
    username varchar(45) null,
    password varchar(45) null,
    constraint user_username_uindex
        unique (username)
);

create table file
(
    id        int auto_increment
        primary key,
    usernames varchar(45) null,
    realname  varchar(64) not null,
    timename  bigint      not null,
    constraint FK_userid
        foreign key (usernames) references user (username)
);




