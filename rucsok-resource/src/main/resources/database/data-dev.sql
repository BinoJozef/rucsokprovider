SET FOREIGN_KEY_CHECKS = 0; 
truncate table user;
SET FOREIGN_KEY_CHECKS = 1;
insert into user(id, email,  password, name, failedLogin)
values (1, 'rucsok', '$2a$06$0RA1mDUlDAvOh5V9a0R01.POVFn1/Dvc5ggJ9xhXLiDAjG3o6NiNG', 'rucsok', 0);
insert into user(id, email,  password, name, failedLogin)
values (2, 'mister@rucsok.com', '$2a$06$0RA1mDUlDAvOh5V9a0R01.POVFn1/Dvc5ggJ9xhXLiDAjG3o6NiNG', 'MisterRucsok', 0);
insert into user(id, email,  password, name, failedLogin)
values (3, 'rucs@master.com', '$2a$06$0RA1mDUlDAvOh5V9a0R01.POVFn1/Dvc5ggJ9xhXLiDAjG3o6NiNG', 'rucsokLikeNoTomorrow', 0);

SET FOREIGN_KEY_CHECKS = 0; 
truncate table rucsok;
SET FOREIGN_KEY_CHECKS = 1;
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (1, 'rucsok01', 'http://letscode.hu','http://localhost:8080/images/test/01.jpg', null, 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (2, 'rucsok02', 'http://letscode.hu','http://localhost:8080/images/test/02.jpg', null, 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (3, 'rucsok03', 'http://img-comment-fun.9cache.com/media/f04afec4142528034309088476_700wa_0.gif ','http://img-comment-fun.9cache.com/media/f04afec4142528034309088476_700wa_0.gif ', null, 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (4, 'rucsok04', 'http://letscode.hu','http://localhost:8080/images/test/04.jpg', 'https://www.youtube.com/watch?v=2fccc1AAqco', 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (5, 'rucsok05', 'http://letscode.hu','http://localhost:8080/images/test/05.jpg', 'http://localhost:8080/images/test/rucsokteszt.mp4', 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (6, 'rucsok06', 'http://letscode.hu','http://localhost:8080/images/test/06.jpg', null, 2, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (7, 'rucsok07', 'http://letscode.hu','http://localhost:8080/images/test/07.jpg', null, 2, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (8, 'rucsok08', 'http://letscode.hu','http://localhost:8080/images/test/08.jpg', null, 3, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (9, 'rucsok09', 'http://letscode.hu','http://localhost:8080/images/test/09.jpg', null, 3, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (10, 'rucsok10', 'http://letscode.hu','http://localhost:8080/images/test/10.jpg', null, 3, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (11, 'rucsok11', 'http://letscode.hu','http://localhost:8080/images/test/11.jpg', null, 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (12, 'rucsok12', 'http://letscode.hu','http://localhost:8080/images/test/12.jpg', null, 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));
insert into rucsok(id, title,  link, image_url, video_url, user_id, created_at) 
values (13, 'rucsok13', 'http://imgur.com/gallery/QelEIx3','http://localhost:8080/images/rucsi.png', 'http://localhost:8080/images/test/lYPDaKO.mp4', 1, STR_TO_DATE('2016-08-08 11:11:11', '%Y-%m-%d %H:%i:%s'));

INSERT INTO `pun` (`id`, `text`, `user_id`) VALUES (NULL, 'Did you hear about the guy whose whole left side was cut off? He''s all right now.', '1'), (NULL, ' I wasn''t originally going to get a brain transplant, but then I changed my mind.', '2')
