INSERT INTO hh.`users` (`email`, `password`, `register_date`, `last_login`)
VALUES	 ('Den@mail.ru', 'qwerty1234', now()-20000, now()-10000),
				 ('Fedor@mail.ru', '12345678', now()-30000, now()-20000),
				 ('Elena@mail.ru', 'abcdefg123', now()-40000, now()-30000),
				 ('MisterX@mail.ru', 'qqqaaazzz', now()-50000, now()-40000),
                 ('RickandMorty@mail.ru','McMufffy', now()-60000, now()-40000);
                 
INSERT INTO hh.`vacancy` (`company`, `position`, `description`, `salary_bottom`, `salary_top`, `experience`, `skills`,`date_begin`,`date_end`)
VALUES  ('Yandex', 'Developer','Java Developer', 60000,120000,12,'Java, Python, SQL',now()-INTERVAL FLOOR(RAND()*180) DAY,now()+INTERVAL FLOOR(RAND()*180) DAY),
				('Tinkoff', 'Analyst', 'Analyst at Tinkoff Insurance', 50000, 70000, 0, 'SQL, Excel, Math', now()-INTERVAL FLOOR(RAND()*180) DAY,now()+INTERVAL FLOOR(RAND()*180) DAY),
                ('HeadHunter', 'Developer', 'Frontend Developer', 180000,200000, 36, 'HTML. CSS, XML, Javascript', now()-INTERVAL FLOOR(RAND()*180) DAY,now()+INTERVAL FLOOR(RAND()*180) DAY),
                ('X5_Retail', 'Analyst', 'Analyst at X5_Reatail Group', 45000,55000, 3, 'Excel', now()-INTERVAL FLOOR(RAND()*180) DAY,now()+INTERVAL FLOOR(RAND()*180) DAY),
                ('SuperJob','Developer','Frontend Developer', 175000,205000, 24, 'HTML, CSS, Javascript', now()-INTERVAL FLOOR(RAND()*180) DAY,now()+INTERVAL FLOOR(RAND()*180) DAY);

INSERT INTO hh.`CV` (`user_id`, `position`, `full_name`, `age`, `salary_bottom`, `salary_top`, `experience`, `skills`)
VALUES  (1, 'Analyst', 'Suchkov Denis Andreevich', 23, 100000, 200000, 36, 'Python, SQL, Excel, CUDA, Math'),
				(1, 'Developer', 'Suchkov Denis Andreevich', 23, 60000,100000, 6, 'HTML, CSS, Javascript, XML'),
                (2, 'Developer', 'Ivanov Fedor Ivanovich', 28, 45000, 55000, 5, 'Java, Python, SQL'),
                (3, 'Analyst', 'Eliseeva Elena Mikhailovna', 19, 20000, 50000,0, 'Excel'),
                (4, 'Developer', 'Tarelkin Dmitry Nickolaevich', 20, 50000, 60000, 4, 'Excel, Python, Math'),
                (5, 'Director','Rick Sanches', 50, 1000000, 2000000, 60, 'C++, PHP, Java, JavaScript, CUDA, Haskell, VBA');

INSERT INTO hh.`response` (`vacancy_id`, `CV_id`)
VALUES  (1,2),
				(1,3),
                (2,1),
                (4,4),
                (3,3),
                (5,2);
                
INSERT INTO hh.`messages` (`vacancy_id`, `CV_id`, `response`, `invite`)
VALUES  (1,3, 'YES', 'YES'),
                (2,1,'YES','NO'),
                (3,3, 'YES', 'NO');
                
INSERT INTO hh.`messages` (`vacancy_id`, `CV_id`, `response`)                
VALUES  (1,2, 'YES'),
                (4,4,'YES'),
                (5,2,'YES');
                
				