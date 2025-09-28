create table author (
    author_id integer primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    bio varchar(200),
    image_url varchar(100)
);

create table cookbook (
    cookbook_id integer primary key,
    num_pages integer not null,
    cover_image_url varchar(100),
    book_name varchar(100) not null,
    is_public integer not null default 0,
    price integer
);

create table author_cookbook (
    author_id integer,
    cookbook_id integer,
    primary key (author_id, cookbook_id),
    foreign key (author_id) references author (author_id),
    foreign key (cookbook_id) references cookbook (cookbook_id)
);

create table cuisine (
    cuisine_id integer primary key,
    cuisine_name varchar(100) not null,
    origin_country varchar(100),
    description varchar(500)
);

create table category (
    category_id integer primary key,
    category_name varchar(100) not null,
    description varchar(500)
);

create table dish (
    dish_id integer primary key,
    dish_name varchar(100) not null,
    cuisine_id integer,
    category_id integer,
    cookbook_id integer, 
    dish_description varchar(500),
    instructions varchar(1000),
    total_time_minutes integer not null,
    servings integer,
    difficulty_level VARCHAR(10) CHECK (difficulty_level IN ('easy','medium','hard')),
    foreign key (cuisine_id) references cuisine (cuisine_id),
    foreign key (category_id) references category (category_id),
    foreign key (cookbook_id) references cookbook (cookbook_id)
);

create table spice (
    spice_id integer primary key,
    spice_name varchar(500) not null,
    price_per_gram real,
    origin_region varchar(500)
);

create table spice_dish (
    spice_id integer,
    dish_id integer,
    primary key (spice_id, dish_id),
    foreign key (spice_id) references spice (spice_id),
    foreign key (dish_id) references dish (dish_id)
);

create table ingredient (
    ingredient_id integer primary key,
    ingredient_name varchar(100) not null,
    calories_per_100g integer,
    price_per_100g integer,
    allergens varchar(100)
);

create table ingredient_dish (
    ingredient_id integer,
    dish_id integer,
    primary key (ingredient_id, dish_id),
    foreign key (ingredient_id) references ingredient (ingredient_id),
    foreign key (dish_id) references dish (dish_id)
);

