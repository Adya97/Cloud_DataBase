create table Admin(
	admin_id	text primary key,
	admin_pwd	text not null
);

insert into Admin values('rahul','rahul123');

create table s_questions(
	s_id		serial primary key,
	s_question	text
);

insert into s_questions(s_question) values('What is your nick name?'),('What is your favourite color?'),
('What is your mother''s name?'),('What is your first car''s name?');

create table Users(
	user_id		text primary key,
	user_pwd	text not null,
	user_name	text not null,
	user_phone	text not null,
	user_email	text not null,
	active_flag	int,
	s_id		int references s_questions(s_id),
	s_ans		text
);

create table documents(
	doc_id		serial primary key,
	doc_path	text,
	upload_date	date,
	user_id		text references Users(user_id)
);

CREATE TABLE captcha (
	cap_id 		serial primary key,
    	img_path 	text,
    	value text
);


insert into captcha (img_path, value) values('captcha/1.jpg','captcha'),
('captcha/2.jpg','jmi8i'),
('captcha/3.jpg','84NB2'),
('captcha/4.gif','PQJRYD'),
('captcha/5.jpg','EX4X'),
('captcha/6.jpg','ee610c'),
('captcha/7.png','83tsU'),
('captcha/8.png','5b535D'),
('captcha/9.gif','N4EL3'),
('captcha/10.gif','3PLHJ'),
('captcha/11.gif','F62PB'),
('captcha/12.png','MQ5M4'),
('captcha/13.jpg','FHC4b'),
('captcha/14.jpg','89AF2'),
('captcha/15.jpg','7T4MKe'),
('captcha/16.jpg','AV74Y'),
('captcha/17.jpg','Z9E2E'),
('captcha/18.gif','W68HP'),
('captcha/19.jpg','8nALg5d'),
('captcha/20.jpg','88MY3'),
('captcha/21.png','XnkAW'),
('captcha/22.png','imagejoke');

