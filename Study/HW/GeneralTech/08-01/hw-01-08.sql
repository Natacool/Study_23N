--(280323)// hw from 01.08.2023

--Завершить создание БД streaming.

--Наполнить каждую из таблиц БД streaming несколькими записями.

create table users (
user_id int primary key auto_increment,
create_at timestamp,
username varchar(32),
country varchar(32),
is_blocked bool
);
insert into users (created_at, username, country, is_blocked) value ('2019-03-04 17:47:03', 'Brown', 'USA', false);
insert into users (created_at, username, country, is_blocked) value ('2019-05-24 09:12:18', 'John Smith', 'UK', false);
insert into users (created_at, username, country, is_blocked) value ('2020-11-29 03:47:15', 'Jacob Snow', 'Greece', true);
insert into users (created_at, username, country, is_blocked) value ('2020-12-12 22:34:02', 'Chriis Rock', 'Germany', false);
insert into users (created_at, username, country, is_blocked) value ('2020-12-15 20:11:41', 'David Lee', 'Malaysia', false);
insert into users (created_at, username, country, is_blocked) value ('2021-01-10 08:45:13', 'Harry Potter', 'China', false);
insert into users (created_at, username, country, is_blocked) value ('2021-08-02 13:16:21', 'James Bond', 'UK', true);
insert into users (created_at, username, country, is_blocked) value ('2021-09-23 21:09:11', 'Bryan Adams', 'Canada', false);
insert into users (created_at, username, country, is_blocked) value ('2022-04-12 14:30:01', 'Garry Fisher', 'Germany', false);
insert into users (created_at, username, country, is_blocked) value ('2022-06-07 10:33:25', 'Henry Oldman', 'USA', false);

CREATE TABLE streams (
	stream_id int primary key auto_increment,
    created_at timestamp,
    title varchar(128),
    author_id int,
    is_completed bool
);
 insert into streams (created_at, author_id, title, is_completed) values ('2019-03-05 17:47:03', '1', 'Inception', true);
 insert into streams (created_at, author_id, title, is_completed) values ('2020-12-13 22:34:02', '4', 'The Dark Knight', true);
 insert into streams (created_at, author_id, title, is_completed) values ('2021-01-11 08:45:13', '6', 'Pulp Fiction', true);
 insert into streams (created_at, author_id, title, is_completed) values ('2021-08-03 13:16:21', '7', 'Forrest Gump',true);
 insert into streams (created_at, author_id , title, is_completed) values ('2022-04-13 14:30:01', '9', 'Fight Club', true);

CREATE TABLE reactions (
	reaction_id int primary key auto_increment,
    created_at timestamp,
    author_id int,
    stream_id int,
    value int
);
insert into reactions (created_at,author_id,stream_id, value) values ('2022-05-13 14:30:01', '1', '5', '3');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-06-13 15:30:01', '5', '5', '2');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-07-13 16:30:01', '8', '3', '5');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-08-13 17:30:01', '8', '3', '5');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-09-13 18:30:01', '9', '3', '1');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-09-14 19:30:01', '2', '1', '1');
insert into reactions (created_at,author_id,stream_id, value) values ('2022-10-14 20:30:01', '10', '1', '4');

CREATE TABLE donations (
	donation_id int primary key auto_increment,
    created_at timestamp,
    stream_id int,
    donator_id int,
    amount float
);
insert into donations (created_at,stream_id,donator_id, amount) values ('2022-07-13 16:35:01', '20', '1', '3');
insert into donations (created_at,stream_id,donator_id, amount) values ('2022-03-17 08:45:13', '9.99', '5', '3');
insert into donations (created_at,stream_id,donator_id, amount) values ('2020-12-29 20:11:41', '11', '7', '1');
insert into donations (created_at,stream_id,donator_id, amount) values ('2021-12-15 20:11:41', '6.99', '2', '1');
insert into donations (created_at,stream_id,donator_id, amount) values ('2022-10-13 14:30:01', '15.01', '1', '5');
insert into donations (created_at,stream_id,donator_id, amount) values ('2023-04-13 14:30:01', '5', '8', '5');

alter table streams
add foreign key (author_id) references users(user_id);

alter table reactions
add foreign key (author_id) references users(user_id);

alter table reactions
add foreign key (stream_id) references streams(stream_id);

alter table donations
add foreign key (donator_id) references users(user_id);

--Вывести данные о стримах (проекция: названиестрима, имяавтора_стрима)

SELECT streams.title, users.username
FROM streams
join users on streams.author_id=users.user_id;

--Вывести юзеров, у которых отсутствуют стримы

SELECT 
users.username,
streams.title
FROM streaming.users
left join streams on streams.author_id = users.user_id
where streams.title is Null;