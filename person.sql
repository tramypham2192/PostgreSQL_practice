CREATE TABLE person (
	person_id serial primary key,
	name varchar(50) unique not null,
	age int,
	height int,
	city varchar(50),
	favorite_color varchar(50)
);

insert into person(name, age, height, city, favorite_color)
values 
('mary', 40, 158, 'San Jose', 'red');

insert into person (name, age, height, city, favorite_color)
values
('larry', 20, 180, 'Fremont', 'green'),
('daniel', 9, 178, 'Santa Teresa', 'purple'),
('hannah', 45, 160, 'seattle', 'rainbow'),
('lorrie', 29, 170, 'hanoi', 'brown');

select * from person;

-- Select all the people in the person table by height from tallest to shortest.
select * from person
order by height desc;

-- Select all the people in the person table by height from shortest to tallest.
select * from person
order by height;

-- Select all the people in the person table by age from oldest to youngest.
select * from person
order by age desc;

-- Select all the people in the person table older than age 20.
select * from person 
where age > 20;

-- Select all the people in the person table that are exactly 20.
select * from person 
where age = 20;

-- Select all the people in the person table that are less than 20 and older than 30.
select * from person
where age < 20 or age > 30;

-- Select all the people in the person table that are not 27 (use not equals).
select * from person
where age != 27;

-- Select all the people in the person table where their favorite color is not red.
select * from person
where favorite_color != 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
select * from person
where favorite_color != 'red' and favorite_color != 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
select * from person
where favorite_color = 'green' or favorite_color = 'orange';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
select * from person
where favorite_color in ('green', 'blue', 'orange');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
select * from person 
where favorite_color in('yellow', 'purple');

