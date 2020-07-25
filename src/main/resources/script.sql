create table user
(
    id       bigint       not null
        primary key,
    email    varchar(255) null,
    login    varchar(255) null,
    name     varchar(255) null,
    password varchar(255) null,
    role     varchar(255) null,
    sur_name varchar(255) null
)
    engine = MyISAM;

create table files
(
    id        bigint       not null
        primary key,
    content   longblob     null,
    file_name varchar(255) null,
    status    varchar(255) null,
    size      bigint       null,
    user_id   bigint       not null
)
    engine = MyISAM;

create index FKdgr5hx49828s5vhjo1s8q3wdp
    on files (user_id);

create table books
(
    id     bigint       not null
        primary key,
    author varchar(255) null,
    name   varchar(255) null,
    genre  varchar(255) null
)
    engine = MyISAM;

create table сontact
(
    id      bigint       not null
        primary key,
    surName varchar(255) null,
    name    varchar(255) null,
    number  long         null
)
    engine = MyISAM;


create table music
(
    id     bigint       not null
        primary key,
    author varchar(255) null,
    name   varchar(255) null,
    genre  long         null
)
    engine = MyISAM;

create table notes
(
    id          bigint       not null
        primary key,
    name        varchar(255) null,
    createdDate datetime     null
)
    engine = MyISAM;

create table travels
(
    id          bigint       not null
        primary key,
    city        varchar(255) null,
    country     varchar(255) null,
    continent   varchar(255) null,
    yearOfVisit long         null
)
    engine = MyISAM;

INSERT into books values (1000, 'Author1', 'Name1', 'Genre1');
INSERT into books values (2000, 'Author2', 'Name2', 'Genre2');
INSERT into books values (3000, 'Author3', 'Name3', 'Genre3');

INSERT into music values (1000, 'Author1', 'Name1', 'Genre1');
INSERT into music values (2000, 'Author2', 'Name2', 'Genre2');
INSERT into music values (3000, 'Author3', 'Name3', 'Genre3');

INSERT into users values (1000, 'sasha@gmail.com', 'admin', 'Name1', '$2y$12$P8j0TDVnokjQVsG7UKlZJ.LqHKwp5p/xl14XhkIKgBxQyWa.w6QjG
', 'ROLE_ADMIN', 'SurName1');

INSERT into сontact values (1000, 'SurName1', 'Name1', 38050611100);
INSERT into сontact values (2000, 'SurName2', 'Name2', 38050622200);
INSERT into сontact values (3000, 'SurName3', 'Name3', 38050633300);

INSERT into notes values (1000, 'Some Note11');
INSERT into notes values (2000, 'Some Note22');

INSERT into travels values (1000, 'Kyiv', 'Ukraine', 'Europe', 2019);
INSERT into travels values (2000, 'Moscow', 'Russia', 'Europe', 2020);
INSERT into travels values (3000, 'Krakov', 'Poland', 'Europe', 2019);

